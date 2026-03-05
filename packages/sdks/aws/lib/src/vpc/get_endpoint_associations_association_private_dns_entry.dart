// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEndpointAssociationsAssociationPrivateDnsEntry {
  /// DNS name.
  final pulumi.Input<String> dnsName;
  /// ID of the private hosted zone.
  final pulumi.Input<String> hostedZoneId;

  /// Creates a new [GetEndpointAssociationsAssociationPrivateDnsEntry].
  /// [dnsName] DNS name.
  /// [hostedZoneId] ID of the private hosted zone.
  GetEndpointAssociationsAssociationPrivateDnsEntry({
    required this.dnsName,
    required this.hostedZoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsName': dnsName,
      'hostedZoneId': hostedZoneId,
    };
  }

  factory GetEndpointAssociationsAssociationPrivateDnsEntry.fromMap(Map<String, dynamic> map) {
    return GetEndpointAssociationsAssociationPrivateDnsEntry(
      dnsName: pulumi.Input.fromValue(map['dnsName'] as String),
      hostedZoneId: pulumi.Input.fromValue(map['hostedZoneId'] as String),
    );
  }
}

