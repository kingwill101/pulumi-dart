// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_reference.dart';
import 'tool_exit_code.dart';
import 'tool_output_reference.dart';

/// An execution of an arbitrary tool. It could be a test runner or a tool copying artifacts or deploying code.
class ToolExecution {
  /// The full tokenized command line including the program name (equivalent to argv in a C program). - In response: present if set by create request - In create request: optional - In update request: never set
  final List<String>? commandLineArguments;

  /// Tool execution exit code. This field will be set once the tool has exited. - In response: present if set by create/update request - In create request: optional - In update request: optional, a FAILED_PRECONDITION error will be returned if an exit_code is already set.
  final ToolExitCode? exitCode;

  /// References to any plain text logs output the tool execution. This field can be set before the tool has exited in order to be able to have access to a live view of the logs while the tool is running. The maximum allowed number of tool logs per step is 1000. - In response: present if set by create/update request - In create request: optional - In update request: optional, any value provided will be appended to the existing list
  final List<FileReference>? toolLogs;

  /// References to opaque files of any format output by the tool execution. The maximum allowed number of tool outputs per step is 1000. - In response: present if set by create/update request - In create request: optional - In update request: optional, any value provided will be appended to the existing list
  final List<ToolOutputReference>? toolOutputs;

  /// Creates a new [ToolExecution].
  /// [commandLineArguments] The full tokenized command line including the program name (equivalent to argv in a C program). - In response: present if set by create request - In create request: optional - In update request: never set
  /// [exitCode] Tool execution exit code. This field will be set once the tool has exited. - In response: present if set by create/update request - In create request: optional - In update request: optional, a FAILED_PRECONDITION error will be returned if an exit_code is already set.
  /// [toolLogs] References to any plain text logs output the tool execution. This field can be set before the tool has exited in order to be able to have access to a live view of the logs while the tool is running. The maximum allowed number of tool logs per step is 1000. - In response: present if set by create/update request - In create request: optional - In update request: optional, any value provided will be appended to the existing list
  /// [toolOutputs] References to opaque files of any format output by the tool execution. The maximum allowed number of tool outputs per step is 1000. - In response: present if set by create/update request - In create request: optional - In update request: optional, any value provided will be appended to the existing list
  ToolExecution({
    this.commandLineArguments,
    this.exitCode,
    this.toolLogs,
    this.toolOutputs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commandLineArguments': ?commandLineArguments,
      'exitCode': ?exitCode == null ? null : exitCode!.toMap(),
      'toolLogs': ?toolLogs == null
          ? null
          : pulumi.Input.encodeList<FileReference, Map<String, dynamic>>(
              toolLogs!,
              (value) => value.toMap(),
            ),
      'toolOutputs': ?toolOutputs == null
          ? null
          : pulumi.Input.encodeList<ToolOutputReference, Map<String, dynamic>>(
              toolOutputs!,
              (value) => value.toMap(),
            ),
    };
  }

  factory ToolExecution.fromMap(Map<String, dynamic> map) {
    return ToolExecution(
      commandLineArguments: map['commandLineArguments'] == null
          ? null
          : (map['commandLineArguments'] as List).cast<String>(),
      exitCode: map['exitCode'] == null
          ? null
          : ToolExitCode.fromMap(
              (map['exitCode'] as Map).cast<String, dynamic>(),
            ),
      toolLogs: map['toolLogs'] == null
          ? null
          : pulumi.Input.decodeList<FileReference>(
              map['toolLogs'],
              (value) =>
                  FileReference.fromMap((value as Map).cast<String, dynamic>()),
            ),
      toolOutputs: map['toolOutputs'] == null
          ? null
          : pulumi.Input.decodeList<ToolOutputReference>(
              map['toolOutputs'],
              (value) => ToolOutputReference.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
    );
  }
}
