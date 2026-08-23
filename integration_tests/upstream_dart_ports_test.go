// Copyright 2026, Pulumi Corporation.
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
	"os/exec"
	"path/filepath"
	"strings"
	"testing"

	"github.com/pulumi/pulumi/pkg/v3/testing/integration"
	"github.com/pulumi/pulumi/sdk/v3/go/common/apitype"
	"github.com/pulumi/pulumi/sdk/v3/go/common/resource"
	"github.com/pulumi/pulumi/sdk/v3/go/common/tokens"
	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"
)

func TestDartErrorHooks(t *testing.T) {
	testDartProgram(t, &integration.ProgramTestOptions{
		LocalProviders: []integration.LocalDependency{
			{
				Package: "testprovider",
				Path:    filepath.Join("error_hooks", "testprovider-go"),
			},
		},
		Quick: true,
		Dir:   filepath.Join("error_hooks", "step1"),
		ExtraRuntimeValidation: func(t *testing.T, stack integration.RuntimeValidationStackInfo) {
			requirePrintedDart(t, stack, "info", "onError was called")
		},
	})
}

// This test ensures that we do not proceed to deletions if a program throws an error.
func TestProgramErrorDart(t *testing.T) {
	testDir := "program_error"

	testDartProgram(t, &integration.ProgramTestOptions{
		Dir:            filepath.Join(testDir, "step1"),
		LocalProviders: []integration.LocalDependency{{Package: "testprovider", Path: testProviderPath()}},
		Quick:          true,
		ExtraRuntimeValidation: func(t *testing.T, stack integration.RuntimeValidationStackInfo) {
			var providerCount int
			var randomCount int
			for _, res := range stack.Deployment.Resources {
				switch res.Type {
				case tokens.Type("pulumi:providers:testprovider"):
					providerCount++
				case tokens.Type("testprovider:index:Random"):
					randomCount++
				}
			}
			require.Equal(t, 1, providerCount, "expected exactly one testprovider provider")
			require.Equal(t, 2, randomCount, "expected exactly two Random resources")
		},
		EditDirs: []integration.EditDir{
			{
				Dir:           filepath.Join(testDir, "step2"),
				Additive:      true,
				ExpectFailure: true,
				ExtraRuntimeValidation: func(t *testing.T, stack integration.RuntimeValidationStackInfo) {
					var providerCount int
					var randomCount int
					for _, res := range stack.Deployment.Resources {
						switch res.Type {
						case tokens.Type("pulumi:providers:testprovider"):
							providerCount++
						case tokens.Type("testprovider:index:Random"):
							randomCount++
						}
					}
					require.Equal(t, 1, providerCount, "expected exactly one testprovider provider")
					require.Equal(t, 2, randomCount, "expected exactly two Random resources")
				},
			},
		},
	})
}

func TestReplacementTriggerDart(t *testing.T) {
	testDir := "replacement_trigger"

	testDartProgram(t, &integration.ProgramTestOptions{
		Dir: filepath.Join(testDir, "step1"),
		ExtraRuntimeValidation: func(t *testing.T, stack integration.RuntimeValidationStackInfo) {
			var componentCount int
			for _, res := range stack.Deployment.Resources {
				if res.Type.DisplayName() == "testcomponent:index:Component" {
					componentCount++
					require.Equal(t, "trigger", string(res.URN.Name()))
				}
			}
			require.Equal(t, 1, componentCount, "expected exactly one component resource")
		},
		EditDirs: []integration.EditDir{
			{
				Dir:             filepath.Join(testDir, "step2"),
				Additive:        true,
				ExpectNoChanges: true,
				ExtraRuntimeValidation: func(t *testing.T, stack integration.RuntimeValidationStackInfo) {
					var componentCount int
					for _, res := range stack.Deployment.Resources {
						if res.Type.DisplayName() == "testcomponent:index:Component" {
							componentCount++
							require.Equal(t, "trigger", string(res.URN.Name()))
						}
					}
					require.Equal(t, 1, componentCount, "expected exactly one component resource")

					for _, ev := range stack.Events {
						if ev.ResourcePreEvent != nil {
							metadata := ev.ResourcePreEvent.Metadata
							if metadata.URN != "" {
								require.NotEqual(
									t,
									apitype.OpReplace,
									metadata.Op,
									"Did not expect OpReplace for 'trigger' resource, but found OpReplace",
								)
							}
						}
					}
				},
			},
			{
				Dir:      filepath.Join(testDir, "step3"),
				Additive: true,
				ExtraRuntimeValidation: func(t *testing.T, stack integration.RuntimeValidationStackInfo) {
					var componentCount int
					for _, res := range stack.Deployment.Resources {
						if res.Type.DisplayName() == "testcomponent:index:Component" {
							componentCount++
							require.Equal(t, "trigger", string(res.URN.Name()))
						}
					}
					require.Equal(t, 1, componentCount, "expected exactly one component resource")

					var operations []apitype.OpType
					for _, ev := range stack.Events {
						if ev.ResourcePreEvent != nil {
							metadata := ev.ResourcePreEvent.Metadata
							if metadata.URN != "" {
								if resource.URN(metadata.URN).Name() == "trigger" {
									operations = append(operations, metadata.Op)
								}
							}
						}
					}

					require.NotEmpty(t, operations, "Expected to find events for 'trigger' resource")
					require.Contains(
						t,
						operations,
						apitype.OpReplace,
						"Expected to find OpReplace in events for 'trigger' resource, found operations: %v",
						operations,
					)
				},
			},
		},
	})
}

// TestStackOutputsProgramErrorDart tests that when a program error occurs, updated stack outputs
// are persisted while untouched outputs remain unchanged.
func TestStackOutputsProgramErrorDart(t *testing.T) {
	d := "stack_outputs_program_error"

	validateOutputs := func(
		expected map[string]any,
	) func(t *testing.T, stackInfo integration.RuntimeValidationStackInfo) {
		return func(t *testing.T, stackInfo integration.RuntimeValidationStackInfo) {
			assert.Equal(t, expected, stackInfo.RootResource.Outputs)
		}
	}

	testDartProgram(t, &integration.ProgramTestOptions{
		Dir:   filepath.Join(d, "step1"),
		Quick: true,
		ExtraRuntimeValidation: validateOutputs(map[string]any{
			"xyz": "ABC",
			"foo": float64(42),
		}),
		EditDirs: []integration.EditDir{
			{
				Dir:           filepath.Join(d, "step2"),
				Additive:      true,
				ExpectFailure: true,
				ExtraRuntimeValidation: validateOutputs(map[string]any{
					"xyz": "DEF",
					"foo": float64(42),
				}),
			},
		},
	})
}

// TestStackOutputsResourceErrorDart tests that stack outputs are only updated when registration
// can complete in the presence of resource errors.
func TestStackOutputsResourceErrorDart(t *testing.T) {
	d := "stack_outputs_resource_error"

	validateOutputs := func(
		expected map[string]any,
	) func(t *testing.T, stackInfo integration.RuntimeValidationStackInfo) {
		return func(t *testing.T, stackInfo integration.RuntimeValidationStackInfo) {
			assert.Equal(t, expected, stackInfo.RootResource.Outputs)
		}
	}

	testDartProgram(t, &integration.ProgramTestOptions{
		Dir:            filepath.Join(d, "step1"),
		LocalProviders: []integration.LocalDependency{{Package: "testprovider", Path: testProviderPath()}},
		Quick:          true,
		ExtraRuntimeValidation: validateOutputs(map[string]any{
			"xyz": "ABC",
			"foo": float64(42),
		}),
		EditDirs: []integration.EditDir{
			{
				Dir:           filepath.Join(d, "step2"),
				Additive:      true,
				ExpectFailure: true,
				ExtraRuntimeValidation: validateOutputs(map[string]any{
					"xyz": "ABC",
					"foo": float64(42),
				}),
			},
			{
				Dir:           filepath.Join(d, "step3"),
				Additive:      true,
				ExpectFailure: true,
				ExtraRuntimeValidation: validateOutputs(map[string]any{
					"xyz": "DEF",
					"foo": float64(1),
				}),
			},
		},
	})
}

func TestCustomTimeoutsSuccessDart(t *testing.T) {
	testDartProgram(t, &integration.ProgramTestOptions{
		Dir:   filepath.Join("custom_timeouts", "success"),
		Quick: true,
	})
}

func TestCustomTimeoutsFailureDart(t *testing.T) {
	testDartProgram(t, &integration.ProgramTestOptions{
		Dir:           filepath.Join("custom_timeouts", "failure"),
		Quick:         true,
		ExpectFailure: true,
	})
}

// TestProjectMainDart validates Pulumi.yaml `main` resolution for Dart projects.
func TestProjectMainDart(t *testing.T) {
	testDartProgram(t, &integration.ProgramTestOptions{
		Dir:   filepath.Join("project_main", "dart"),
		Quick: true,
		ExtraRuntimeValidation: func(t *testing.T, stackInfo integration.RuntimeValidationStackInfo) {
			require.NotNil(t, stackInfo.Deployment)
		},
	})
}

// TestStackParentingDart validates parent-child relationships across stack resources.
func TestStackParentingDart(t *testing.T) {
	testDartProgram(t, &integration.ProgramTestOptions{
		Dir:            "stack_parenting",
		Quick:          true,
		LocalProviders: []integration.LocalDependency{{Package: "testprovider", Path: testProviderPath()}},
		ExtraRuntimeValidation: func(t *testing.T, stackInfo integration.RuntimeValidationStackInfo) {
			require.NotNil(t, stackInfo.Deployment)
			require.Len(t, stackInfo.Deployment.Resources, 9)

			stackRes := stackInfo.Deployment.Resources[0]
			require.NotNil(t, stackRes)
			assert.Equal(t, resource.RootStackType, stackRes.Type)
			assert.Equal(t, resource.URN(""), stackRes.Parent)

			urns := map[string]resource.URN{}
			for _, res := range stackInfo.Deployment.Resources[1:] {
				urns[string(res.URN.Name())] = res.URN
			}

			var providerCount int
			for _, res := range stackInfo.Deployment.Resources[1:] {
				name := string(res.URN.Name())
				if res.Type == tokens.Type("pulumi:providers:testprovider") {
					providerCount++
					continue
				}

				switch name {
				case "a", "f":
					assert.Equal(t, stackRes.URN, res.Parent)
				case "b", "c":
					assert.Equal(t, urns["a"], res.Parent)
				case "d", "e":
					assert.Equal(t, urns["c"], res.Parent)
				case "g":
					assert.Equal(t, urns["f"], res.Parent)
				default:
					t.Fatalf("unexpected resource name in stack_parenting fixture: %s", name)
				}
			}

			assert.Equal(t, 1, providerCount, "expected exactly one default testprovider resource")
		},
	})
}

// TestProviderSecretConfigDart validates that providers can accept secret config values.
func TestProviderSecretConfigDart(t *testing.T) {
	testDartProgram(t, &integration.ProgramTestOptions{
		Dir:            "provider_secret_config",
		Quick:          true,
		LocalProviders: []integration.LocalDependency{{Package: "testprovider", Path: testProviderPath()}},
		ExtraRuntimeValidation: func(t *testing.T, stackInfo integration.RuntimeValidationStackInfo) {
			require.NotNil(t, stackInfo.Deployment)

			var foundProvider bool
			var foundSecretConfig bool
			for _, res := range stackInfo.Deployment.Resources {
				if res.Type != tokens.Type("pulumi:providers:testprovider") {
					continue
				}

				foundProvider = true
				for key, inputValue := range res.Inputs {
					if !strings.Contains(string(key), "secretProperty") {
						continue
					}
					secret, ok := inputValue.(map[string]interface{})
					assert.True(t, ok, "provider secret config should be serialized as a secret")
					if ok {
						assert.Equal(t, resource.SecretSig, secret[resource.SigKey])
						foundSecretConfig = true
					}
				}
			}

			assert.True(t, foundProvider, "expected a first-class testprovider provider resource")
			assert.True(t, foundSecretConfig, "expected secret provider config to be present in provider inputs")
		},
	})
}

func TestComponentProviderErrorInResourceRegistrationDart(t *testing.T) {
	t.Setenv("PULUMI_DISABLE_AUTOMATIC_PLUGIN_ACQUISITION", "false")

	providerPath := filepath.Join("component_error_resource", "provider")
	npmInstall := exec.Command("npm", "install")
	npmInstall.Dir = providerPath
	out, err := npmInstall.CombinedOutput()
	require.NoErrorf(t, err, "npm install failed: %s", string(out))

	testDartProgram(t, &integration.ProgramTestOptions{
		Dir:            filepath.Join("component_error_resource", "dart"),
		LocalProviders: []integration.LocalDependency{{Package: "nodejs-component-provider", Path: providerPath}},
		Quick:          true,
		NoParallel:     true,
		ExpectFailure:  true,
		ExtraRuntimeValidation: func(t *testing.T, stack integration.RuntimeValidationStackInfo) {
			var foundError bool
			for _, event := range stack.Events {
				if event.DiagnosticEvent != nil &&
					event.DiagnosticEvent.Severity == "error" &&
					strings.Contains(event.DiagnosticEvent.Message, "exiting with error") {
					foundError = true
					break
				}
			}
			assert.True(t, foundError, "expected to find component provider error diagnostic")
		},
	})
}
