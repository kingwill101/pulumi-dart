// ignore_for_file: unused_element, unnecessary_cast

import 'ospolicy_resource_file_response2.dart';

/// A file or script to execute.
class OSPolicyResourceExecResourceExecResponse2 {
  /// Optional arguments to pass to the source during execution.
  final List<String> args;

  /// A remote or local file.
  final OSPolicyResourceFileResponse2 file;

  /// The script interpreter to use.
  final String interpreter;

  /// Only recorded for enforce Exec. Path to an output file (that is created by this Exec) whose content will be recorded in OSPolicyResourceCompliance after a successful run. Absence or failure to read this file will result in this ExecResource being non-compliant. Output file size is limited to 100K bytes.
  final String outputFilePath;

  /// An inline script. The size of the script is limited to 32KiB.
  final String script;

  OSPolicyResourceExecResourceExecResponse2({
    required this.args,
    required this.file,
    required this.interpreter,
    required this.outputFilePath,
    required this.script,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['args'] = args;
    map['file'] = file.toMap();
    map['interpreter'] = interpreter;
    map['outputFilePath'] = outputFilePath;
    map['script'] = script;
    return map;
  }

  factory OSPolicyResourceExecResourceExecResponse2.fromMap(
      Map<String, dynamic> map) {
    return OSPolicyResourceExecResourceExecResponse2(
      args: (map['args'] as List).cast<String>(),
      file: OSPolicyResourceFileResponse2.fromMap(
          (map['file'] as Map).cast<String, dynamic>()),
      interpreter: map['interpreter'] as String,
      outputFilePath: map['outputFilePath'] as String,
      script: map['script'] as String,
    );
  }
}
