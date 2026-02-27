// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_endpoint_associations_association_dns_entry/get_endpoint_associations_association_dns_entry.dart';
import '../get_endpoint_associations_association_private_dns_entry/get_endpoint_associations_association_private_dns_entry.dart';

class GetEndpointAssociationsAssociation {
  /// Accessibility of the resource.
  final String associatedResourceAccessibility;

  /// ARN of the resource for this association.
  final String associatedResourceArn;

  /// DNS entries for the Association. DNS entry blocks are documented below.
  final List<GetEndpointAssociationsAssociationDnsEntry> dnsEntries;
  final String id;

  /// DNS entries for the Association. Private DNS entry blocks are documented below.
  final List<GetEndpointAssociationsAssociationPrivateDnsEntry>
      privateDnsEntries;

  /// ARN of the Resource Group if the Resource is a member of a group.
  final String resourceConfigurationGroupArn;

  /// Service Network ARN. Applicable for endpoints of type `ServiceNetwork`.
  final String serviceNetworkArn;

  /// Service Network Name. Applicable for endpoints of type `ServiceNetwork`.
  final String serviceNetworkName;

  /// Tags of the association.
  final Map<String, String> tags;

  GetEndpointAssociationsAssociation({
    required this.associatedResourceAccessibility,
    required this.associatedResourceArn,
    required this.dnsEntries,
    required this.id,
    required this.privateDnsEntries,
    required this.resourceConfigurationGroupArn,
    required this.serviceNetworkArn,
    required this.serviceNetworkName,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['associatedResourceAccessibility'] = associatedResourceAccessibility;
    map['associatedResourceArn'] = associatedResourceArn;
    map['dnsEntries'] = pulumi.Input.encodeList<
        GetEndpointAssociationsAssociationDnsEntry,
        Map<String, dynamic>>(dnsEntries, (value) => value.toMap());
    map['id'] = id;
    map['privateDnsEntries'] = pulumi.Input.encodeList<
        GetEndpointAssociationsAssociationPrivateDnsEntry,
        Map<String, dynamic>>(privateDnsEntries, (value) => value.toMap());
    map['resourceConfigurationGroupArn'] = resourceConfigurationGroupArn;
    map['serviceNetworkArn'] = serviceNetworkArn;
    map['serviceNetworkName'] = serviceNetworkName;
    map['tags'] = tags;
    return map;
  }

  factory GetEndpointAssociationsAssociation.fromMap(Map<String, dynamic> map) {
    return GetEndpointAssociationsAssociation(
      associatedResourceAccessibility:
          map['associatedResourceAccessibility'] as String,
      associatedResourceArn: map['associatedResourceArn'] as String,
      dnsEntries:
          pulumi.Input.decodeList<GetEndpointAssociationsAssociationDnsEntry>(
              map['dnsEntries'],
              (value) => GetEndpointAssociationsAssociationDnsEntry.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      privateDnsEntries: pulumi.Input.decodeList<
              GetEndpointAssociationsAssociationPrivateDnsEntry>(
          map['privateDnsEntries'],
          (value) => GetEndpointAssociationsAssociationPrivateDnsEntry.fromMap(
              (value as Map).cast<String, dynamic>())),
      resourceConfigurationGroupArn:
          map['resourceConfigurationGroupArn'] as String,
      serviceNetworkArn: map['serviceNetworkArn'] as String,
      serviceNetworkName: map['serviceNetworkName'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
