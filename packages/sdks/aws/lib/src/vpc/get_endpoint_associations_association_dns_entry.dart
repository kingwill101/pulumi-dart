// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEndpointAssociationsAssociationDnsEntry {
  /// DNS name.
  final pulumi.Input<String> dnsName;
  /// ID of the private hosted zone.
  final pulumi.Input<String> hostedZoneId;

  /// Creates a new [GetEndpointAssociationsAssociationDnsEntry].
  /// [dnsName] DNS name.
  /// [hostedZoneId] ID of the private hosted zone.
  GetEndpointAssociationsAssociationDnsEntry({
    required this.dnsName,
    required this.hostedZoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsName': dnsName,
      'hostedZoneId': hostedZoneId,
    };
  }

  factory GetEndpointAssociationsAssociationDnsEntry.fromMap(Map<String, dynamic> map) {
    return GetEndpointAssociationsAssociationDnsEntry(
      dnsName: pulumi.Input.fromValue(map['dnsName'] as String),
      hostedZoneId: pulumi.Input.fromValue(map['hostedZoneId'] as String),
    );
  }
}

