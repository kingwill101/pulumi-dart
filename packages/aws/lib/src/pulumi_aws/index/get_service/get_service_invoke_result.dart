// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getService.
class GetServiceInvokeResult {
  final String dnsName;
  final String id;
  final String partition;
  final String region;
  final String reverseDnsName;
  final String reverseDnsPrefix;
  final String serviceId;

  /// Whether the service is supported in the region's partition. New services may not be listed immediately as supported.
  final bool supported;

  GetServiceInvokeResult({
    required this.dnsName,
    required this.id,
    required this.partition,
    required this.region,
    required this.reverseDnsName,
    required this.reverseDnsPrefix,
    required this.serviceId,
    required this.supported,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dnsName'] = dnsName;
    map['id'] = id;
    map['partition'] = partition;
    map['region'] = region;
    map['reverseDnsName'] = reverseDnsName;
    map['reverseDnsPrefix'] = reverseDnsPrefix;
    map['serviceId'] = serviceId;
    map['supported'] = supported;
    return map;
  }

  factory GetServiceInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetServiceInvokeResult(
      dnsName: map['dnsName'] as String,
      id: map['id'] as String,
      partition: map['partition'] as String,
      region: map['region'] as String,
      reverseDnsName: map['reverseDnsName'] as String,
      reverseDnsPrefix: map['reverseDnsPrefix'] as String,
      serviceId: map['serviceId'] as String,
      supported: map['supported'] as bool,
    );
  }
}
