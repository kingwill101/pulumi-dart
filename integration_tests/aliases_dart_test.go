// Copyright 2016-2020, Pulumi Corporation.
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
)

func aliasesTestOptionsDart(dir string) *integration.ProgramTestOptions {
	return &integration.ProgramTestOptions{
		DebugLogLevel: 9,
		Dir:           filepath.Join("aliases", dir, "step1"),
		Quick:         true,
		EditDirs: []integration.EditDir{
			{
				Dir:             filepath.Join("aliases", dir, "step2"),
				Additive:        true,
				ExpectNoChanges: true,
			},
		},
	}
}

func TestDartAliasesRename(t *testing.T) {
	testDartProgram(t, aliasesTestOptionsDart("rename"))
}

func TestDartAliasesAdoptIntoComponent(t *testing.T) {
	testDartProgram(t, aliasesTestOptionsDart("adopt_into_component"))
}

func TestDartAliasesRenameComponentAndChild(t *testing.T) {
	testDartProgram(t, aliasesTestOptionsDart("rename_component_and_child"))
}

func TestDartAliasesRetypeComponent(t *testing.T) {
	testDartProgram(t, aliasesTestOptionsDart("retype_component"))
}

func TestDartAliasesRenameComponent(t *testing.T) {
	testDartProgram(t, aliasesTestOptionsDart("rename_component"))
}

func TestDartAliasesRetypeParents(t *testing.T) {
	testDartProgram(t, aliasesTestOptionsDart("retype_parents"))
}
