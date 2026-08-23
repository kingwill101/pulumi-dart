// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceDnsEntry {
  /// DNS name for the service.
  final pulumi.Input<String> domainName;
  /// Hosted zone ID where the DNS name is registered.
  final pulumi.Input<String> hostedZoneId;

  /// Creates a new [GetServiceDnsEntry].
  /// [domainName] DNS name for the service.
  /// [hostedZoneId] Hosted zone ID where the DNS name is registered.
  const GetServiceDnsEntry({
    required this.domainName,
    required this.hostedZoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': domainName,
      'hostedZoneId': hostedZoneId,
    };
  }

  factory GetServiceDnsEntry.fromMap(Map<String, dynamic> map) {
    return GetServiceDnsEntry(
      domainName: pulumi.Input.fromValue(map['domainName'] as String),
      hostedZoneId: pulumi.Input.fromValue(map['hostedZoneId'] as String),
    );
  }
}
