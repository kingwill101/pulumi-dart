// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVpcEndpointDnsEntry {
  /// DNS name.
  final pulumi.Input<String> dnsName;
  /// ID of the private hosted zone.
  final pulumi.Input<String> hostedZoneId;

  /// Creates a new [GetVpcEndpointDnsEntry].
  /// [dnsName] DNS name.
  /// [hostedZoneId] ID of the private hosted zone.
  GetVpcEndpointDnsEntry({
    required this.dnsName,
    required this.hostedZoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsName': dnsName,
      'hostedZoneId': hostedZoneId,
    };
  }

  factory GetVpcEndpointDnsEntry.fromMap(Map<String, dynamic> map) {
    return GetVpcEndpointDnsEntry(
      dnsName: (map['dnsName'] as String).input(),
      hostedZoneId: (map['hostedZoneId'] as String).input(),
    );
  }
}

