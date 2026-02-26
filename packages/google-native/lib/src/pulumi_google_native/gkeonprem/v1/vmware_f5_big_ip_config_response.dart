// ignore_for_file: unused_element, unnecessary_cast

/// Represents configuration parameters for an F5 BIG-IP load balancer.
class VmwareF5BigIpConfigResponse {
  /// The load balancer's IP address.
  final String address;

  /// The preexisting partition to be used by the load balancer. This partition is usually created for the admin cluster for example: 'my-f5-admin-partition'.
  final String partition;

  /// The pool name. Only necessary, if using SNAT.
  final String snatPool;

  VmwareF5BigIpConfigResponse({
    required this.address,
    required this.partition,
    required this.snatPool,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['address'] = address;
    map['partition'] = partition;
    map['snatPool'] = snatPool;
    return map;
  }

  factory VmwareF5BigIpConfigResponse.fromMap(Map<String, dynamic> map) {
    return VmwareF5BigIpConfigResponse(
      address: map['address'] as String,
      partition: map['partition'] as String,
      snatPool: map['snatPool'] as String,
    );
  }
}
