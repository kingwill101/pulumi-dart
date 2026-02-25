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
	"path/filepath"
	"testing"

	"github.com/pulumi/pulumi/pkg/v3/testing/integration"
	"github.com/pulumi/pulumi/sdk/v3/go/common/resource"
	"github.com/stretchr/testify/assert"
)

// TestEmptyDart simply tests that we can run an empty dart project.
func TestEmptyDart(t *testing.T) {
	testDartProgram(t, &integration.ProgramTestOptions{
		Dir:   "empty",
		Quick: true,
	})
}

// Test remote component construction in Dart.
func TestConstructDart(t *testing.T) {
	testDir := "construct_component"
	componentDir := "testcomponent-go"
	expectedResourceCount := 8

	localProviders := []integration.LocalDependency{
		{Package: "testprovider", Path: testProviderPath()},
		{Package: "testcomponent", Path: filepath.Join(testDir, componentDir)},
	}

	testDartProgram(t, optsForConstructDart(expectedResourceCount, localProviders))
}

func optsForConstructDart(
	expectedResourceCount int,
	localProviders []integration.LocalDependency,
	env ...string,
) *integration.ProgramTestOptions {
	return &integration.ProgramTestOptions{
		Env:            env,
		Dir:            filepath.Join("construct_component", "dotnet"),
		LocalProviders: localProviders,
		Secrets: map[string]string{
			"secret": "this super secret is encrypted",
		},
		Quick: true,
		ExtraRuntimeValidation: func(t *testing.T, stackInfo integration.RuntimeValidationStackInfo) {
			assert.NotNil(t, stackInfo.Deployment)
			if assert.Equal(t, expectedResourceCount, len(stackInfo.Deployment.Resources)) {
				stackRes := stackInfo.Deployment.Resources[0]
				assert.NotNil(t, stackRes)
				assert.Equal(t, resource.RootStackType, stackRes.Type)
				assert.Equal(t, "", string(stackRes.Parent))

				// Check that dependencies flow correctly between the originating program and the remote component plugin.
				urns := make(map[string]resource.URN)
				for _, res := range stackInfo.Deployment.Resources[1:] {
					assert.NotNil(t, res)

					urns[string(res.URN.Name())] = res.URN
					switch res.URN.Name() {
					case "child-a":
						for _, deps := range res.PropertyDependencies {
							assert.Empty(t, deps)
						}
					case "child-b":
						expected := []resource.URN{urns["a"]}
						assert.ElementsMatch(t, expected, res.Dependencies)
						assert.ElementsMatch(t, expected, res.PropertyDependencies["echo"])
					case "child-c":
						expected := []resource.URN{urns["a"], urns["child-a"]}
						assert.ElementsMatch(t, expected, res.Dependencies)
						assert.ElementsMatch(t, expected, res.PropertyDependencies["echo"])
					case "a", "b", "c":
						secretPropValue, ok := res.Outputs["secret"].(map[string]interface{})
						assert.Truef(t, ok, "secret output was not serialized as a secret")
						assert.Equal(t, resource.SecretSig, secretPropValue[resource.SigKey].(string))
					}
				}
			}
		},
	}
}
