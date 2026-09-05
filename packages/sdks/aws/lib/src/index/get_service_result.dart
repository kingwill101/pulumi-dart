// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getService.
class GetServiceResult {
  final String? dnsName;
  final String? id;
  final String? partition;
  final String? region;
  final String? reverseDnsName;
  final String? reverseDnsPrefix;
  final String? serviceId;
  /// Whether the service is supported in the region's partition. New services may not be listed immediately as supported.
  final bool? supported;

  /// Creates a new [GetServiceResult].
  /// [dnsName] Optional.
  /// [id] Optional.
  /// [partition] Optional.
  /// [region] Optional.
  /// [reverseDnsName] Optional.
  /// [reverseDnsPrefix] Optional.
  /// [serviceId] Optional.
  /// [supported] Whether the service is supported in the region's partition. New services may not be listed immediately as supported.
  const GetServiceResult({
    this.dnsName,
    this.id,
    this.partition,
    this.region,
    this.reverseDnsName,
    this.reverseDnsPrefix,
    this.serviceId,
    this.supported,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsName': ?dnsName,
      'id': ?id,
      'partition': ?partition,
      'region': ?region,
      'reverseDnsName': ?reverseDnsName,
      'reverseDnsPrefix': ?reverseDnsPrefix,
      'serviceId': ?serviceId,
      'supported': ?supported,
    };
  }

  factory GetServiceResult.fromMap(Map<String, dynamic> map) {
    return GetServiceResult(
      dnsName: (() { final guardedValue = map['dnsName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      partition: (() { final guardedValue = map['partition']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      reverseDnsName: (() { final guardedValue = map['reverseDnsName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      reverseDnsPrefix: (() { final guardedValue = map['reverseDnsPrefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceId: (() { final guardedValue = map['serviceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      supported: (() { final guardedValue = map['supported']; if (guardedValue == null) return null; return guardedValue as bool; })(),
    );
  }
}
