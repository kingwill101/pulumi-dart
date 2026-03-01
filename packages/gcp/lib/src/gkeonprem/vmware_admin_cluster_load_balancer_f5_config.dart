// ignore_for_file: unused_element, unnecessary_cast


class VmwareAdminClusterLoadBalancerF5Config {
  /// The load balancer's IP address.
  final String? address;
  /// he preexisting partition to be used by the load balancer. T
  /// his partition is usually created for the admin cluster for example:
  /// 'my-f5-admin-partition'.
  final String? partition;
  /// The pool name. Only necessary, if using SNAT.
  final String? snatPool;

  /// Creates a new [VmwareAdminClusterLoadBalancerF5Config].
  /// [address] The load balancer's IP address.
  /// [partition] he preexisting partition to be used by the load balancer. T
  /// [snatPool] The pool name. Only necessary, if using SNAT.
  VmwareAdminClusterLoadBalancerF5Config({
    this.address,
    this.partition,
    this.snatPool,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'partition': ?partition,
      'snatPool': ?snatPool,
    };
  }

  factory VmwareAdminClusterLoadBalancerF5Config.fromMap(Map<String, dynamic> map) {
    return VmwareAdminClusterLoadBalancerF5Config(
      address: map['address'] == null ? null : map['address'] as String,
      partition: map['partition'] == null ? null : map['partition'] as String,
      snatPool: map['snatPool'] == null ? null : map['snatPool'] as String,
    );
  }
}

