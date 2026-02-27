// ignore_for_file: unused_element, unnecessary_cast

import 'ospolicy_resource_exec_resource_exec_interpreter_osconfig_v1alpha.dart';
import 'ospolicy_resource_file_osconfig_v1alpha.dart';

/// A file or script to execute.
class OSPolicyResourceExecResourceExecOsconfigV1alpha {
  /// Optional arguments to pass to the source during execution.
  final List<String>? args;

  /// A remote or local file.
  final OSPolicyResourceFileOsconfigV1alpha? file;

  /// The script interpreter to use.
  final OSPolicyResourceExecResourceExecInterpreterOsconfigV1alpha interpreter;

  /// Only recorded for enforce Exec. Path to an output file (that is created by this Exec) whose content will be recorded in OSPolicyResourceCompliance after a successful run. Absence or failure to read this file will result in this ExecResource being non-compliant. Output file size is limited to 100K bytes.
  final String? outputFilePath;

  /// An inline script. The size of the script is limited to 32KiB.
  final String? script;

  OSPolicyResourceExecResourceExecOsconfigV1alpha({
    this.args,
    this.file,
    required this.interpreter,
    this.outputFilePath,
    this.script,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final argsValue = args;
    if (argsValue != null) {
      map['args'] = argsValue;
    }
    final fileValue = file;
    if (fileValue != null) {
      map['file'] = fileValue.toMap();
    }
    map['interpreter'] = interpreter.value;
    final outputFilePathValue = outputFilePath;
    if (outputFilePathValue != null) {
      map['outputFilePath'] = outputFilePathValue;
    }
    final scriptValue = script;
    if (scriptValue != null) {
      map['script'] = scriptValue;
    }
    return map;
  }

  factory OSPolicyResourceExecResourceExecOsconfigV1alpha.fromMap(
      Map<String, dynamic> map) {
    return OSPolicyResourceExecResourceExecOsconfigV1alpha(
      args: map['args'] == null ? null : (map['args'] as List).cast<String>(),
      file: map['file'] == null
          ? null
          : OSPolicyResourceFileOsconfigV1alpha.fromMap(
              (map['file'] as Map).cast<String, dynamic>()),
      interpreter:
          OSPolicyResourceExecResourceExecInterpreterOsconfigV1alpha.fromValue(
              map['interpreter'] as String),
      outputFilePath: map['outputFilePath'] == null
          ? null
          : map['outputFilePath'] as String,
      script: map['script'] == null ? null : map['script'] as String,
    );
  }
}
