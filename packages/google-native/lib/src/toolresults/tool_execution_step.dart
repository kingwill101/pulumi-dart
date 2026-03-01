// ignore_for_file: unused_element, unnecessary_cast

import 'tool_execution.dart';

/// Generic tool step to be used for binaries we do not explicitly support. For example: running cp to copy artifacts from one location to another.
class ToolExecutionStep {
  /// A Tool execution. - In response: present if set by create/update request - In create/update request: optional
  final ToolExecution? toolExecution;

  /// Creates a new [ToolExecutionStep].
  /// [toolExecution] A Tool execution. - In response: present if set by create/update request - In create/update request: optional
  ToolExecutionStep({this.toolExecution});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'toolExecution': ?toolExecution == null ? null : toolExecution!.toMap(),
    };
  }

  factory ToolExecutionStep.fromMap(Map<String, dynamic> map) {
    return ToolExecutionStep(
      toolExecution: map['toolExecution'] == null
          ? null
          : ToolExecution.fromMap(
              (map['toolExecution'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
