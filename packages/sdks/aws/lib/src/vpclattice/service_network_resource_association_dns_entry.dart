// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceNetworkResourceAssociationDnsEntry {
  /// Domain name of the association in the service network.
  final pulumi.Input<String> domainName;
  /// ID of the hosted zone containing the domain name.
  final pulumi.Input<String> hostedZoneId;

  /// Creates a new [ServiceNetworkResourceAssociationDnsEntry].
  /// [domainName] Domain name of the association in the service network.
  /// [hostedZoneId] ID of the hosted zone containing the domain name.
  const ServiceNetworkResourceAssociationDnsEntry({
    required this.domainName,
    required this.hostedZoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': domainName,
      'hostedZoneId': hostedZoneId,
    };
  }

  factory ServiceNetworkResourceAssociationDnsEntry.fromMap(Map<String, dynamic> map) {
    return ServiceNetworkResourceAssociationDnsEntry(
      domainName: pulumi.Input.fromValue(map['domainName'] as String),
      hostedZoneId: pulumi.Input.fromValue(map['hostedZoneId'] as String),
    );
  }
}
