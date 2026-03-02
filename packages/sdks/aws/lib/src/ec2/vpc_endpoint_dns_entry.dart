// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VpcEndpointDnsEntry {
  /// The DNS name.
  final pulumi.Input<String>? dnsName;
  /// The ID of the private hosted zone.
  final pulumi.Input<String>? hostedZoneId;

  /// Creates a new [VpcEndpointDnsEntry].
  /// [dnsName] The DNS name.
  /// [hostedZoneId] The ID of the private hosted zone.
  VpcEndpointDnsEntry({
    this.dnsName,
    this.hostedZoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsName': ?dnsName,
      'hostedZoneId': ?hostedZoneId,
    };
  }

  factory VpcEndpointDnsEntry.fromMap(Map<String, dynamic> map) {
    return VpcEndpointDnsEntry(
      dnsName: map['dnsName'] == null ? null : (map['dnsName'] as String).input(),
      hostedZoneId: map['hostedZoneId'] == null ? null : (map['hostedZoneId'] as String).input(),
    );
  }
}

