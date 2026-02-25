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
	"path/filepath"
	"strings"
	"testing"

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
	testDartProgram(t, &integration.ProgramTestOptions{
		Dir:   "dotnet_service_provider",
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

// Tests basic configuration from the perspective of a Pulumi .NET program.
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

// Tests that accessing config secrets using non-secret APIs results in warnings being logged.
func TestConfigSecretsWarnDart(t *testing.T) {
	// TODO[pulumi/pulumi#7127]: Re-enabled the warning.
	t.Skip("Temporarily skipping test until we've re-enabled the warning - pulumi/pulumi#7127")
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
	owner := os.Getenv("PULUMI_TEST_OWNER")
	if owner == "" {
		t.Skipf("Skipping: PULUMI_TEST_OWNER is not set")
	}

	d := "stack_reference_secrets"

	testDartProgram(t, &integration.ProgramTestOptions{
		RequireService: true,
		Dir:            filepath.Join(d, "step1"),
		Quick:          true,
		EditDirs: []integration.EditDir{
			{
				Dir:             filepath.Join(d, "step2"),
				Additive:        true,
				ExpectNoChanges: true,
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

// Test remote component construction with a child resource that takes a long time to be created, ensuring it's created.
//func TestConstructSlowDart(t *testing.T) {
//	localProvider := testComponentSlowLocalProvider(t)
//
//	// TODO[pulumi/pulumi#5455]: Dynamic providers fail to load when used from multi-lang components.
//	// Until we've addressed this, set PULUMI_TEST_YARN_LINK_PULUMI, which tells the integration test
//	// module to run `yarn install && yarn link @pulumi/pulumi` in the .NET program's directory, allowing
//	// the Node.js dynamic provider plugin to load.
//	// When the underlying issue has been fixed, the use of this environment variable inside the integration
//	// test module should be removed.
//	const testYarnLinkPulumiEnv = "PULUMI_TEST_YARN_LINK_PULUMI=true"
//
//	testDir := "construct_component_slow"
//	runComponentSetup(t, testDir)
//
//	opts := &integration.ProgramTestOptions{
//		Env:            []string{testYarnLinkPulumiEnv},
//		Dir:            filepath.Join(testDir, "dotnet"),
//		Dependencies:   []string{"Pulumi"},
//		LocalProviders: []integration.LocalDependency{localProvider},
//		Quick:          true,
//		ExtraRuntimeValidation: func(t *testing.T, stackInfo integration.RuntimeValidationStackInfo) {
//			assert.NotNil(t, stackInfo.Deployment)
//			if assert.Equal(t, 5, len(stackInfo.Deployment.Resources)) {
//				stackRes := stackInfo.Deployment.Resources[0]
//				assert.NotNil(t, stackRes)
//				assert.Equal(t, resource.RootStackType, stackRes.Type)
//				assert.Equal(t, "", string(stackRes.Parent))
//			}
//		},
//	}
//	integration.ProgramTest(t, opts)
//}

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
		Dir:            filepath.Join("construct_component_plain", "dotnet"),
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
	testConstructUnknown(t, "dotnet")
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
		Dir:            filepath.Join(testDir, "dotnet"),
		LocalProviders: []integration.LocalDependency{localProvider},
		Quick:          true,
		ExtraRuntimeValidation: func(t *testing.T, stackInfo integration.RuntimeValidationStackInfo) {
			assert.Equal(t, "Hello World, Alice!", stackInfo.Outputs["message"])
		},
	})
}

func TestConstructMethodsUnknownDart(t *testing.T) {
	testConstructMethodsUnknown(t, "dotnet")
}

func TestConstructMethodsResourcesDart(t *testing.T) {
	testConstructMethodsResources(t, "dart")
}

func TestConstructMethodsErrorsDart(t *testing.T) {
	testConstructMethodsErrors(t, "dotnet")
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
		Dir:            filepath.Join(testDir, "dotnet"),
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

// Test that the about command works as expected. Because about parses the
// results of each runtime independently, we have an integration test in each
// language.
func TestAboutDart(t *testing.T) {
	t.Parallel()

	e := ptesting.NewEnvironment(t)
	defer func() {
		if !t.Failed() {
			e.DeleteEnvironmentFallible()
		}
	}()
	e.ImportDirectory("about")

	e.RunCommand("pulumi", "login", "--cloud-url", e.LocalURL())
	_, stderr := e.RunCommand("pulumi", "about")
	// This one doesn't have a current stack. Assert that we caught it.
	assert.Contains(t, stderr, "No current stack")
}

func TestPackageAddNamespaceDart(t *testing.T) {
	e := ptesting.NewEnvironment(t)
	defer func() {
		if !t.Failed() {
			e.DeleteEnvironmentFallible()
		}
	}()

	e.ImportDirectory(filepath.Join("package_add", "namespace"))
	e.CWD = filepath.Join(e.RootPath, "dart")

	languagePluginPath, err := filepath.Abs("../pulumi-language-dart")
	require.NoError(t, err)

	originalPath := os.Getenv("PATH")
	require.NoError(t, os.Setenv("PATH", languagePluginPath+string(os.PathListSeparator)+originalPath))
	defer func() {
		_ = os.Setenv("PATH", originalPath)
	}()

	stdout, _ := e.RunCommand("pulumi", "package", "add", "../provider/schema.json")
	require.Contains(
		t,
		stdout,
		"You can import the SDK in your Dart code with:\n\n  import 'package:my_namespace_mypkg/my_namespace_mypkg.dart' as mypkg;",
	)

	_, err = os.Stat(filepath.Join(e.CWD, "sdks", "my-namespace-mypkg", "pubspec.yaml"))
	require.NoError(t, err)
}

// TestResourceRefsGetResourceDart tests that invoking the built-in 'pulumi:pulumi:getResource' function
// returns resource references for any resource reference in a resource's state.
func TestResourceRefsGetResourceDart(t *testing.T) {
	testDartProgram(t, &integration.ProgramTestOptions{
		Dir:   filepath.Join("resource_refs_get_resource"),
		Quick: true,
	})
}

// TestSln tests that we run a program with a .sln file next to it.
func TestSln(t *testing.T) {
	validation := func(t *testing.T, stack integration.RuntimeValidationStackInfo) {
		var foundStdout int
		for _, ev := range stack.Events {
			if de := ev.DiagnosticEvent; de != nil {
				if strings.HasPrefix(de.Message, "With sln") {
					foundStdout++
				}
			}
		}
		assert.Equal(t, 1, foundStdout)
	}
	testDartProgram(t, &integration.ProgramTestOptions{
		Dir:                    "sln",
		Quick:                  true,
		ExtraRuntimeValidation: validation,
	})
}

// TestSlnMultiple tests that we run a .sln file with multiple nested projects by setting the "main" option.
func TestSlnMultipleNested(t *testing.T) {
	validation := func(t *testing.T, stack integration.RuntimeValidationStackInfo) {
		var foundStdout int
		for _, ev := range stack.Events {
			if de := ev.DiagnosticEvent; de != nil {
				if strings.HasPrefix(de.Message, "With sln") {
					foundStdout++
				}
			}
		}
		assert.Equal(t, 1, foundStdout)
	}
	testDartProgram(t, &integration.ProgramTestOptions{
		Dir:                    "sln_multiple_nested",
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
func TestDeletedWith(t *testing.T) {
	testDartProgram(t, &integration.ProgramTestOptions{
		Dir:            "deleted_with",
		LocalProviders: []integration.LocalDependency{{Package: "testprovider", Path: testProviderPath()}},
		Quick:          true,
	})
}
