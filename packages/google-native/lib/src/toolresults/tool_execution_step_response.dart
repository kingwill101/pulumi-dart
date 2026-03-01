// ignore_for_file: unused_element, unnecessary_cast

import 'tool_execution_response.dart';

/// Generic tool step to be used for binaries we do not explicitly support. For example: running cp to copy artifacts from one location to another.
class ToolExecutionStepResponse {
  /// A Tool execution. - In response: present if set by create/update request - In create/update request: optional
  final ToolExecutionResponse toolExecution;

  /// Creates a new [ToolExecutionStepResponse].
  /// [toolExecution] A Tool execution. - In response: present if set by create/update request - In create/update request: optional
  ToolExecutionStepResponse({required this.toolExecution});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'toolExecution': toolExecution.toMap()};
  }

  factory ToolExecutionStepResponse.fromMap(Map<String, dynamic> map) {
    return ToolExecutionStepResponse(
      toolExecution: ToolExecutionResponse.fromMap(
        (map['toolExecution'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
