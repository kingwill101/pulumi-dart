// ignore_for_file: unused_element, unnecessary_cast

class VMwareClusterLoadBalancerF5Config {
  /// The load balancer's IP address.
  final String? address;

  /// he preexisting partition to be used by the load balancer. T
  /// his partition is usually created for the admin cluster for example:
  /// 'my-f5-admin-partition'.
  final String? partition;

  /// The pool name. Only necessary, if using SNAT.
  final String? snatPool;

  VMwareClusterLoadBalancerF5Config({
    this.address,
    this.partition,
    this.snatPool,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final addressValue = address;
    if (addressValue != null) {
      map['address'] = addressValue;
    }
    final partitionValue = partition;
    if (partitionValue != null) {
      map['partition'] = partitionValue;
    }
    final snatPoolValue = snatPool;
    if (snatPoolValue != null) {
      map['snatPool'] = snatPoolValue;
    }
    return map;
  }

  factory VMwareClusterLoadBalancerF5Config.fromMap(Map<String, dynamic> map) {
    return VMwareClusterLoadBalancerF5Config(
      address: map['address'] == null ? null : map['address'] as String,
      partition: map['partition'] == null ? null : map['partition'] as String,
      snatPool: map['snatPool'] == null ? null : map['snatPool'] as String,
    );
  }
}
