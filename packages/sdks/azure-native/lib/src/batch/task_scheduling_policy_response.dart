// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies how tasks should be distributed across compute nodes.
class TaskSchedulingPolicyResponse {
  /// How tasks should be distributed across compute nodes.
  final pulumi.Input<String> nodeFillType;

  /// Creates a new [TaskSchedulingPolicyResponse].
  /// [nodeFillType] How tasks should be distributed across compute nodes.
  TaskSchedulingPolicyResponse({
    pulumi.Input<String>? nodeFillType,
  }) : nodeFillType = nodeFillType ?? pulumi.Input.fromValue('Spread');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeFillType': nodeFillType,
    };
  }

  factory TaskSchedulingPolicyResponse.fromMap(Map<String, dynamic> map) {
    return TaskSchedulingPolicyResponse(
      nodeFillType: pulumi.Input.fromValue(map['nodeFillType'] as String),
    );
  }
}
