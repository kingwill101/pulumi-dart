// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LoadBalancerMinimumLoadBalancerCapacity {
  /// The number of capacity units.
  final pulumi.Input<int> capacityUnits;

  /// Creates a new [LoadBalancerMinimumLoadBalancerCapacity].
  /// [capacityUnits] The number of capacity units.
  const LoadBalancerMinimumLoadBalancerCapacity({
    required this.capacityUnits,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityUnits': capacityUnits,
    };
  }

  factory LoadBalancerMinimumLoadBalancerCapacity.fromMap(Map<String, dynamic> map) {
    return LoadBalancerMinimumLoadBalancerCapacity(
      capacityUnits: pulumi.Input.fromValue(map['capacityUnits'] as int),
    );
  }
}

