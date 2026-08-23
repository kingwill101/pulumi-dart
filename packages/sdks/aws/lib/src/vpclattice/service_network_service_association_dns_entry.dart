// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceNetworkServiceAssociationDnsEntry {
  /// Domain name of the service.
  final pulumi.Input<String>? domainName;
  /// ID of the hosted zone.
  final pulumi.Input<String>? hostedZoneId;

  /// Creates a new [ServiceNetworkServiceAssociationDnsEntry].
  /// [domainName] Domain name of the service.
  /// [hostedZoneId] ID of the hosted zone.
  const ServiceNetworkServiceAssociationDnsEntry({
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
      domainName: (() { final guardedValue = map['domainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostedZoneId: (() { final guardedValue = map['hostedZoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
