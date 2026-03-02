// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_endpoint_associations_association_dns_entry.dart';
import 'get_endpoint_associations_association_private_dns_entry.dart';

class GetEndpointAssociationsAssociation {
  /// Accessibility of the resource.
  final pulumi.Input<String> associatedResourceAccessibility;
  /// ARN of the resource for this association.
  final pulumi.Input<String> associatedResourceArn;
  /// DNS entries for the Association. DNS entry blocks are documented below.
  final pulumi.Input<List<GetEndpointAssociationsAssociationDnsEntry>> dnsEntries;
  final pulumi.Input<String> id;
  /// DNS entries for the Association. Private DNS entry blocks are documented below.
  final pulumi.Input<List<GetEndpointAssociationsAssociationPrivateDnsEntry>> privateDnsEntries;
  /// ARN of the Resource Group if the Resource is a member of a group.
  final pulumi.Input<String> resourceConfigurationGroupArn;
  /// Service Network ARN. Applicable for endpoints of type `ServiceNetwork`.
  final pulumi.Input<String> serviceNetworkArn;
  /// Service Network Name. Applicable for endpoints of type `ServiceNetwork`.
  final pulumi.Input<String> serviceNetworkName;
  /// Tags of the association.
  final pulumi.Input<Map<String, String>> tags;

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
      'dnsEntries': pulumi.Input.mapInputValue<List<GetEndpointAssociationsAssociationDnsEntry>, List<Map<String, dynamic>>>(dnsEntries, (value) => pulumi.Input.encodeList<GetEndpointAssociationsAssociationDnsEntry, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': id,
      'privateDnsEntries': pulumi.Input.mapInputValue<List<GetEndpointAssociationsAssociationPrivateDnsEntry>, List<Map<String, dynamic>>>(privateDnsEntries, (value) => pulumi.Input.encodeList<GetEndpointAssociationsAssociationPrivateDnsEntry, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceConfigurationGroupArn': resourceConfigurationGroupArn,
      'serviceNetworkArn': serviceNetworkArn,
      'serviceNetworkName': serviceNetworkName,
      'tags': tags,
    };
  }

  factory GetEndpointAssociationsAssociation.fromMap(Map<String, dynamic> map) {
    return GetEndpointAssociationsAssociation(
      associatedResourceAccessibility: (map['associatedResourceAccessibility'] as String).input(),
      associatedResourceArn: (map['associatedResourceArn'] as String).input(),
      dnsEntries: (pulumi.Input.decodeList<GetEndpointAssociationsAssociationDnsEntry>(map['dnsEntries']!, (value) => GetEndpointAssociationsAssociationDnsEntry.fromMap((value as Map).cast<String, dynamic>()))).input(),
      id: (map['id'] as String).input(),
      privateDnsEntries: (pulumi.Input.decodeList<GetEndpointAssociationsAssociationPrivateDnsEntry>(map['privateDnsEntries']!, (value) => GetEndpointAssociationsAssociationPrivateDnsEntry.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resourceConfigurationGroupArn: (map['resourceConfigurationGroupArn'] as String).input(),
      serviceNetworkArn: (map['serviceNetworkArn'] as String).input(),
      serviceNetworkName: (map['serviceNetworkName'] as String).input(),
      tags: ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

