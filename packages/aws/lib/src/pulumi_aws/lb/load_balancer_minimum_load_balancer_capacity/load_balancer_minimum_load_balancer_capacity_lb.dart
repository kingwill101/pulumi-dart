// ignore_for_file: unused_element, unnecessary_cast

class LoadBalancerMinimumLoadBalancerCapacityLb {
  /// The number of capacity units.
  final int capacityUnits;

  LoadBalancerMinimumLoadBalancerCapacityLb({
    required this.capacityUnits,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['capacityUnits'] = capacityUnits;
    return map;
  }

  factory LoadBalancerMinimumLoadBalancerCapacityLb.fromMap(
      Map<String, dynamic> map) {
    return LoadBalancerMinimumLoadBalancerCapacityLb(
      capacityUnits: map['capacityUnits'] as int,
    );
  }
}
