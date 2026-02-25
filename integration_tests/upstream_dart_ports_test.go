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
	"path/filepath"
	"testing"

	"github.com/pulumi/pulumi/pkg/v3/testing/integration"
	"github.com/pulumi/pulumi/sdk/v3/go/common/apitype"
	"github.com/pulumi/pulumi/sdk/v3/go/common/resource"
	"github.com/pulumi/pulumi/sdk/v3/go/common/tokens"
	"github.com/stretchr/testify/require"
)

func TestDartErrorHooks(t *testing.T) {
	goTestproviderPath, err := pulumiSubmodulePath("tests", "testprovider")
	require.NoError(t, err)

	testDartProgram(t, &integration.ProgramTestOptions{
		LocalProviders: []integration.LocalDependency{
			{
				Package: "testprovider",
				Path:    goTestproviderPath,
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
