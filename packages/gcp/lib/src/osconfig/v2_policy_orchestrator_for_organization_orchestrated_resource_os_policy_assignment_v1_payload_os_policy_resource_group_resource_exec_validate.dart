// ignore_for_file: unused_element, unnecessary_cast

import 'v2_policy_orchestrator_for_organization_orchestrated_resource_os_policy_assignment_v1_payload_os_policy_resource_group_resource_exec_validate_file.dart';

class V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceExecValidate {
  /// Optional arguments to pass to the source during execution.
  final List<String>? args;

  /// A remote or local file.
  /// Structure is documented below.
  final V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceExecValidateFile?
  file;

  /// Required. The script interpreter to use.
  /// Possible values:
  /// INTERPRETER_UNSPECIFIED
  /// NONE
  /// SHELL
  /// POWERSHELL
  final String interpreter;

  /// Only recorded for enforce Exec.
  /// Path to an output file (that is created by this Exec) whose
  /// content will be recorded in OSPolicyResourceCompliance after a
  /// successful run. Absence or failure to read this file will result in
  /// this ExecResource being non-compliant. Output file size is limited to
  /// 500K bytes.
  final String? outputFilePath;

  /// An inline script.
  /// The size of the script is limited to 32KiB.
  final String? script;

  /// Creates a new [V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceExecValidate].
  /// [args] Optional arguments to pass to the source during execution.
  /// [file] A remote or local file.
  /// [interpreter] Required. The script interpreter to use.
  /// [outputFilePath] Only recorded for enforce Exec.
  /// [script] An inline script.
  V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceExecValidate({
    this.args,
    this.file,
    required this.interpreter,
    this.outputFilePath,
    this.script,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': ?args,
      'file': ?file == null ? null : file!.toMap(),
      'interpreter': interpreter,
      'outputFilePath': ?outputFilePath,
      'script': ?script,
    };
  }

  factory V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceExecValidate.fromMap(
    Map<String, dynamic> map,
  ) {
    return V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceExecValidate(
      args: map['args'] == null ? null : (map['args'] as List).cast<String>(),
      file: map['file'] == null
          ? null
          : V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceExecValidateFile.fromMap(
              (map['file'] as Map).cast<String, dynamic>(),
            ),
      interpreter: map['interpreter'] as String,
      outputFilePath: map['outputFilePath'] == null
          ? null
          : map['outputFilePath'] as String,
      script: map['script'] == null ? null : map['script'] as String,
    );
  }
}
