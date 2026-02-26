// ignore_for_file: unused_element, unnecessary_cast

class GetServiceTaskSet {
  /// ARN of the task set
  final String arn;

  /// Time when task set was created (RFC3339 format)
  final String createdAt;

  /// Task set ID
  final String id;

  /// Number of pending tasks
  final int pendingCount;

  /// Number of running tasks
  final int runningCount;

  /// Stability status of the task set
  final String stabilityStatus;

  /// Task set status
  final String status;

  /// Task definition ARN
  final String taskDefinition;

  /// Time when task set was last updated (RFC3339 format)
  final String updatedAt;

  GetServiceTaskSet({
    required this.arn,
    required this.createdAt,
    required this.id,
    required this.pendingCount,
    required this.runningCount,
    required this.stabilityStatus,
    required this.status,
    required this.taskDefinition,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['createdAt'] = createdAt;
    map['id'] = id;
    map['pendingCount'] = pendingCount;
    map['runningCount'] = runningCount;
    map['stabilityStatus'] = stabilityStatus;
    map['status'] = status;
    map['taskDefinition'] = taskDefinition;
    map['updatedAt'] = updatedAt;
    return map;
  }

  factory GetServiceTaskSet.fromMap(Map<String, dynamic> map) {
    return GetServiceTaskSet(
      arn: map['arn'] as String,
      createdAt: map['createdAt'] as String,
      id: map['id'] as String,
      pendingCount: map['pendingCount'] as int,
      runningCount: map['runningCount'] as int,
      stabilityStatus: map['stabilityStatus'] as String,
      status: map['status'] as String,
      taskDefinition: map['taskDefinition'] as String,
      updatedAt: map['updatedAt'] as String,
    );
  }
}
