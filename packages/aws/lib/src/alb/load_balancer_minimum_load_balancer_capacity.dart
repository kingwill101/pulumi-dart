// ignore_for_file: unused_element, unnecessary_cast

class LoadBalancerMinimumLoadBalancerCapacity {
  /// The number of capacity units.
  final int capacityUnits;

  /// Creates a new [LoadBalancerMinimumLoadBalancerCapacity].
  /// [capacityUnits] The number of capacity units.
  LoadBalancerMinimumLoadBalancerCapacity({required this.capacityUnits});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'capacityUnits': capacityUnits};
  }

  factory LoadBalancerMinimumLoadBalancerCapacity.fromMap(
    Map<String, dynamic> map,
  ) {
    return LoadBalancerMinimumLoadBalancerCapacity(
      capacityUnits: map['capacityUnits'] as int,
    );
  }
}
