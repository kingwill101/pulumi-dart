// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceNetworkServiceAssociationsItemDnsEntry {
  /// Domain name of the service.
  final pulumi.Input<String> domainName;
  /// ID of the hosted zone.
  final pulumi.Input<String> hostedZoneId;

  /// Creates a new [GetServiceNetworkServiceAssociationsItemDnsEntry].
  /// [domainName] Domain name of the service.
  /// [hostedZoneId] ID of the hosted zone.
  const GetServiceNetworkServiceAssociationsItemDnsEntry({
    required this.domainName,
    required this.hostedZoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': domainName,
      'hostedZoneId': hostedZoneId,
    };
  }

  factory GetServiceNetworkServiceAssociationsItemDnsEntry.fromMap(Map<String, dynamic> map) {
    return GetServiceNetworkServiceAssociationsItemDnsEntry(
      domainName: pulumi.Input.fromValue(map['domainName'] as String),
      hostedZoneId: pulumi.Input.fromValue(map['hostedZoneId'] as String),
    );
  }
}
