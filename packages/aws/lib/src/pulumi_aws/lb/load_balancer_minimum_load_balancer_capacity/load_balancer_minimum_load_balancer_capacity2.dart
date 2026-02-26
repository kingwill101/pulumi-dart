// ignore_for_file: unused_element, unnecessary_cast

class LoadBalancerMinimumLoadBalancerCapacity2 {
  /// The number of capacity units.
  final int capacityUnits;

  LoadBalancerMinimumLoadBalancerCapacity2({
    required this.capacityUnits,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['capacityUnits'] = capacityUnits;
    return map;
  }

  factory LoadBalancerMinimumLoadBalancerCapacity2.fromMap(
      Map<String, dynamic> map) {
    return LoadBalancerMinimumLoadBalancerCapacity2(
      capacityUnits: map['capacityUnits'] as int,
    );
  }
}
