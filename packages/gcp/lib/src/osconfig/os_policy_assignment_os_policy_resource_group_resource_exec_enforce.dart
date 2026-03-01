// ignore_for_file: unused_element, unnecessary_cast

import 'os_policy_assignment_os_policy_resource_group_resource_exec_enforce_file.dart';

class OsPolicyAssignmentOsPolicyResourceGroupResourceExecEnforce {
  /// Optional arguments to pass to the source during
  /// execution.
  final List<String>? args;
  /// A remote or local file. Structure is
  /// documented below.
  final OsPolicyAssignmentOsPolicyResourceGroupResourceExecEnforceFile? file;
  /// The script interpreter to use. Possible values
  /// are: `INTERPRETER_UNSPECIFIED`, `NONE`, `SHELL`, `POWERSHELL`.
  final String interpreter;
  /// Only recorded for enforce Exec. Path to an
  /// output file (that is created by this Exec) whose content will be recorded in
  /// OSPolicyResourceCompliance after a successful run. Absence or failure to
  /// read this file will result in this ExecResource being non-compliant. Output
  /// file size is limited to 100K bytes.
  final String? outputFilePath;
  /// An inline script. The size of the script is limited to
  /// 1024 characters.
  final String? script;

  /// Creates a new [OsPolicyAssignmentOsPolicyResourceGroupResourceExecEnforce].
  /// [args] Optional arguments to pass to the source during
  /// [file] A remote or local file. Structure is
  /// [interpreter] The script interpreter to use. Possible values
  /// [outputFilePath] Only recorded for enforce Exec. Path to an
  /// [script] An inline script. The size of the script is limited to
  OsPolicyAssignmentOsPolicyResourceGroupResourceExecEnforce({
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

  factory OsPolicyAssignmentOsPolicyResourceGroupResourceExecEnforce.fromMap(Map<String, dynamic> map) {
    return OsPolicyAssignmentOsPolicyResourceGroupResourceExecEnforce(
      args: map['args'] == null ? null : (map['args'] as List).cast<String>(),
      file: map['file'] == null ? null : OsPolicyAssignmentOsPolicyResourceGroupResourceExecEnforceFile.fromMap((map['file'] as Map).cast<String, dynamic>()),
      interpreter: map['interpreter'] as String,
      outputFilePath: map['outputFilePath'] == null ? null : map['outputFilePath'] as String,
      script: map['script'] == null ? null : map['script'] as String,
    );
  }
}

