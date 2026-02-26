// ignore_for_file: unused_element, unnecessary_cast

import '../v2_policy_orchestrator_for_organization_orchestrated_resource_os_policy_assignment_v1_payload_os_policy_resource_group_resource_exec/v2_policy_orchestrator_for_organization_orchestrated_resource_os_policy_assignment_v1_payload_os_policy_resource_group_resource_exec.dart';
import '../v2_policy_orchestrator_for_organization_orchestrated_resource_os_policy_assignment_v1_payload_os_policy_resource_group_resource_file/v2_policy_orchestrator_for_organization_orchestrated_resource_os_policy_assignment_v1_payload_os_policy_resource_group_resource_file.dart';
import '../v2_policy_orchestrator_for_organization_orchestrated_resource_os_policy_assignment_v1_payload_os_policy_resource_group_resource_pkg/v2_policy_orchestrator_for_organization_orchestrated_resource_os_policy_assignment_v1_payload_os_policy_resource_group_resource_pkg.dart';
import '../v2_policy_orchestrator_for_organization_orchestrated_resource_os_policy_assignment_v1_payload_os_policy_resource_group_resource_repository/v2_policy_orchestrator_for_organization_orchestrated_resource_os_policy_assignment_v1_payload_os_policy_resource_group_resource_repository.dart';

class V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResource {
  /// A resource that allows executing scripts on the VM.
  /// The `ExecResource` has 2 stages: <span pulumi-lang-nodejs="`validate`" pulumi-lang-dotnet="`Validate`" pulumi-lang-go="`validate`" pulumi-lang-python="`validate`" pulumi-lang-yaml="`validate`" pulumi-lang-java="`validate`">`validate`</span> and <span pulumi-lang-nodejs="`enforce`" pulumi-lang-dotnet="`Enforce`" pulumi-lang-go="`enforce`" pulumi-lang-python="`enforce`" pulumi-lang-yaml="`enforce`" pulumi-lang-java="`enforce`">`enforce`</span> and both stages
  /// accept a script as an argument to execute.
  /// When the `ExecResource` is applied by the agent, it first executes the
  /// script in the <span pulumi-lang-nodejs="`validate`" pulumi-lang-dotnet="`Validate`" pulumi-lang-go="`validate`" pulumi-lang-python="`validate`" pulumi-lang-yaml="`validate`" pulumi-lang-java="`validate`">`validate`</span> stage. The <span pulumi-lang-nodejs="`validate`" pulumi-lang-dotnet="`Validate`" pulumi-lang-go="`validate`" pulumi-lang-python="`validate`" pulumi-lang-yaml="`validate`" pulumi-lang-java="`validate`">`validate`</span> stage can signal that the
  /// `ExecResource` is already in the desired state by returning an exit code
  /// of <span pulumi-lang-nodejs="`100`" pulumi-lang-dotnet="`100`" pulumi-lang-go="`100`" pulumi-lang-python="`100`" pulumi-lang-yaml="`100`" pulumi-lang-java="`100`">`100`</span>. If the `ExecResource` is not in the desired state, it should
  /// return an exit code of <span pulumi-lang-nodejs="`101`" pulumi-lang-dotnet="`101`" pulumi-lang-go="`101`" pulumi-lang-python="`101`" pulumi-lang-yaml="`101`" pulumi-lang-java="`101`">`101`</span>. Any other exit code returned by this stage
  /// is considered an error.
  /// If the `ExecResource` is not in the desired state based on the exit code
  /// from the <span pulumi-lang-nodejs="`validate`" pulumi-lang-dotnet="`Validate`" pulumi-lang-go="`validate`" pulumi-lang-python="`validate`" pulumi-lang-yaml="`validate`" pulumi-lang-java="`validate`">`validate`</span> stage, the agent proceeds to execute the script from
  /// the <span pulumi-lang-nodejs="`enforce`" pulumi-lang-dotnet="`Enforce`" pulumi-lang-go="`enforce`" pulumi-lang-python="`enforce`" pulumi-lang-yaml="`enforce`" pulumi-lang-java="`enforce`">`enforce`</span> stage. If the `ExecResource` is already in the desired
  /// state, the <span pulumi-lang-nodejs="`enforce`" pulumi-lang-dotnet="`Enforce`" pulumi-lang-go="`enforce`" pulumi-lang-python="`enforce`" pulumi-lang-yaml="`enforce`" pulumi-lang-java="`enforce`">`enforce`</span> stage will not be run.
  /// Similar to <span pulumi-lang-nodejs="`validate`" pulumi-lang-dotnet="`Validate`" pulumi-lang-go="`validate`" pulumi-lang-python="`validate`" pulumi-lang-yaml="`validate`" pulumi-lang-java="`validate`">`validate`</span> stage, the <span pulumi-lang-nodejs="`enforce`" pulumi-lang-dotnet="`Enforce`" pulumi-lang-go="`enforce`" pulumi-lang-python="`enforce`" pulumi-lang-yaml="`enforce`" pulumi-lang-java="`enforce`">`enforce`</span> stage should return an exit
  /// code of <span pulumi-lang-nodejs="`100`" pulumi-lang-dotnet="`100`" pulumi-lang-go="`100`" pulumi-lang-python="`100`" pulumi-lang-yaml="`100`" pulumi-lang-java="`100`">`100`</span> to indicate that the resource in now in its desired state.
  /// Any other exit code is considered an error.
  /// NOTE: An exit code of <span pulumi-lang-nodejs="`100`" pulumi-lang-dotnet="`100`" pulumi-lang-go="`100`" pulumi-lang-python="`100`" pulumi-lang-yaml="`100`" pulumi-lang-java="`100`">`100`</span> was chosen over <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span> (and <span pulumi-lang-nodejs="`101`" pulumi-lang-dotnet="`101`" pulumi-lang-go="`101`" pulumi-lang-python="`101`" pulumi-lang-yaml="`101`" pulumi-lang-java="`101`">`101`</span> vs <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span>) to
  /// have an explicit indicator of `in desired state`, `not in desired state`
  /// and errors. Because, for example, Powershell will always return an exit
  /// code of <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span> unless an <span pulumi-lang-nodejs="`exit`" pulumi-lang-dotnet="`Exit`" pulumi-lang-go="`exit`" pulumi-lang-python="`exit`" pulumi-lang-yaml="`exit`" pulumi-lang-java="`exit`">`exit`</span> statement is provided in the script. So, for
  /// reasons of consistency and being explicit, exit codes <span pulumi-lang-nodejs="`100`" pulumi-lang-dotnet="`100`" pulumi-lang-go="`100`" pulumi-lang-python="`100`" pulumi-lang-yaml="`100`" pulumi-lang-java="`100`">`100`</span> and <span pulumi-lang-nodejs="`101`" pulumi-lang-dotnet="`101`" pulumi-lang-go="`101`" pulumi-lang-python="`101`" pulumi-lang-yaml="`101`" pulumi-lang-java="`101`">`101`</span>
  /// were chosen.
  /// Structure is documented below.
  final V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceExec?
      exec;

  /// A resource that manages the state of a file.
  /// Structure is documented below.
  final V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceFile?
      file;

  /// Required. The id of the resource with the following restrictions:
  /// * Must contain only lowercase letters, numbers, and hyphens.
  /// * Must start with a letter.
  /// * Must be between 1-63 characters.
  /// * Must end with a number or a letter.
  /// * Must be unique within the OS policy.
  final String id;

  /// A resource that manages a system package.
  /// Structure is documented below.
  final V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkg?
      pkg;

  /// A resource that manages a package repository.
  /// Structure is documented below.
  final V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceRepository?
      repository;

  V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResource({
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

  factory V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResource.fromMap(
      Map<String, dynamic> map) {
    return V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResource(
      exec: map['exec'] == null
          ? null
          : V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceExec
              .fromMap((map['exec'] as Map).cast<String, dynamic>()),
      file: map['file'] == null
          ? null
          : V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceFile
              .fromMap((map['file'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      pkg: map['pkg'] == null
          ? null
          : V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkg
              .fromMap((map['pkg'] as Map).cast<String, dynamic>()),
      repository: map['repository'] == null
          ? null
          : V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceRepository
              .fromMap((map['repository'] as Map).cast<String, dynamic>()),
    );
  }
}
