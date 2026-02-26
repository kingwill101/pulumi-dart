// ignore_for_file: unused_element, unnecessary_cast

class LoadBalancerMinimumLoadBalancerCapacity {
  /// The number of capacity units.
  final int capacityUnits;

  LoadBalancerMinimumLoadBalancerCapacity({
    required this.capacityUnits,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['capacityUnits'] = capacityUnits;
    return map;
  }

  factory LoadBalancerMinimumLoadBalancerCapacity.fromMap(
      Map<String, dynamic> map) {
    return LoadBalancerMinimumLoadBalancerCapacity(
      capacityUnits: map['capacityUnits'] as int,
    );
  }
}
