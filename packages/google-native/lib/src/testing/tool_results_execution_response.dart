// ignore_for_file: unused_element, unnecessary_cast

/// Represents a tool results execution resource. This has the results of a TestMatrix.
class ToolResultsExecutionResponse {
  /// A tool results execution ID.
  final String executionId;

  /// A tool results history ID.
  final String historyId;

  /// The cloud project that owns the tool results execution.
  final String project;

  /// Creates a new [ToolResultsExecutionResponse].
  /// [executionId] A tool results execution ID.
  /// [historyId] A tool results history ID.
  /// [project] The cloud project that owns the tool results execution.
  ToolResultsExecutionResponse({
    required this.executionId,
    required this.historyId,
    required this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['executionId'] = executionId;
    map['historyId'] = historyId;
    map['project'] = project;
    return map;
  }

  factory ToolResultsExecutionResponse.fromMap(Map<String, dynamic> map) {
    return ToolResultsExecutionResponse(
      executionId: map['executionId'] as String,
      historyId: map['historyId'] as String,
      project: map['project'] as String,
    );
  }
}
