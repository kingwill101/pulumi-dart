// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_endpoint_associations_association_dns_entry.dart';
import 'get_endpoint_associations_association_private_dns_entry.dart';

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

  /// Creates a new [GetEndpointAssociationsAssociation].
  /// [associatedResourceAccessibility] Accessibility of the resource.
  /// [associatedResourceArn] ARN of the resource for this association.
  /// [dnsEntries] DNS entries for the Association. DNS entry blocks are documented below.
  /// [id] Required.
  /// [privateDnsEntries] DNS entries for the Association. Private DNS entry blocks are documented below.
  /// [resourceConfigurationGroupArn] ARN of the Resource Group if the Resource is a member of a group.
  /// [serviceNetworkArn] Service Network ARN. Applicable for endpoints of type `ServiceNetwork`.
  /// [serviceNetworkName] Service Network Name. Applicable for endpoints of type `ServiceNetwork`.
  /// [tags] Tags of the association.
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
    return <String, dynamic>{
      'associatedResourceAccessibility': associatedResourceAccessibility,
      'associatedResourceArn': associatedResourceArn,
      'dnsEntries':
          pulumi.Input.encodeList<
            GetEndpointAssociationsAssociationDnsEntry,
            Map<String, dynamic>
          >(dnsEntries, (value) => value.toMap()),
      'id': id,
      'privateDnsEntries':
          pulumi.Input.encodeList<
            GetEndpointAssociationsAssociationPrivateDnsEntry,
            Map<String, dynamic>
          >(privateDnsEntries, (value) => value.toMap()),
      'resourceConfigurationGroupArn': resourceConfigurationGroupArn,
      'serviceNetworkArn': serviceNetworkArn,
      'serviceNetworkName': serviceNetworkName,
      'tags': tags,
    };
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
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      id: map['id'] as String,
      privateDnsEntries:
          pulumi.Input.decodeList<
            GetEndpointAssociationsAssociationPrivateDnsEntry
          >(
            map['privateDnsEntries'],
            (value) =>
                GetEndpointAssociationsAssociationPrivateDnsEntry.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      resourceConfigurationGroupArn:
          map['resourceConfigurationGroupArn'] as String,
      serviceNetworkArn: map['serviceNetworkArn'] as String,
      serviceNetworkName: map['serviceNetworkName'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
