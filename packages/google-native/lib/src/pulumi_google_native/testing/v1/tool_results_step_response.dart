// ignore_for_file: unused_element, unnecessary_cast

/// Represents a tool results step resource. This has the results of a TestExecution.
class ToolResultsStepResponse {
  /// A tool results execution ID.
  final String executionId;

  /// A tool results history ID.
  final String historyId;

  /// The cloud project that owns the tool results step.
  final String project;

  /// A tool results step ID.
  final String stepId;

  ToolResultsStepResponse({
    required this.executionId,
    required this.historyId,
    required this.project,
    required this.stepId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['executionId'] = executionId;
    map['historyId'] = historyId;
    map['project'] = project;
    map['stepId'] = stepId;
    return map;
  }

  factory ToolResultsStepResponse.fromMap(Map<String, dynamic> map) {
    return ToolResultsStepResponse(
      executionId: map['executionId'] as String,
      historyId: map['historyId'] as String,
      project: map['project'] as String,
      stepId: map['stepId'] as String,
    );
  }
}
