// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getService.
class GetServiceResult {
  final String dnsName;
  final String id;
  final String partition;
  final String region;
  final String reverseDnsName;
  final String reverseDnsPrefix;
  final String serviceId;
  /// Whether the service is supported in the region's partition. New services may not be listed immediately as supported.
  final bool supported;

  /// Creates a new [GetServiceResult].
  /// [dnsName] Required.
  /// [id] Required.
  /// [partition] Required.
  /// [region] Required.
  /// [reverseDnsName] Required.
  /// [reverseDnsPrefix] Required.
  /// [serviceId] Required.
  /// [supported] Whether the service is supported in the region's partition. New services may not be listed immediately as supported.
  GetServiceResult({
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
    return <String, dynamic>{
      'dnsName': dnsName,
      'id': id,
      'partition': partition,
      'region': region,
      'reverseDnsName': reverseDnsName,
      'reverseDnsPrefix': reverseDnsPrefix,
      'serviceId': serviceId,
      'supported': supported,
    };
  }

  factory GetServiceResult.fromMap(Map<String, dynamic> map) {
    return GetServiceResult(
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

