// ignore_for_file: unused_element, unnecessary_cast

/// Reference to an Execution. Use /Executions.GetExecution with the given name to get full execution including the latest status.
class ExecutionReferenceResponse {
  /// Optional. Completion timestamp of the execution.
  final String completionTimestamp;

  /// Optional. Creation timestamp of the execution.
  final String creationTimestamp;

  /// Optional. Name of the execution.
  final String name;

  ExecutionReferenceResponse({
    required this.completionTimestamp,
    required this.creationTimestamp,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['completionTimestamp'] = completionTimestamp;
    map['creationTimestamp'] = creationTimestamp;
    map['name'] = name;
    return map;
  }

  factory ExecutionReferenceResponse.fromMap(Map<String, dynamic> map) {
    return ExecutionReferenceResponse(
      completionTimestamp: map['completionTimestamp'] as String,
      creationTimestamp: map['creationTimestamp'] as String,
      name: map['name'] as String,
    );
  }
}
