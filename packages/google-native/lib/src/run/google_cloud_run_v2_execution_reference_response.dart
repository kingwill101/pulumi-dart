// ignore_for_file: unused_element, unnecessary_cast

/// Reference to an Execution. Use /Executions.GetExecution with the given name to get full execution including the latest status.
class GoogleCloudRunV2ExecutionReferenceResponse {
  /// Creation timestamp of the execution.
  final String completionTime;

  /// Creation timestamp of the execution.
  final String createTime;

  /// Name of the execution.
  final String name;

  /// Creates a new [GoogleCloudRunV2ExecutionReferenceResponse].
  /// [completionTime] Creation timestamp of the execution.
  /// [createTime] Creation timestamp of the execution.
  /// [name] Name of the execution.
  GoogleCloudRunV2ExecutionReferenceResponse({
    required this.completionTime,
    required this.createTime,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'completionTime': completionTime,
      'createTime': createTime,
      'name': name,
    };
  }

  factory GoogleCloudRunV2ExecutionReferenceResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudRunV2ExecutionReferenceResponse(
      completionTime: map['completionTime'] as String,
      createTime: map['createTime'] as String,
      name: map['name'] as String,
    );
  }
}
