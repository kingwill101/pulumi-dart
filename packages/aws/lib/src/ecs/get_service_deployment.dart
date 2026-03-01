// ignore_for_file: unused_element, unnecessary_cast

class GetServiceDeployment {
  /// Time when task set was created (RFC3339 format)
  final String createdAt;

  /// Desired number of tasks
  final int desiredCount;

  /// Task set ID
  final String id;

  /// Number of pending tasks
  final int pendingCount;

  /// Number of running tasks
  final int runningCount;

  /// Task set status
  final String status;

  /// Task definition ARN
  final String taskDefinition;

  /// Time when task set was last updated (RFC3339 format)
  final String updatedAt;

  /// Creates a new [GetServiceDeployment].
  /// [createdAt] Time when task set was created (RFC3339 format)
  /// [desiredCount] Desired number of tasks
  /// [id] Task set ID
  /// [pendingCount] Number of pending tasks
  /// [runningCount] Number of running tasks
  /// [status] Task set status
  /// [taskDefinition] Task definition ARN
  /// [updatedAt] Time when task set was last updated (RFC3339 format)
  GetServiceDeployment({
    required this.createdAt,
    required this.desiredCount,
    required this.id,
    required this.pendingCount,
    required this.runningCount,
    required this.status,
    required this.taskDefinition,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': createdAt,
      'desiredCount': desiredCount,
      'id': id,
      'pendingCount': pendingCount,
      'runningCount': runningCount,
      'status': status,
      'taskDefinition': taskDefinition,
      'updatedAt': updatedAt,
    };
  }

  factory GetServiceDeployment.fromMap(Map<String, dynamic> map) {
    return GetServiceDeployment(
      createdAt: map['createdAt'] as String,
      desiredCount: map['desiredCount'] as int,
      id: map['id'] as String,
      pendingCount: map['pendingCount'] as int,
      runningCount: map['runningCount'] as int,
      status: map['status'] as String,
      taskDefinition: map['taskDefinition'] as String,
      updatedAt: map['updatedAt'] as String,
    );
  }
}
