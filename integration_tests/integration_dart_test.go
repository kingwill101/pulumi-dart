// Copyright 2016-2022, Pulumi Corporation.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

package integration_tests

import (
	"fmt"
	"os"
	"os/exec"
	"path/filepath"
	"runtime"
	"strings"
	"sync"
	"testing"

	"github.com/pulumi/pulumi/pkg/v3/engine"
	"github.com/pulumi/pulumi/pkg/v3/testing/integration"
	"github.com/pulumi/pulumi/sdk/v3/go/common/apitype"
	"github.com/pulumi/pulumi/sdk/v3/go/common/resource"
	ptesting "github.com/pulumi/pulumi/sdk/v3/go/common/testing"
	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"
)

// TestPrintfDart tests that we capture stdout and stderr streams properly, even when the last line lacks an \n.
func TestPrintfDart(t *testing.T) {
	testDartProgram(t, &integration.ProgramTestOptions{
		Dir:                    "printf",
		Quick:                  true,
		ExtraRuntimeValidation: printfTestValidation,
	})
}

// TestLogDebugDart tests that the amount of debug logs is reasonable.
func TestLogDebugDart(t *testing.T) {
	testDartProgram(t, &integration.ProgramTestOptions{
		Dir:   "log_debug",
		Quick: true,
		ExtraRuntimeValidation: func(t *testing.T, stack integration.RuntimeValidationStackInfo) {
			var count int
			for _, ev := range stack.Events {
				if de := ev.DiagnosticEvent; de != nil && de.Severity == "debug" {
					count++
				}
			}
			t.Logf("Found %v debug log events", count)

			// Ensure at least 1 debug log event is emitted.
			assert.Greaterf(t, count, 0, "%v is not enough debug log events", count)

			// More than 25 debug log events on such a simple program is likely unintended.
			assert.LessOrEqualf(t, count, 25, "%v is too many debug log events", count)
		},
	})
}

// Test targeting modern compiler options works for Dart programs.
func TestCompilerOptionsDart(t *testing.T) {
	testDartProgram(t, &integration.ProgramTestOptions{
		Dir:   "compiler_options",
		Quick: true,
	})
}

func TestStackOutputsDart(t *testing.T) {
	testDartProgram(t, &integration.ProgramTestOptions{
		Dir:   "stack_outputs",
		Quick: true,
		ExtraRuntimeValidation: func(t *testing.T, stackInfo integration.RuntimeValidationStackInfo) {
			// Ensure the checkpoint contains a single resource, the Stack, with two outputs.
			fmt.Printf("Deployment: %v", stackInfo.Deployment)
			assert.NotNil(t, stackInfo.Deployment)
			if assert.Equal(t, 1, len(stackInfo.Deployment.Resources)) {
				stackRes := stackInfo.Deployment.Resources[0]
				assert.NotNil(t, stackRes)
				assert.Equal(t, resource.RootStackType, stackRes.URN.Type())
				assert.Equal(t, 0, len(stackRes.Inputs))
				assert.Equal(t, 2, len(stackRes.Outputs))
				assert.Equal(t, "ABC", stackRes.Outputs["xyz"])
				assert.Equal(t, float64(42), stackRes.Outputs["foo"])
			}
		},
	})
}

// Regression test for https://github.com/pulumi/pulumi/issues/7376.
func TestUndefinedStackOutputDart(t *testing.T) {
	testDartProgram(t, &integration.ProgramTestOptions{
		Dir:   "undefined_stack_output",
		Quick: true,
		ExtraRuntimeValidation: func(t *testing.T, stack integration.RuntimeValidationStackInfo) {
			assert.Equal(t, nil, stack.Outputs["undef"])
			assert.Equal(t, nil, stack.Outputs["nil"])
			assert.Equal(t, []any{0.0, nil, nil}, stack.Outputs["list"])
			assert.Equal(t, map[string]any{
				"number2": 0.0,
				"nil2":    nil,
			}, stack.Outputs["map"])

			var found bool
			for _, event := range stack.Events {
				if event.DiagnosticEvent != nil &&
					event.DiagnosticEvent.Severity == "warning" &&
					strings.Contains(event.DiagnosticEvent.Message, "will not show as a stack output") {
					found = true
					break
				}
			}
			assert.True(t, found, "expected undefined stack output warning")
		},
	})
}

// Regression test for https://github.com/pulumi/pulumi/issues/9411.
func TestDuplicateOutputDart(t *testing.T) {
	testDartProgram(t, &integration.ProgramTestOptions{
		Dir:   "duplicate_output",
		Quick: true,
		ExtraRuntimeValidation: func(t *testing.T, stack integration.RuntimeValidationStackInfo) {
			expected := []any{float64(1), float64(2)}
			assert.Equal(t, expected, stack.Outputs["export1"])
			assert.Equal(t, expected, stack.Outputs["export2"])
		},
	})
}

// TestStackComponentDart tests the programming model of defining a stack as an explicit top-level component.
func TestStackComponentDart(t *testing.T) {
	testDartProgram(t, &integration.ProgramTestOptions{
		Dir:   "stack_component",
		Quick: true,
		ExtraRuntimeValidation: func(t *testing.T, stackInfo integration.RuntimeValidationStackInfo) {
			// Ensure the checkpoint contains a single resource, the Stack, with two outputs.
			fmt.Printf("Deployment: %v", stackInfo.Deployment)
			assert.NotNil(t, stackInfo.Deployment)
			if assert.Equal(t, 1, len(stackInfo.Deployment.Resources)) {
				stackRes := stackInfo.Deployment.Resources[0]
				assert.NotNil(t, stackRes)
				assert.Equal(t, resource.RootStackType, stackRes.URN.Type())
				assert.Equal(t, 0, len(stackRes.Inputs))
				assert.Equal(t, 2, len(stackRes.Outputs))
				assert.Equal(t, "ABC", stackRes.Outputs["abc"])
				assert.Equal(t, float64(42), stackRes.Outputs["Foo"])
			}
		},
	})
}

// TestStackComponentServiceProviderDart tests the creation of the stack using IServiceProvider.
func TestStackComponentServiceProviderDart(t *testing.T) {
	// Legacy fixture directory name retained for parity with upstream layout.
	const serviceProviderFixtureDir = "service_provider"
	testDartProgram(t, &integration.ProgramTestOptions{
		Dir:   serviceProviderFixtureDir,
		Quick: true,
		ExtraRuntimeValidation: func(t *testing.T, stackInfo integration.RuntimeValidationStackInfo) {
			// Ensure the checkpoint contains a single resource, the Stack, with two outputs.
			fmt.Printf("Deployment: %v", stackInfo.Deployment)
			assert.NotNil(t, stackInfo.Deployment)
			if assert.Equal(t, 1, len(stackInfo.Deployment.Resources)) {
				stackRes := stackInfo.Deployment.Resources[0]
				assert.NotNil(t, stackRes)
				assert.Equal(t, resource.RootStackType, stackRes.URN.Type())
				assert.Equal(t, 0, len(stackRes.Inputs))
				assert.Equal(t, 2, len(stackRes.Outputs))
				assert.Equal(t, "ABC", stackRes.Outputs["abc"])
				assert.Equal(t, float64(42), stackRes.Outputs["Foo"])
			}
		},
	})
}

// Tests basic configuration from the perspective of a Pulumi Dart program.
func TestConfigBasicDart(t *testing.T) {
	testDartProgram(t, &integration.ProgramTestOptions{
		Dir:   "config_basic",
		Quick: true,
		Config: map[string]string{
			"aConfigValue": "this value is a value",
		},
		Secrets: map[string]string{
			"bEncryptedSecret": "this super secret is encrypted",
		},
		OrderedConfig: []integration.ConfigValue{
			{Key: "outer.inner", Value: "value", Path: true},
			{Key: "names[0]", Value: "a", Path: true},
			{Key: "names[1]", Value: "b", Path: true},
			{Key: "names[2]", Value: "c", Path: true},
			{Key: "names[3]", Value: "super secret name", Path: true, Secret: true},
			{Key: "servers[0].port", Value: "80", Path: true},
			{Key: "servers[0].host", Value: "example", Path: true},
			{Key: "a.b[0].c", Value: "true", Path: true},
			{Key: "a.b[1].c", Value: "false", Path: true},
			{Key: "tokens[0]", Value: "shh", Path: true, Secret: true},
			{Key: "foo.bar", Value: "don't tell", Path: true, Secret: true},
		},
	})
}

// Tests basic environments from the perspective of a Pulumi Dart program.
func TestEnvironmentsBasicDart(t *testing.T) {
	testDartProgram(t, &integration.ProgramTestOptions{
		Dir:            "config_basic",
		Quick:          true,
		RequireService: true,
		CreateEnvironments: []integration.Environment{{
			Name: "basic",
			Definition: map[string]any{
				"values": map[string]any{
					"pulumiConfig": map[string]any{
						"aConfigValue": "this value is a value",
						"bEncryptedSecret": map[string]any{
							"fn::secret": "this super secret is encrypted",
						},
						"outer": map[string]any{
							"inner": "value",
						},
						"names": []any{"a", "b", "c", map[string]any{"fn::secret": "super secret name"}},
						"servers": []any{
							map[string]any{
								"port": 80,
								"host": "example",
							},
						},
						"a": map[string]any{
							"b": []any{
								map[string]any{"c": true},
								map[string]any{"c": false},
							},
						},
						"tokens": []any{
							map[string]any{
								"fn::secret": "shh",
							},
						},
						"foo": map[string]any{
							"bar": map[string]any{
								"fn::secret": "don't tell",
							},
						},
					},
				},
			},
		}},
		Environments: []string{"basic"},
	})
}

// Tests merged environments from the perspective of a Pulumi Dart program.
func TestEnvironmentsMergeDart(t *testing.T) {
	testDartProgram(t, &integration.ProgramTestOptions{
		Dir:            "config_basic",
		Quick:          true,
		RequireService: true,
		CreateEnvironments: []integration.Environment{
			{
				Name: "merge-0",
				Definition: map[string]any{
					"values": map[string]any{
						"pulumiConfig": map[string]any{
							"outer": map[string]any{
								"inner": "not-a-value",
							},
							"names": []any{"a", "b", "c", map[string]any{"fn::secret": "super secret name"}},
							"servers": []any{
								map[string]any{
									"port": 80,
									"host": "example",
								},
							},
						},
					},
				},
			},
			{
				Name: "merge-1",
				Definition: map[string]any{
					"values": map[string]any{
						"pulumiConfig": map[string]any{
							"a": map[string]any{
								"b": []any{
									map[string]any{"c": true},
									map[string]any{"c": false},
								},
							},
							"tokens": []any{
								map[string]any{
									"fn::secret": "shh",
								},
							},
							"foo": map[string]any{
								"bar": "not so secret",
							},
						},
					},
				},
			},
		},
		Environments: []string{"merge-0", "merge-1"},
		Config: map[string]string{
			"aConfigValue": "this value is a value",
		},
		Secrets: map[string]string{
			"bEncryptedSecret": "this super secret is encrypted",
		},
		OrderedConfig: []integration.ConfigValue{
			{Key: "outer.inner", Value: "value", Path: true},
			{Key: "foo.bar", Value: "don't tell", Path: true, Secret: true},
		},
	})
}

func TestConfigCaptureDart(t *testing.T) {
	testDartProgram(t, &integration.ProgramTestOptions{
		Dir:   "config_capture_e2e",
		Quick: true,
		Config: map[string]string{
			"value": "it works",
		},
		ExtraRuntimeValidation: func(t *testing.T, stackInfo integration.RuntimeValidationStackInfo) {
			assert.Equal(t, "outside capture works", stackInfo.Outputs["outside"])
			assert.Equal(t, "inside capture works", stackInfo.Outputs["inside"])
		},
	})
}

func TestESMTSSpecifierResolutionDart(t *testing.T) {
	testDartProgram(t, &integration.ProgramTestOptions{
		Dir:   "esm_ts_specifier_resolution",
		Quick: true,
		ExtraRuntimeValidation: func(t *testing.T, stack integration.RuntimeValidationStackInfo) {
			require.Equal(t, 42.0, stack.Outputs["otherx"])
			res, ok := stack.Outputs["res"].(string)
			require.True(t, ok)
			assert.Contains(t, res, "name: esm_ts_specifier_resolution_dart")
		},
	})
}

// Tests missing required config failure behavior from the perspective of a Pulumi Dart program.
func TestConfigMissingDart(t *testing.T) {
	e := ptesting.NewEnvironment(t)
	defer e.DeleteIfNotFailed()

	languagePluginPath, err := filepath.Abs("../pulumi-language-dart")
	require.NoError(t, err)
	t.Setenv("PATH", languagePluginPath+string(os.PathListSeparator)+os.Getenv("PATH"))

	e.ImportDirectory("config_missing")
	e.RunCommand("pulumi", "login", "--cloud-url", e.LocalURL())
	e.RunCommand("pulumi", "stack", "init", "dev")

	require.NoError(t, rewritePulumiDependency(e.CWD))
	_, _, err = e.GetCommandResultsIn(e.CWD, "dart", "pub", "get")
	require.NoError(t, err)

	stdout, stderr, err := e.GetCommandResults("pulumi", "up", "--skip-preview", "--yes")
	require.Error(t, err)
	assert.Contains(t, stdout+stderr, "Missing required configuration variable")
}

// Tests that accessing config secrets using non-secret APIs results in warnings being logged.
func TestConfigSecretsWarnDart(t *testing.T) {
	testDartProgram(t, &integration.ProgramTestOptions{
		Dir:   "config_secrets_warn",
		Quick: true,
		Config: map[string]string{
			"plainstr1":    "1",
			"plainstr2":    "2",
			"plainstr3":    "3",
			"plainstr4":    "4",
			"plainbool1":   "true",
			"plainbool2":   "true",
			"plainbool3":   "true",
			"plainbool4":   "true",
			"plainint1":    "1",
			"plainint2":    "2",
			"plainint3":    "3",
			"plainint4":    "4",
			"plaindouble1": "1.5",
			"plaindouble2": "2.5",
			"plaindouble3": "3.5",
			"plaindouble4": "4.5",
			"plainobj1":    "{}",
			"plainobj2":    "{}",
			"plainobj3":    "{}",
			"plainobj4":    "{}",
		},
		Secrets: map[string]string{
			"str1":    "1",
			"str2":    "2",
			"str3":    "3",
			"str4":    "4",
			"bool1":   "true",
			"bool2":   "true",
			"bool3":   "true",
			"bool4":   "true",
			"int1":    "1",
			"int2":    "2",
			"int3":    "3",
			"int4":    "4",
			"double1": "1.5",
			"double2": "2.5",
			"double3": "3.5",
			"double4": "4.5",
			"obj1":    "{}",
			"obj2":    "{}",
			"obj3":    "{}",
			"obj4":    "{}",
		},
		OrderedConfig: []integration.ConfigValue{
			{Key: "parent1.foo", Value: "plain1", Path: true},
			{Key: "parent1.bar", Value: "secret1", Path: true, Secret: true},
			{Key: "parent2.foo", Value: "plain2", Path: true},
			{Key: "parent2.bar", Value: "secret2", Path: true, Secret: true},
			{Key: "names1[0]", Value: "plain1", Path: true},
			{Key: "names1[1]", Value: "secret1", Path: true, Secret: true},
			{Key: "names2[0]", Value: "plain2", Path: true},
			{Key: "names2[1]", Value: "secret2", Path: true, Secret: true},
		},
		ExtraRuntimeValidation: func(t *testing.T, stackInfo integration.RuntimeValidationStackInfo) {
			assert.NotEmpty(t, stackInfo.Events)
			//nolint:lll
			expectedWarnings := []string{
				"Configuration 'config_secrets_dotnet:str1' value is a secret; use `GetSecret` instead of `Get`",
				"Configuration 'config_secrets_dotnet:str2' value is a secret; use `RequireSecret` instead of `Require`",
				"Configuration 'config_secrets_dotnet:bool1' value is a secret; use `GetSecretBoolean` instead of `GetBoolean`",
				"Configuration 'config_secrets_dotnet:bool2' value is a secret; use `RequireSecretBoolean` instead of `RequireBoolean`",
				"Configuration 'config_secrets_dotnet:int1' value is a secret; use `GetSecretInt32` instead of `GetInt32`",
				"Configuration 'config_secrets_dotnet:int2' value is a secret; use `RequireSecretInt32` instead of `RequireInt32`",
				"Configuration 'config_secrets_dotnet:double1' value is a secret; use `GetSecretDouble` instead of `GetDouble`",
				"Configuration 'config_secrets_dotnet:double2' value is a secret; use `RequireSecretDouble` instead of `RequireDouble`",
				"Configuration 'config_secrets_dotnet:obj1' value is a secret; use `GetSecretObject` instead of `GetObject`",
				"Configuration 'config_secrets_dotnet:obj2' value is a secret; use `RequireSecretObject` instead of `RequireObject`",
				"Configuration 'config_secrets_dotnet:parent1' value is a secret; use `GetSecretObject` instead of `GetObject`",
				"Configuration 'config_secrets_dotnet:parent2' value is a secret; use `RequireSecretObject` instead of `RequireObject`",
				"Configuration 'config_secrets_dotnet:names1' value is a secret; use `GetSecretObject` instead of `GetObject`",
				"Configuration 'config_secrets_dotnet:names2' value is a secret; use `RequireSecretObject` instead of `RequireObject`",
			}
			for _, warning := range expectedWarnings {
				var found bool
				for _, event := range stackInfo.Events {
					if event.DiagnosticEvent != nil && event.DiagnosticEvent.Severity == "warning" &&
						strings.Contains(event.DiagnosticEvent.Message, warning) {
						found = true
						break
					}
				}
				assert.True(t, found, "expected warning %q", warning)
			}

			// These keys should not be in any warning messages.
			unexpectedWarnings := []string{
				"plainstr1",
				"plainstr2",
				"plainstr3",
				"plainstr4",
				"plainbool1",
				"plainbool2",
				"plainbool3",
				"plainbool4",
				"plainint1",
				"plainint2",
				"plainint3",
				"plainint4",
				"plaindouble1",
				"plaindouble2",
				"plaindouble3",
				"plaindouble4",
				"plainobj1",
				"plainobj2",
				"plainobj3",
				"plainobj4",
				"str3",
				"str4",
				"bool3",
				"bool4",
				"int3",
				"int4",
				"double3",
				"double4",
				"obj3",
				"obj4",
			}
			for _, warning := range unexpectedWarnings {
				for _, event := range stackInfo.Events {
					if event.DiagnosticEvent != nil {
						assert.NotContains(t, event.DiagnosticEvent.Message, warning)
					}
				}
			}
		},
	})
}

func TestStackReferenceSecretsDart(t *testing.T) {
	d := "stack_reference_secrets"

	testDartProgram(t, &integration.ProgramTestOptions{
		Dir:   filepath.Join(d, "step1"),
		Quick: true,
		EditDirs: []integration.EditDir{
			{
				Dir:      filepath.Join(d, "step2"),
				Additive: true,
				ExtraRuntimeValidation: func(t *testing.T, stackInfo integration.RuntimeValidationStackInfo) {
					_, isString := stackInfo.Outputs["refNormal"].(string)
					assert.Truef(t, isString, "referenced non-secret output was not a string")

					secretPropValue, ok := stackInfo.Outputs["refSecret"].(map[string]interface{})
					assert.Truef(t, ok, "secret output was not serialized as a secret")
					assert.Equal(t, resource.SecretSig, secretPropValue[resource.SigKey].(string))
				},
			},
		},
	})
}

// Tests a resource with a large (>4mb) string prop in .Net
func TestLargeResourceDart(t *testing.T) {
	testDartProgram(t, &integration.ProgramTestOptions{
		Dir: "large_resource",
	})
}

// Tests enum outputs.
func TestEnumOutputsDart(t *testing.T) {
	testDartProgram(t, &integration.ProgramTestOptions{
		Dir:   filepath.Join("enums", "dart"),
		Quick: true,
		ExtraRuntimeValidation: func(t *testing.T, stack integration.RuntimeValidationStackInfo) {
			require.NotNil(t, stack.Outputs)
			assert.Equal(t, "Burgundy", stack.Outputs["myTreeType"])
			assert.Equal(t, "Pulumi Planters Inc.foo", stack.Outputs["myTreeFarmChanged"])
			assert.Equal(t, "My Burgundy Rubber tree is from Pulumi Planters Inc.", stack.Outputs["mySentence"])
		},
	})
}

func TestEnumOutputDart(t *testing.T) {
	TestEnumOutputsDart(t)
}

// tests that when a resource transformation throws an exception, the program exits
// and doesn't hang indefinitely.
func TestFailingTransfomationExitsProgram(t *testing.T) {
	stderr := &strings.Builder{}
	testDartProgram(t, &integration.ProgramTestOptions{
		Dir:           "failing_transformation_exits",
		ExpectFailure: true,
		Stderr:        stderr,
	})

	assert.Contains(t, stderr.String(), "Boom!")
}

func TestDynamicProviderDart(t *testing.T) {
	testDartProgram(t, &integration.ProgramTestOptions{
		Dir: filepath.Join("dynamic", "dart"),
		LocalProviders: []integration.LocalDependency{
			{
				Package: "pulumi-dart",
				Path:    filepath.Join("dynamic", "pulumi-dart-provider-go"),
			},
		},
		Quick: true,
		ExtraRuntimeValidation: func(t *testing.T, stackInfo integration.RuntimeValidationStackInfo) {
			randomID, ok := stackInfo.Outputs["random_id"].(string)
			assert.True(t, ok, "random_id output should be a string")
			assert.NotEmpty(t, randomID)

			randomVal, ok := stackInfo.Outputs["random_val"].(string)
			assert.True(t, ok, "random_val output should be a string")
			assert.NotEmpty(t, randomVal)

			var dynRes *apitype.ResourceV3
			for i := range stackInfo.Deployment.Resources {
				res := &stackInfo.Deployment.Resources[i]
				if strings.HasPrefix(res.URN.Type().String(), "pulumi-dart:dynamic") {
					dynRes = res
					break
				}
			}
			require.NotNil(t, dynRes, "expected a dynamic resource in deployment")
			assert.IsType(t, "", dynRes.Inputs["__provider"], "expect __provider input to be plain string")
			assert.IsType(t, "", dynRes.Outputs["__provider"], "expect __provider output to be plain string")
		},
	})
}

// Tests that dynamic providers can return inputs from read() for accurate diffs after refresh.
// Regression test for https://github.com/pulumi/pulumi/issues/13839.
func TestDynamicProviderReadInputsDart(t *testing.T) {
	testDartProgram(t, &integration.ProgramTestOptions{
		Dir: filepath.Join("dynamic", "read_inputs_dart"),
		LocalProviders: []integration.LocalDependency{
			{
				Package: "pulumi-dart",
				Path:    filepath.Join("dynamic", "pulumi-dart-provider-go"),
			},
		},
		Quick: true,
		ExtraRuntimeValidation: func(t *testing.T, stackInfo integration.RuntimeValidationStackInfo) {
			require.NotNil(t, stackInfo.Outputs["resource_id"])

			var dynRes *apitype.ResourceV3
			for i := range stackInfo.Deployment.Resources {
				res := &stackInfo.Deployment.Resources[i]
				if strings.HasPrefix(res.URN.Type().String(), "pulumi-dart:dynamic") {
					dynRes = res
					break
				}
			}

			require.NotNil(t, dynRes, "expected a dynamic resource in deployment")
			require.NotNil(t, dynRes.Inputs, "expected dynamic resource inputs to be persisted")
			assert.Contains(t, dynRes.Inputs, "__provider")
			assert.Contains(t, dynRes.Inputs, "value")
		},
	})
}

func TestDynamicProviderConfigDart(t *testing.T) {
	testDartProgram(t, &integration.ProgramTestOptions{
		Dir: filepath.Join("dynamic", "config_dart"),
		LocalProviders: []integration.LocalDependency{
			{
				Package: "pulumi-dart",
				Path:    filepath.Join("dynamic", "pulumi-dart-provider-go"),
			},
		},
		Secrets: map[string]string{
			"password":      "s3cret",
			"colors:banana": "yellow",
		},
		Quick: true,
		ExtraRuntimeValidation: func(t *testing.T, stackInfo integration.RuntimeValidationStackInfo) {
			code, ok := stackInfo.Outputs["authenticated"].(string)
			assert.True(t, ok)
			assert.Equal(t, "200", code)

			color, ok := stackInfo.Outputs["color"].(string)
			assert.True(t, ok)
			assert.Equal(t, "yellow", color)
		},
	})
}

func TestDynamicReservedIdentifierShadowingDart(t *testing.T) {
	testDartProgram(t, &integration.ProgramTestOptions{
		Dir: filepath.Join("dynamic", "reserved_identifier_shadowing_dart"),
		LocalProviders: []integration.LocalDependency{
			{
				Package: "pulumi-dart",
				Path:    filepath.Join("dynamic", "pulumi-dart-provider-go"),
			},
		},
		ExpectFailure: false,
		Quick:         true,
		ExtraRuntimeValidation: func(t *testing.T, stack integration.RuntimeValidationStackInfo) {
			noError := true
			for _, event := range stack.Events {
				if event.ResOpFailedEvent != nil {
					noError = false
					assert.Equal(t, apitype.OpType("create"), event.ResOpFailedEvent.Metadata.Op)
				}
			}

			assert.True(t, noError, "an error occurred when testing reserved-identifier shadowing")
		},
	})
}

func TestDynamicProviderSecretsDart(t *testing.T) {
	testDartProgram(t, &integration.ProgramTestOptions{
		Dir: filepath.Join("dynamic", "dart-secrets"),
		LocalProviders: []integration.LocalDependency{
			{
				Package: "pulumi-dart",
				Path:    filepath.Join("dynamic", "pulumi-dart-provider-go"),
			},
		},
		Secrets: map[string]string{
			"password": "s3cret",
		},
		Quick: true,
		ExtraRuntimeValidation: func(t *testing.T, stackInfo integration.RuntimeValidationStackInfo) {
			var dynRes *apitype.ResourceV3
			for i := range stackInfo.Deployment.Resources {
				res := &stackInfo.Deployment.Resources[i]
				if strings.HasPrefix(res.URN.Type().String(), "pulumi-dart:dynamic") {
					dynRes = res
					break
				}
			}

			require.NotNil(t, dynRes, "expected a dynamic resource in deployment")
			for _, providerVal := range []any{dynRes.Inputs["__provider"], dynRes.Outputs["__provider"]} {
				switch v := providerVal.(type) {
				case string:
					assert.Fail(t, "__provider was not a secret")
				case map[string]any:
					assert.Equal(t, resource.SecretSig, v[resource.SigKey])
				default:
					assert.Failf(t, "__provider had unexpected type", "%T", providerVal)
				}
			}

			code, ok := stackInfo.Outputs["out"].(string)
			assert.True(t, ok)
			assert.Equal(t, "200", code)
		},
	})
}

// Tests errors in dynamic resource create behavior.
func TestErrorCreateDynamicDart(t *testing.T) {
	testDartProgram(t, &integration.ProgramTestOptions{
		Dir:           filepath.Join("dynamic", "error_create_dart"),
		Quick:         true,
		ExpectFailure: true,
		ExtraRuntimeValidation: func(t *testing.T, stack integration.RuntimeValidationStackInfo) {
			foundError := false
			for _, event := range stack.Events {
				if event.ResOpFailedEvent != nil {
					foundError = true
					assert.Equal(t, apitype.OpType("create"), event.ResOpFailedEvent.Metadata.Op)
				}
				if event.DiagnosticEvent != nil &&
					strings.Contains(
						event.DiagnosticEvent.Message,
						"could not find latest version for provider custom-provider",
					) {
					foundError = true
				}
			}
			assert.True(t, foundError, "Did not see create error")
		},
	})
}

func TestResourceWithSecretSerializationDart(t *testing.T) {
	testDartProgram(t, &integration.ProgramTestOptions{
		Dir: filepath.Join("secret_outputs", "dart"),
		LocalProviders: []integration.LocalDependency{
			{
				Package: "testprovider",
				Path:    filepath.Join("custom_resource_hooks", "testprovider-go"),
			},
		},
		Quick: true,
		ExtraRuntimeValidation: func(t *testing.T, stackInfo integration.RuntimeValidationStackInfo) {
			withSecretValue, ok := stackInfo.Outputs["withSecret"].(map[string]any)
			assert.True(t, ok, "withSecret output should be serialized as a secret")
			assert.Equal(t, resource.SecretSig, withSecretValue[resource.SigKey])

			withSecretAdditionalValue, ok := stackInfo.Outputs["withSecretAdditional"].(map[string]any)
			assert.True(t, ok, "withSecretAdditional output should be serialized as a secret")
			assert.Equal(t, resource.SecretSig, withSecretAdditionalValue[resource.SigKey])

			withoutSecretValue, ok := stackInfo.Outputs["withoutSecret"].(string)
			assert.True(t, ok, "withoutSecret output should not be secret")
			assert.Equal(t, "it's a secret to everybody", withoutSecretValue)
		},
	})
}

func TestPartialValuesDart(t *testing.T) {
	testDartProgram(t, &integration.ProgramTestOptions{
		Dir: filepath.Join("partial_values", "dart"),
		LocalProviders: []integration.LocalDependency{
			{
				Package: "testprovider",
				Path:    filepath.Join("custom_resource_hooks", "testprovider-go"),
			},
		},
		AllowEmptyPreviewChanges: true,
		Quick:                    true,
		ExtraRuntimeValidation: func(t *testing.T, stackInfo integration.RuntimeValidationStackInfo) {
			assert.Equal(t, "checked", stackInfo.Outputs["o"])
		},
	})
}

func TestCustomResourceTypeNameDynamicDart(t *testing.T) {
	testDartProgram(t, &integration.ProgramTestOptions{
		Dir: filepath.Join("dynamic", "resource_type_name_dart"),
		LocalProviders: []integration.LocalDependency{
			{
				Package: "testprovider",
				Path:    filepath.Join("custom_resource_hooks", "testprovider-go"),
			},
		},
		Quick: true,
		ExtraRuntimeValidation: func(t *testing.T, stack integration.RuntimeValidationStackInfo) {
			urnOut, ok := stack.Outputs["urn"].(string)
			require.True(t, ok, "expected stack output urn to be a string")

			urn := resource.URN(urnOut)
			assert.Equal(
				t,
				"testprovider:dynamic/custom-provider:CustomResource",
				urn.Type().String(),
			)
		},
	})
}

// Test remote component construction with a child resource that takes a long time to be created.
func TestConstructSlowDart(t *testing.T) {
	localProvider := testComponentSlowLocalProvider(t)
	testDir := "construct_component_slow"

	testDartProgram(t, &integration.ProgramTestOptions{
		Dir:            filepath.Join(testDir, "dart"),
		LocalProviders: []integration.LocalDependency{localProvider},
		Quick:          true,
		NoParallel:     true,
		ExtraRuntimeValidation: func(t *testing.T, stackInfo integration.RuntimeValidationStackInfo) {
			require.NotNil(t, stackInfo.Deployment)

			var stackRes *apitype.ResourceV3
			var componentRes *apitype.ResourceV3
			var slowChildRes *apitype.ResourceV3
			for i := range stackInfo.Deployment.Resources {
				res := &stackInfo.Deployment.Resources[i]
				switch res.URN.Type() {
				case resource.RootStackType:
					stackRes = res
				case "testcomponent:index:Component":
					componentRes = res
				case "testcomponent:index:SlowChild":
					slowChildRes = res
				}
			}

			require.NotNil(t, stackRes)
			assert.Equal(t, "", string(stackRes.Parent))
			require.NotNil(t, componentRes)
			require.NotNil(t, slowChildRes)
			assert.Equal(t, componentRes.URN, slowChildRes.Parent)
		},
	})
}

func TestConstructNestedDart(t *testing.T) {
	const testDir = "construct_nested_component"

	localProviders := []integration.LocalDependency{
		{Package: "testcomponent", Path: filepath.Join("construct_component", "testcomponent-go")},
		{Package: "secondtestcomponent", Path: filepath.Join(testDir, "testcomponent2-go")},
	}

	opts := optsForConstructDart(18, localProviders)
	opts.Dir = filepath.Join(testDir, "dart")
	testDartProgram(t, opts)
}

func TestConstructErrorApplyDart(t *testing.T) {
	testConstructErrorApply(t, "dart")
}

// Test remote component construction with prompt inputs.
func TestConstructPlainDart(t *testing.T) {
	testDir := "construct_component_plain"
	componentDir := "testcomponent-go"
	expectedResourceCount := 8

	localProviders := []integration.LocalDependency{
		{Package: "testcomponent", Path: filepath.Join(testDir, componentDir)},
	}

	testDartProgram(t, optsForConstructPlainDart(t, expectedResourceCount, localProviders))
}

func optsForConstructPlainDart(t *testing.T, expectedResourceCount int, localProviders []integration.LocalDependency,
	env ...string) *integration.ProgramTestOptions {
	return &integration.ProgramTestOptions{
		Env:            env,
		Dir:            filepath.Join("construct_component_plain", "dart"),
		LocalProviders: localProviders,
		Quick:          true,
		ExtraRuntimeValidation: func(t *testing.T, stackInfo integration.RuntimeValidationStackInfo) {
			assert.NotNil(t, stackInfo.Deployment)
			assert.Equal(t, expectedResourceCount, len(stackInfo.Deployment.Resources))
		},
	}
}

// Test remote component inputs properly handle unknowns.
func TestConstructUnknownDart(t *testing.T) {
	testConstructUnknown(t, "dart")
}

// Test methods on remote components.
func TestConstructMethodsDart(t *testing.T) {
	testDir := "construct_component_methods"
	componentDir := "testcomponent-go"

	localProvider := integration.LocalDependency{
		Package: "testcomponent",
		Path:    filepath.Join(testDir, componentDir),
	}

	testDartProgram(t, &integration.ProgramTestOptions{
		Dir:            filepath.Join(testDir, "dart"),
		LocalProviders: []integration.LocalDependency{localProvider},
		Quick:          true,
		ExtraRuntimeValidation: func(t *testing.T, stackInfo integration.RuntimeValidationStackInfo) {
			assert.Equal(t, "Hello World, Alice!", stackInfo.Outputs["message"])
		},
	})
}

func TestConstructMethodsUnknownDart(t *testing.T) {
	testConstructMethodsUnknown(t, "dart")
}

func TestConstructMethodsResourcesDart(t *testing.T) {
	testConstructMethodsResources(t, "dart")
}

func TestConstructMethodsErrorsDart(t *testing.T) {
	testConstructMethodsErrors(t, "dart")
}

func TestCallFailuresDart(t *testing.T) {
	TestConstructMethodsErrorsDart(t)
}

func TestConstructMethodsProviderDart(t *testing.T) {
	testConstructMethodsProvider(t, "dart")
}

func TestConstructOutputValuesDart(t *testing.T) {
	testConstructOutputValues(t, "dart")
}

func TestConstructProviderDart(t *testing.T) {
	const testDir = "construct_component_provider"
	componentDir := "testcomponent-go"
	localProvider := integration.LocalDependency{
		Package: "testcomponent", Path: filepath.Join(testDir, componentDir),
	}
	testDartProgram(t, &integration.ProgramTestOptions{
		Dir:            filepath.Join(testDir, "dart"),
		LocalProviders: []integration.LocalDependency{localProvider},
		Quick:          true,
		ExtraRuntimeValidation: func(t *testing.T, stackInfo integration.RuntimeValidationStackInfo) {
			assert.Equal(t, "hello world", stackInfo.Outputs["message"])
		},
	})
}

func TestConstructProviderExplicitDart(t *testing.T) {
	testConstructProviderExplicit(t, "dart")
}

func TestConstructConfigureProviderDart(t *testing.T) {
	testConstructConfigureProvider(t, "dart")
}

func TestConstructResourceOptionsDart(t *testing.T) {
	testConstructResourceOptions(t, "dart")
}

func findResource(token string, resources []apitype.ResourceV3) *apitype.ResourceV3 {
	for _, r := range resources {
		if string(r.URN.Type()) == token {
			return &r
		}
	}
	return nil
}

func TestConstructComponentWithIdOutputDart(t *testing.T) {
	const testDir = "construct_component_id_output"

	localProvider := integration.LocalDependency{
		Package: "testcomponent",
		Path:    filepath.Join(testDir, "testcomponent-go"),
	}

	testDartProgram(t, &integration.ProgramTestOptions{
		Dir:            filepath.Join(testDir, "dart"),
		LocalProviders: []integration.LocalDependency{localProvider},
		Quick:          true,
		ExtraRuntimeValidation: func(t *testing.T, stackInfo integration.RuntimeValidationStackInfo) {
			component := findResource("testcomponent:index:Component", stackInfo.Deployment.Resources)
			require.NotNil(t, component, "component should be present in the deployment")
			require.NotNil(t, component.Outputs, "component should have outputs")
			componentID, ok := component.Outputs["id"].(string)
			require.True(t, ok, "component should have an output called id")
			require.Equal(t, "42-hello", componentID, "component id output should be '42-hello'")

			stack := findResource("pulumi:pulumi:Stack", stackInfo.Deployment.Resources)
			require.NotNil(t, stack, "stack should be present in the deployment")
			require.NotNil(t, stack.Outputs, "stack should have outputs")
			stackID, ok := stack.Outputs["id"].(string)
			require.True(t, ok, "stack should have an output named id")
			require.Equal(t, "42-hello", stackID, "stack id output should be '42-hello'")
		},
	})
}

func TestConstructFailuresDart(t *testing.T) {
	testConstructFailures(t, "dart")
}

func TestGetResourceDart(t *testing.T) {
	testDartProgram(t, &integration.ProgramTestOptions{
		Dir:                      "get_resource",
		AllowEmptyPreviewChanges: true,
		ExtraRuntimeValidation: func(t *testing.T, stack integration.RuntimeValidationStackInfo) {
			assert.NotNil(t, stack.Outputs)
			assert.Equal(t, float64(2), stack.Outputs["getPetLength"])

			out, ok := stack.Outputs["secret"].(map[string]interface{})
			assert.True(t, ok)

			_, ok = out["ciphertext"]
			assert.True(t, ok)
		},
	})
}

func TestComponentProviderSchemaDart(t *testing.T) {
	binName := "pulumi-resource-testcomponent"
	if runtime.GOOS == WindowsOS {
		binName += ".exe"
	}
	binPath := filepath.Join(t.TempDir(), binName)

	cmd := exec.Command("go", "build", "-o", binPath, "./component_provider_schema/testcomponent-go")
	cmd.Dir = "."
	output, err := cmd.CombinedOutput()
	require.NoErrorf(t, err, "failed to build component provider schema fixture:\n%s", string(output))

	testComponentProviderSchema(t, binPath)
}

// Test that the about command works as expected. Because about parses the
// results of each runtime independently, we have an integration test in each
// language.
func TestAboutDart(t *testing.T) {
	t.Parallel()

	e := ptesting.NewEnvironment(t)
	defer e.DeleteIfNotFailed()
	e.ImportDirectory("about")

	e.RunCommand("pulumi", "login", "--cloud-url", e.LocalURL())
	_, stderr := e.RunCommand("pulumi", "about")
	// This one doesn't have a current stack. Assert that we caught it.
	assert.Contains(t, stderr, "No current stack")
}

func setupLocalDartLanguagePluginPath(t *testing.T, rootPath string) {
	t.Helper()
	_ = rootPath

	languagePluginBinary, err := exec.LookPath("pulumi-language-dart")
	if err != nil {
		require.FailNow(t, "pulumi-language-dart not found in PATH; run `cd pulumi-language-dart && go install .` first")
	}

	t.Setenv(
		"PATH", filepath.Dir(languagePluginBinary)+string(os.PathListSeparator)+os.Getenv("PATH"),
	)
}

var (
	preseedConversionPluginsOnce sync.Once
	preseedConversionPluginsHome string
)

func preseedConversionPluginCache(t *testing.T) {
	t.Helper()

	preseedConversionPluginsOnce.Do(func() {
		var err error
		preseedConversionPluginsHome, err = os.MkdirTemp("", "pulumi-dart-conversion-plugins-")
		require.NoError(t, err)

		run := func(args ...string) {
			cmd := exec.Command("pulumi", args...)
			cmd.Env = append(
				os.Environ(),
				"PULUMI_HOME="+preseedConversionPluginsHome,
				"PULUMI_NON_INTERACTIVE=1",
			)
			out, err := cmd.CombinedOutput()
			require.NoErrorf(
				t,
				err,
				"failed seeding plugin cache with %v: %s",
				args,
				string(out),
			)
		}

		run("plugin", "install", "converter", "terraform", "v1.3.0")
		run("plugin", "install", "resource", "terraform-provider", "v1.3.0")
	})

	require.DirExists(t, preseedConversionPluginsHome)
}

func TestPackageAddDart(t *testing.T) {
	e := ptesting.NewEnvironment(t)
	defer e.DeleteIfNotFailed()

	e.ImportDirectory(filepath.Join("package_add", "basic"))
	e.CWD = filepath.Join(e.RootPath, "dart")

	setupLocalDartLanguagePluginPath(t, e.RootPath)
	pulumiSDKPath, err := pulumiSDKPath()
	require.NoError(t, err)

	e.RunCommand("pulumi", "login", "--cloud-url", e.LocalURL())
	e.RunCommand("pulumi", "stack", "init", "dev")

	projectPubspecPath := filepath.Join(e.CWD, "pubspec.yaml")
	projectPubspec, err := os.ReadFile(projectPubspecPath)
	require.NoError(t, err)
	projectPubspecText := string(projectPubspec)
	if !strings.Contains(projectPubspecText, "dependency_overrides:") {
		projectPubspecText += "\n"
		projectPubspecText += fmt.Sprintf(
			"dependency_overrides:\n  pulumi:\n    path: %s\n",
			filepath.ToSlash(pulumiSDKPath),
		)
	} else if !strings.Contains(projectPubspecText, "pulumi:") {
		projectPubspecText += fmt.Sprintf(
			"  pulumi:\n    path: %s\n",
			filepath.ToSlash(pulumiSDKPath),
		)
	}
	require.NoError(t, os.WriteFile(projectPubspecPath, []byte(projectPubspecText), 0o600))

	_, _ = e.RunCommand("pulumi", "plugin", "install", "resource", "random")
	stdout, _ := e.RunCommand("pulumi", "package", "add", "random")
	require.Contains(
		t,
		stdout,
		"You can import the SDK in your Dart code with:\n\n  import 'package:pulumi_random/pulumi_random.dart' as random;",
	)

	_, err = os.Stat(filepath.Join(e.CWD, "sdks", "random", "pubspec.yaml"))
	require.NoError(t, err)

	projectPubspec, err = os.ReadFile(filepath.Join(e.CWD, "pubspec.yaml"))
	require.NoError(t, err)
	projectPubspecText = string(projectPubspec)
	require.Contains(t, projectPubspecText, "pulumi_random:")
	require.Contains(t, projectPubspecText, "path: sdks/random")

	_, _, err = e.GetCommandResultsIn(e.CWD, "dart", "pub", "get")
	require.NoError(t, err)

	upStdout, upStderr, err := e.GetCommandResults("pulumi", "up", "--skip-preview", "--yes")
	require.NoError(t, err, "pulumi up failed:\nstdout=%s\nstderr=%s", upStdout, upStderr)

	stackOutput, _, err := e.GetCommandResults("pulumi", "stack", "output", "petName")
	require.NoError(t, err)
	require.NotEmpty(t, strings.TrimSpace(stackOutput))
}

func TestConvertTerraformProviderDart(t *testing.T) {
	preseedConversionPluginCache(t)

	e := ptesting.NewEnvironment(t)
	defer e.DeleteIfNotFailed()

	e.ImportDirectory("convertmultiplefromterraform")
	e.SetEnvVars("PULUMI_HOME=" + preseedConversionPluginsHome)
	setupLocalDartLanguagePluginPath(t, e.RootPath)
	pulumiSDKPath, err := pulumiSDKPath()
	require.NoError(t, err)
	t.Setenv("PULUMI_DART_PULUMI_DEPENDENCY_PATH", pulumiSDKPath)

	_, _, err = e.GetCommandResults("pulumi", "convert", "--from", "terraform", "--language", "dart", "--out", "dartdir")
	if err != nil {
		require.NoError(t, err)
	}

	assert.True(t, e.PathExists(filepath.Join("dartdir", "pubspec.yaml")))
	assert.True(t, e.PathExists(filepath.Join("dartdir", "sdks", "supabase", "pubspec.yaml")))
	assert.True(t, e.PathExists(filepath.Join("dartdir", "sdks", "b2", "pubspec.yaml")))

	pubspecData, err := os.ReadFile(filepath.Join(e.CWD, "dartdir", "pubspec.yaml"))
	require.NoError(t, err)
	pubspec := string(pubspecData)
	assert.Contains(t, pubspec, "sdks/supabase")
	assert.Contains(t, pubspec, "sdks/b2")
}

func TestConvertMultipleTerraformProviderDart(t *testing.T) {
	TestConvertTerraformProviderDart(t)
}

func TestPackageAddNamespaceDart(t *testing.T) {
	e := ptesting.NewEnvironment(t)
	defer e.DeleteIfNotFailed()

	e.ImportDirectory(filepath.Join("package_add", "namespace"))
	e.CWD = filepath.Join(e.RootPath, "dart")

	pulumiSDKPath, err := pulumiSDKPath()
	require.NoError(t, err)
	setupLocalDartLanguagePluginPath(t, e.RootPath)

	projectPubspecPath := filepath.Join(e.CWD, "pubspec.yaml")
	projectPubspec, err := os.ReadFile(projectPubspecPath)
	require.NoError(t, err)
	projectPubspecText := string(projectPubspec)
	if !strings.Contains(projectPubspecText, "dependency_overrides:") {
		projectPubspecText += "\n"
		projectPubspecText += fmt.Sprintf(
			"dependency_overrides:\n  pulumi:\n    path: %s\n",
			filepath.ToSlash(pulumiSDKPath),
		)
	} else if !strings.Contains(projectPubspecText, "pulumi:") {
		projectPubspecText += fmt.Sprintf(
			"  pulumi:\n    path: %s\n",
			filepath.ToSlash(pulumiSDKPath),
		)
	}
	require.NoError(t, os.WriteFile(projectPubspecPath, []byte(projectPubspecText), 0o600))

	stdout, _ := e.RunCommand("pulumi", "package", "add", "../provider/schema.json")
	require.Contains(
		t,
		stdout,
		"You can import the SDK in your Dart code with:\n\n  import 'package:pulumi_my_namespace_mypkg/pulumi_my_namespace_mypkg.dart' as mypkg;",
	)

	_, err = os.Stat(filepath.Join(e.CWD, "sdks", "my-namespace-mypkg", "pubspec.yaml"))
	require.NoError(t, err)

	rootSDKPath := filepath.Join(e.CWD, "sdks", "my-namespace-mypkg", "lib", "pulumi_my_namespace_mypkg.dart")
	rootSDK, err := os.ReadFile(rootSDKPath)
	require.NoError(t, err)
	for _, expected := range []string{
		"import 'package:pulumi_my_namespace_mypkg/index.dart' as module_index;",
		"final index = _IndexModuleNamespace();",
		"final getResource = module_index.getResource;",
	} {
		assert.Contains(t, string(rootSDK), expected)
	}

	moduleExportPath := filepath.Join(e.CWD, "sdks", "my-namespace-mypkg", "lib", "index.dart")
	moduleExport, err := os.ReadFile(moduleExportPath)
	require.NoError(t, err)
	assert.Contains(t, string(moduleExport), "export 'package:pulumi_my_namespace_mypkg/src/index.dart';")

	implSDKPath := filepath.Join(e.CWD, "sdks", "my-namespace-mypkg", "lib", "src", "index.dart")
	implSDK, err := os.ReadFile(implSDKPath)
	require.NoError(t, err)
	for _, expected := range []string{
		"export 'index/functions.dart';",
		"export 'index/resource_type.dart';",
		"export 'index/get_resource_args.dart';",
		"export 'index/get_resource_result.dart';",
	} {
		assert.Contains(t, string(implSDK), expected)
	}

	resourceTypePath := filepath.Join(e.CWD, "sdks", "my-namespace-mypkg", "lib", "src", "index", "resource_type.dart")
	resourceTypeSource, err := os.ReadFile(resourceTypePath)
	require.NoError(t, err)
	assert.Contains(t, string(resourceTypeSource), "class ResourceType extends pulumi.CustomResource")
	assert.Contains(t, string(resourceTypeSource), "Input.mapToInputs")

	resourceModePath := filepath.Join(e.CWD, "sdks", "my-namespace-mypkg", "lib", "src", "index", "resource_mode.dart")
	resourceModeSource, err := os.ReadFile(resourceModePath)
	require.NoError(t, err)
	assert.Contains(t, string(resourceModeSource), "enum ResourceMode")

	resourceMetadataPath := filepath.Join(e.CWD, "sdks", "my-namespace-mypkg", "lib", "src", "index", "resource_metadata.dart")
	resourceMetadataSource, err := os.ReadFile(resourceMetadataPath)
	require.NoError(t, err)
	assert.Contains(t, string(resourceMetadataSource), "class ResourceMetadata")

	resourceArgsPath := filepath.Join(e.CWD, "sdks", "my-namespace-mypkg", "lib", "src", "index", "resource_args.dart")
	resourceArgsSource, err := os.ReadFile(resourceArgsPath)
	require.NoError(t, err)
	assert.Contains(t, string(resourceArgsSource), "class ResourceArgs")

	getResourceResultPath := filepath.Join(e.CWD, "sdks", "my-namespace-mypkg", "lib", "src", "index", "get_resource_result.dart")
	getResourceResultSource, err := os.ReadFile(getResourceResultPath)
	require.NoError(t, err)
	assert.Contains(t, string(getResourceResultSource), "class GetResourceResult")

	getResourcePath := filepath.Join(e.CWD, "sdks", "my-namespace-mypkg", "lib", "src", "index", "functions.dart")
	getResourceSource, err := os.ReadFile(getResourcePath)
	require.NoError(t, err)
	assert.Contains(t, string(getResourceSource), "Future<GetResourceResult> getResource")

	configPath := filepath.Join(e.CWD, "sdks", "my-namespace-mypkg", "lib", "src", "config", "config.dart")
	configSource, err := os.ReadFile(configPath)
	require.NoError(t, err)
	assert.Contains(t, string(configSource), "const config = ")

	e.RunCommand("dart", "test")
}

// TestRefreshDart simply tests that we can build and run an empty Dart project with refresh set.
func TestRefreshDart(t *testing.T) {
	testDartProgram(t, &integration.ProgramTestOptions{
		Dir:   "refresh",
		Quick: true,
	})
}

// TestTracePropagationDart checks that tracing writes runtime traces for Dart updates.
func TestTracePropagationDart(t *testing.T) {
	traceDir := t.TempDir()
	testDartProgram(t, &integration.ProgramTestOptions{
		Dir:                    "empty",
		SkipRefresh:            true,
		SkipPreview:            true,
		SkipUpdate:             false,
		SkipExportImport:       true,
		SkipEmptyPreviewUpdate: true,
		Quick:                  false,
		Tracing:                "file:" + filepath.Join(traceDir, "{command}.trace"),
		RequireService:         true,
		NoParallel:             true,
	})

	tracePath := filepath.Join(traceDir, "pulumi-update-initial.trace")
	traceInfo, err := os.Stat(tracePath)
	require.NoError(t, err)
	assert.Greater(t, traceInfo.Size(), int64(0))
}

// Regression test for https://github.com/pulumi/pulumi/issues/12301.
func TestRegression12301Dart(t *testing.T) {
	testDartProgram(t, &integration.ProgramTestOptions{
		Dir:   "regression_12301",
		Quick: true,
		PostPrepareProject: func(project *engine.Projinfo) error {
			jsonPath := filepath.Join(project.Root, "regression_12301.json")
			dirName := filepath.Base(project.Root)
			newPath := filepath.Join(project.Root, "..", dirName+".json")
			return os.Rename(jsonPath, newPath) //nolint:forbidigo // os.Rename is OK for tests
		},
		ExtraRuntimeValidation: func(t *testing.T, stack integration.RuntimeValidationStackInfo) {
			require.Len(t, stack.Outputs, 1)
			assert.Contains(t, stack.Outputs, "bar")
			assert.Equal(t, 3.0, stack.Outputs["bar"].(float64))
		},
	})
}

// TestResourceRefsGetResourceDart tests that invoking the built-in 'pulumi:pulumi:getResource' function
// returns resource references for any resource reference in a resource's state.
func TestResourceRefsGetResourceDart(t *testing.T) {
	testDartProgram(t, &integration.ProgramTestOptions{
		Dir:   filepath.Join("resource_refs_get_resource"),
		Quick: true,
	})
}

// TestEntrypointDefaultDart validates default Dart entrypoint resolution.
func TestEntrypointDefaultDart(t *testing.T) {
	validation := func(t *testing.T, stack integration.RuntimeValidationStackInfo) {
		var foundStdout int
		for _, ev := range stack.Events {
			if de := ev.DiagnosticEvent; de != nil {
				if strings.HasPrefix(de.Message, "With entrypoint") {
					foundStdout++
				}
			}
		}
		assert.Equal(t, 1, foundStdout)
	}
	testDartProgram(t, &integration.ProgramTestOptions{
		Dir:                    "entrypoint_default",
		Quick:                  true,
		ExtraRuntimeValidation: validation,
	})
}

// TestEntrypointMainOverrideDart validates entrypoint selection when main is overridden.
func TestEntrypointMainOverrideDart(t *testing.T) {
	validation := func(t *testing.T, stack integration.RuntimeValidationStackInfo) {
		var foundStdout int
		for _, ev := range stack.Events {
			if de := ev.DiagnosticEvent; de != nil {
				if strings.HasPrefix(de.Message, "With entrypoint") {
					foundStdout++
				}
			}
		}
		assert.Equal(t, 1, foundStdout)
	}
	testDartProgram(t, &integration.ProgramTestOptions{
		Dir:                    "entrypoint_main_override",
		Quick:                  true,
		ExtraRuntimeValidation: validation,
	})
}

func TestProvider(t *testing.T) {
	testDartProgram(t, &integration.ProgramTestOptions{
		Dir:            filepath.Join("provider"),
		LocalProviders: []integration.LocalDependency{{Package: "testprovider", Path: testProviderPath()}},
		ExtraRuntimeValidation: func(t *testing.T, stack integration.RuntimeValidationStackInfo) {
			assert.NotNil(t, stack.Outputs)
			assert.Equal(t, float64(42), stack.Outputs["echoA"])
			assert.Equal(t, "hello", stack.Outputs["echoB"])
			assert.Equal(t, []interface{}{float64(1), "goodbye", true}, stack.Outputs["echoC"])
		},
	})
}

func TestProviderDownloadURLDart(t *testing.T) {
	testDartProgram(t, &integration.ProgramTestOptions{
		Dir:            "gather_plugin",
		Quick:          true,
		LocalProviders: []integration.LocalDependency{{Package: "testprovider", Path: testProviderPath()}},
		ExtraRuntimeValidation: func(t *testing.T, stack integration.RuntimeValidationStackInfo) {
			assert.NotNil(t, stack.Deployment)
			if !assert.Greater(t, len(stack.Deployment.Resources), 1) {
				return
			}

			var sawDefaultProviderURL bool
			var sawExplicitProviderURL bool

			for _, res := range stack.Deployment.Resources {
				if res.Type == resource.RootStackType {
					continue
				}

				_, hasTopLevelInput := res.Inputs["pluginDownloadURL"]
				_, hasTopLevelOutput := res.Outputs["pluginDownloadURL"]
				assert.False(t, hasTopLevelInput, "resource %s had top-level input pluginDownloadURL", res.URN)
				assert.False(t, hasTopLevelOutput, "resource %s had top-level output pluginDownloadURL", res.URN)

				pluginURL, hasInternalPluginURL := pluginDownloadURLFromInputs(res.Inputs)
				switch {
				case isDefaultProviderResource(res):
					assert.True(t, hasInternalPluginURL, "default provider %s missing __internal.pluginDownloadURL", res.URN)
					assert.Equal(t, "get.example.test", pluginURL)
					sawDefaultProviderURL = true
				case isProviderResource(res):
					assert.True(t, hasInternalPluginURL, "explicit provider %s missing __internal.pluginDownloadURL", res.URN)
					assert.Equal(t, "get.pulumi.test/providers", pluginURL)
					sawExplicitProviderURL = true
				default:
					assert.False(t, hasInternalPluginURL, "non-provider resource %s unexpectedly had __internal.pluginDownloadURL", res.URN)
				}
			}

			assert.True(t, sawDefaultProviderURL, "did not observe plugin URL on default provider")
			assert.True(t, sawExplicitProviderURL, "did not observe plugin URL on explicit provider")
		},
	})
}

func TestConstructProviderPropagationDart(t *testing.T) {
	const (
		testDir      = "construct_component_provider_propagation"
		componentDir = "testcomponent-go"
	)

	testDartProgram(t, &integration.ProgramTestOptions{
		Dir: filepath.Join(testDir, "dart"),
		LocalProviders: []integration.LocalDependency{
			{
				Package: "testcomponent",
				Path:    filepath.Join(testDir, componentDir),
			},
			{
				Package: "testprovider",
				Path:    testProviderPath(),
			},
		},
		Quick:      true,
		NoParallel: true,
		ExtraRuntimeValidation: func(t *testing.T, stackInfo integration.RuntimeValidationStackInfo) {
			gotProviders := make(map[string]string)

			for _, res := range stackInfo.Deployment.Resources {
				if res.URN.Type() != "testprovider:index:Random" {
					continue
				}

				providerURN := res.Provider
				lastSeparator := strings.LastIndex(providerURN, "::")
				if lastSeparator != -1 {
					providerURN = providerURN[:lastSeparator]
				}
				gotProviders[string(res.URN.Name())] = string(resource.URN(providerURN).Name())
			}

			assert.Equal(t, map[string]string{
				"uses_default":       "default",
				"uses_provider":      "explicit",
				"uses_providers":     "explicit",
				"uses_providers_map": "explicit",
			}, gotProviders)
		},
	})
}

func pluginDownloadURLFromInputs(inputs map[string]interface{}) (string, bool) {
	rawInternal, ok := inputs["__internal"]
	if !ok {
		return "", false
	}

	var internal map[string]interface{}
	switch v := rawInternal.(type) {
	case map[string]interface{}:
		internal = v
	case map[interface{}]interface{}:
		internal = make(map[string]interface{}, len(v))
		for key, value := range v {
			s, ok := key.(string)
			if !ok {
				continue
			}
			internal[s] = value
		}
	default:
		return "", false
	}

	rawURL, ok := internal["pluginDownloadURL"]
	if !ok {
		return "", false
	}

	url, ok := rawURL.(string)
	if !ok {
		return "", false
	}

	return url, true
}

func isProviderResource(res apitype.ResourceV3) bool {
	return strings.HasPrefix(string(res.Type), "pulumi:providers:")
}

func isDefaultProviderResource(res apitype.ResourceV3) bool {
	return isProviderResource(res) && strings.HasPrefix(string(res.URN.Name()), "default")
}

// TestDeletedWith tests the DeletedWith resource option.
func TestDeletedWithDart(t *testing.T) {
	testDartProgram(t, &integration.ProgramTestOptions{
		Dir:            "deleted_with",
		LocalProviders: []integration.LocalDependency{{Package: "testprovider", Path: testProviderPath()}},
		Quick:          true,
	})
}
