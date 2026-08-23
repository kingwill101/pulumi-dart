// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDedicatedHostAvailableCapacityAvailableInstanceCapacity {
  /// The number of instances that can be launched onto the Dedicated Host based on the host's available capacity.
  final pulumi.Input<int> availableCapacity;
  /// The instance type of the running instance.
  final pulumi.Input<String> instanceType;
  /// The total number of instances that can be launched onto the Dedicated Host if there are no instances running on it.
  final pulumi.Input<int> totalCapacity;

  /// Creates a new [GetDedicatedHostAvailableCapacityAvailableInstanceCapacity].
  /// [availableCapacity] The number of instances that can be launched onto the Dedicated Host based on the host's available capacity.
  /// [instanceType] The instance type of the running instance.
  /// [totalCapacity] The total number of instances that can be launched onto the Dedicated Host if there are no instances running on it.
  const GetDedicatedHostAvailableCapacityAvailableInstanceCapacity({
    required this.availableCapacity,
    required this.instanceType,
    required this.totalCapacity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availableCapacity': availableCapacity,
      'instanceType': instanceType,
      'totalCapacity': totalCapacity,
    };
  }

  factory GetDedicatedHostAvailableCapacityAvailableInstanceCapacity.fromMap(Map<String, dynamic> map) {
    return GetDedicatedHostAvailableCapacityAvailableInstanceCapacity(
      availableCapacity: pulumi.Input.fromValue(map['availableCapacity'] as int),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      totalCapacity: pulumi.Input.fromValue(map['totalCapacity'] as int),
    );
  }
}
