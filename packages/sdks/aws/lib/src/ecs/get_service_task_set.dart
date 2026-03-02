// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceTaskSet {
  /// ARN of the task set
  final pulumi.Input<String> arn;
  /// Time when task set was created (RFC3339 format)
  final pulumi.Input<String> createdAt;
  /// Task set ID
  final pulumi.Input<String> id;
  /// Number of pending tasks
  final pulumi.Input<int> pendingCount;
  /// Number of running tasks
  final pulumi.Input<int> runningCount;
  /// Stability status of the task set
  final pulumi.Input<String> stabilityStatus;
  /// Task set status
  final pulumi.Input<String> status;
  /// Task definition ARN
  final pulumi.Input<String> taskDefinition;
  /// Time when task set was last updated (RFC3339 format)
  final pulumi.Input<String> updatedAt;

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
      arn: (map['arn'] as String).input(),
      createdAt: (map['createdAt'] as String).input(),
      id: (map['id'] as String).input(),
      pendingCount: (map['pendingCount'] as int).input(),
      runningCount: (map['runningCount'] as int).input(),
      stabilityStatus: (map['stabilityStatus'] as String).input(),
      status: (map['status'] as String).input(),
      taskDefinition: (map['taskDefinition'] as String).input(),
      updatedAt: (map['updatedAt'] as String).input(),
    );
  }
}

