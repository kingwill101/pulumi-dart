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

  /// Creates a new [GetServiceTaskSet].
  /// [arn] ARN of the task set
  /// [createdAt] Time when task set was created (RFC3339 format)
  /// [id] Task set ID
  /// [pendingCount] Number of pending tasks
  /// [runningCount] Number of running tasks
  /// [stabilityStatus] Stability status of the task set
  /// [status] Task set status
  /// [taskDefinition] Task definition ARN
  /// [updatedAt] Time when task set was last updated (RFC3339 format)
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
    return <String, dynamic>{
      'arn': arn,
      'createdAt': createdAt,
      'id': id,
      'pendingCount': pendingCount,
      'runningCount': runningCount,
      'stabilityStatus': stabilityStatus,
      'status': status,
      'taskDefinition': taskDefinition,
      'updatedAt': updatedAt,
    };
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

