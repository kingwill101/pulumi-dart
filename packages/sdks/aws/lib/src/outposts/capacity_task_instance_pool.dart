// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CapacityTaskInstancePool {
  /// Number of instances of `instanceType` that should be present after the task completes. Must be at least `1`. Changing this value forces a new resource.
  final pulumi.Input<int> count;
  /// Instance type for this pool entry. Must be an instance type supported by the target Outpost. Changing this value forces a new resource.
  final pulumi.Input<String> instanceType;

  /// Creates a new [CapacityTaskInstancePool].
  /// [count] Number of instances of `instanceType` that should be present after the task completes. Must be at least `1`. Changing this value forces a new resource.
  /// [instanceType] Instance type for this pool entry. Must be an instance type supported by the target Outpost. Changing this value forces a new resource.
  const CapacityTaskInstancePool({
    required this.count,
    required this.instanceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'instanceType': instanceType,
    };
  }

  factory CapacityTaskInstancePool.fromMap(Map<String, dynamic> map) {
    return CapacityTaskInstancePool(
      count: pulumi.Input.fromValue((map['count'] as num).toInt()),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
    );
  }
}
