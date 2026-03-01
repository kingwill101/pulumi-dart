// ignore_for_file: unused_element, unnecessary_cast

import 'compute_node_fill_type.dart';

/// Specifies how tasks should be distributed across compute nodes.
class TaskSchedulingPolicy {
  /// How tasks should be distributed across compute nodes.
  final ComputeNodeFillType nodeFillType;

  /// Creates a new [TaskSchedulingPolicy].
  /// [nodeFillType] How tasks should be distributed across compute nodes.
  TaskSchedulingPolicy({
    required this.nodeFillType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeFillType': nodeFillType.value,
    };
  }

  factory TaskSchedulingPolicy.fromMap(Map<String, dynamic> map) {
    return TaskSchedulingPolicy(
      nodeFillType: ComputeNodeFillType.fromValue(map['nodeFillType'] as String),
    );
  }
}

