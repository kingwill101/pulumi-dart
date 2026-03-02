// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceNetworkServiceAssociationDnsEntry {
  /// The domain name of the service.
  final pulumi.Input<String>? domainName;
  /// The ID of the hosted zone.
  final pulumi.Input<String>? hostedZoneId;

  /// Creates a new [ServiceNetworkServiceAssociationDnsEntry].
  /// [domainName] The domain name of the service.
  /// [hostedZoneId] The ID of the hosted zone.
  ServiceNetworkServiceAssociationDnsEntry({
    this.domainName,
    this.hostedZoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': ?domainName,
      'hostedZoneId': ?hostedZoneId,
    };
  }

  factory ServiceNetworkServiceAssociationDnsEntry.fromMap(Map<String, dynamic> map) {
    return ServiceNetworkServiceAssociationDnsEntry(
      domainName: map['domainName'] == null ? null : ((map['domainName'] as String).input()).input(),
      hostedZoneId: map['hostedZoneId'] == null ? null : ((map['hostedZoneId'] as String).input()).input(),
    );
  }
}

