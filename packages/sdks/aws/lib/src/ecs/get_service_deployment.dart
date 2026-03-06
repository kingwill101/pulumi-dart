// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceDeployment {
  /// Time when task set was created (RFC3339 format)
  final pulumi.Input<String> createdAt;
  /// Desired number of tasks
  final pulumi.Input<int> desiredCount;
  /// Task set ID
  final pulumi.Input<String> id;
  /// Number of pending tasks
  final pulumi.Input<int> pendingCount;
  /// Number of running tasks
  final pulumi.Input<int> runningCount;
  /// Task set status
  final pulumi.Input<String> status;
  /// Task definition ARN
  final pulumi.Input<String> taskDefinition;
  /// Time when task set was last updated (RFC3339 format)
  final pulumi.Input<String> updatedAt;

  /// Creates a new [GetServiceDeployment].
  /// [createdAt] Time when task set was created (RFC3339 format)
  /// [desiredCount] Desired number of tasks
  /// [id] Task set ID
  /// [pendingCount] Number of pending tasks
  /// [runningCount] Number of running tasks
  /// [status] Task set status
  /// [taskDefinition] Task definition ARN
  /// [updatedAt] Time when task set was last updated (RFC3339 format)
  const GetServiceDeployment({
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
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      desiredCount: pulumi.Input.fromValue(map['desiredCount'] as int),
      id: pulumi.Input.fromValue(map['id'] as String),
      pendingCount: pulumi.Input.fromValue(map['pendingCount'] as int),
      runningCount: pulumi.Input.fromValue(map['runningCount'] as int),
      status: pulumi.Input.fromValue(map['status'] as String),
      taskDefinition: pulumi.Input.fromValue(map['taskDefinition'] as String),
      updatedAt: pulumi.Input.fromValue(map['updatedAt'] as String),
    );
  }
}

