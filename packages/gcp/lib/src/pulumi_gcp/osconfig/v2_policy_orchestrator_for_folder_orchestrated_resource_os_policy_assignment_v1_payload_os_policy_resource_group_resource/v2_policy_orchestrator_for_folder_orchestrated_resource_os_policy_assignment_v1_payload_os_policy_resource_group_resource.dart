// ignore_for_file: unused_element, unnecessary_cast

import '../v2_policy_orchestrator_for_folder_orchestrated_resource_os_policy_assignment_v1_payload_os_policy_resource_group_resource_exec/v2_policy_orchestrator_for_folder_orchestrated_resource_os_policy_assignment_v1_payload_os_policy_resource_group_resource_exec.dart';
import '../v2_policy_orchestrator_for_folder_orchestrated_resource_os_policy_assignment_v1_payload_os_policy_resource_group_resource_file/v2_policy_orchestrator_for_folder_orchestrated_resource_os_policy_assignment_v1_payload_os_policy_resource_group_resource_file.dart';
import '../v2_policy_orchestrator_for_folder_orchestrated_resource_os_policy_assignment_v1_payload_os_policy_resource_group_resource_pkg/v2_policy_orchestrator_for_folder_orchestrated_resource_os_policy_assignment_v1_payload_os_policy_resource_group_resource_pkg.dart';
import '../v2_policy_orchestrator_for_folder_orchestrated_resource_os_policy_assignment_v1_payload_os_policy_resource_group_resource_repository/v2_policy_orchestrator_for_folder_orchestrated_resource_os_policy_assignment_v1_payload_os_policy_resource_group_resource_repository.dart';

class V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResource {
  /// A resource that allows executing scripts on the VM.
  /// The `ExecResource` has 2 stages: `validate` and `enforce` and both stages
  /// accept a script as an argument to execute.
  /// When the `ExecResource` is applied by the agent, it first executes the
  /// script in the `validate` stage. The `validate` stage can signal that the
  /// `ExecResource` is already in the desired state by returning an exit code
  /// of `100`. If the `ExecResource` is not in the desired state, it should
  /// return an exit code of `101`. Any other exit code returned by this stage
  /// is considered an error.
  /// If the `ExecResource` is not in the desired state based on the exit code
  /// from the `validate` stage, the agent proceeds to execute the script from
  /// the `enforce` stage. If the `ExecResource` is already in the desired
  /// state, the `enforce` stage will not be run.
  /// Similar to `validate` stage, the `enforce` stage should return an exit
  /// code of `100` to indicate that the resource in now in its desired state.
  /// Any other exit code is considered an error.
  /// NOTE: An exit code of `100` was chosen over `0` (and `101` vs `1`) to
  /// have an explicit indicator of `in desired state`, `not in desired state`
  /// and errors. Because, for example, Powershell will always return an exit
  /// code of `0` unless an `exit` statement is provided in the script. So, for
  /// reasons of consistency and being explicit, exit codes `100` and `101`
  /// were chosen.
  /// Structure is documented below.
  final V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceExec?
      exec;

  /// A resource that manages the state of a file.
  /// Structure is documented below.
  final V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceFile?
      file;

  /// The id of the resource with the following restrictions:
  /// * Must contain only lowercase letters, numbers, and hyphens.
  /// * Must start with a letter.
  /// * Must be between 1-63 characters.
  /// * Must end with a number or a letter.
  /// * Must be unique within the OS policy.
  final String id;

  /// A resource that manages a system package.
  /// Structure is documented below.
  final V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkg?
      pkg;

  /// A resource that manages a package repository.
  /// Structure is documented below.
  final V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceRepository?
      repository;

  V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResource({
    this.exec,
    this.file,
    required this.id,
    this.pkg,
    this.repository,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final execValue = exec;
    if (execValue != null) {
      map['exec'] = execValue.toMap();
    }
    final fileValue = file;
    if (fileValue != null) {
      map['file'] = fileValue.toMap();
    }
    map['id'] = id;
    final pkgValue = pkg;
    if (pkgValue != null) {
      map['pkg'] = pkgValue.toMap();
    }
    final repositoryValue = repository;
    if (repositoryValue != null) {
      map['repository'] = repositoryValue.toMap();
    }
    return map;
  }

  factory V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResource.fromMap(
      Map<String, dynamic> map) {
    return V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResource(
      exec: map['exec'] == null
          ? null
          : V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceExec
              .fromMap((map['exec'] as Map).cast<String, dynamic>()),
      file: map['file'] == null
          ? null
          : V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceFile
              .fromMap((map['file'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      pkg: map['pkg'] == null
          ? null
          : V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkg
              .fromMap((map['pkg'] as Map).cast<String, dynamic>()),
      repository: map['repository'] == null
          ? null
          : V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceRepository
              .fromMap((map['repository'] as Map).cast<String, dynamic>()),
    );
  }
}
