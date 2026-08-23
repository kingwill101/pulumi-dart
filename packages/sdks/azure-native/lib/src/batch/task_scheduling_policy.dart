// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'compute_node_fill_type.dart';

/// Specifies how tasks should be distributed across compute nodes.
class TaskSchedulingPolicy {
  /// How tasks should be distributed across compute nodes.
  final pulumi.Input<ComputeNodeFillType> nodeFillType;

  /// Creates a new [TaskSchedulingPolicy].
  /// [nodeFillType] How tasks should be distributed across compute nodes.
  const TaskSchedulingPolicy({
    required this.nodeFillType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeFillType': pulumi.Input.mapInputValue<ComputeNodeFillType, String>(nodeFillType, (value) => value.wireValue),
    };
  }

  factory TaskSchedulingPolicy.fromMap(Map<String, dynamic> map) {
    return TaskSchedulingPolicy(
      nodeFillType: pulumi.Input.fromValue(ComputeNodeFillType.fromValue(map['nodeFillType']! as String)),
    );
  }
}
