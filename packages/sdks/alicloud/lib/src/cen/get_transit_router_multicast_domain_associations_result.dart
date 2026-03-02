// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_transit_router_multicast_domain_associations_association.dart';

/// Result data returned by getTransitRouterMulticastDomainAssociations.
class GetTransitRouterMulticastDomainAssociationsResult {
  /// A list of Cen Transit Router Multicast Domain Associations. Each element contains the following attributes:
  final List<GetTransitRouterMulticastDomainAssociationsAssociation> associations;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? outputFile;
  /// The ID of the resource associated with the multicast domain.
  final String? resourceId;
  /// The type of resource associated with the multicast domain.
  final String? resourceType;
  /// The status of the associated resource.
  final String? status;
  /// The ID of the network instance connection.
  final String? transitRouterAttachmentId;
  /// The ID of the multicast domain.
  final String transitRouterMulticastDomainId;
  /// The ID of the vSwitch.
  final String? vswitchId;

  /// Creates a new [GetTransitRouterMulticastDomainAssociationsResult].
  /// [associations] A list of Cen Transit Router Multicast Domain Associations. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [outputFile] Optional.
  /// [resourceId] The ID of the resource associated with the multicast domain.
  /// [resourceType] The type of resource associated with the multicast domain.
  /// [status] The status of the associated resource.
  /// [transitRouterAttachmentId] The ID of the network instance connection.
  /// [transitRouterMulticastDomainId] The ID of the multicast domain.
  /// [vswitchId] The ID of the vSwitch.
  GetTransitRouterMulticastDomainAssociationsResult({
    required this.associations,
    required this.id,
    required this.ids,
    this.outputFile,
    this.resourceId,
    this.resourceType,
    this.status,
    this.transitRouterAttachmentId,
    required this.transitRouterMulticastDomainId,
    this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associations': pulumi.Input.encodeList<GetTransitRouterMulticastDomainAssociationsAssociation, Map<String, dynamic>>(associations, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'outputFile': ?outputFile,
      'resourceId': ?resourceId,
      'resourceType': ?resourceType,
      'status': ?status,
      'transitRouterAttachmentId': ?transitRouterAttachmentId,
      'transitRouterMulticastDomainId': transitRouterMulticastDomainId,
      'vswitchId': ?vswitchId,
    };
  }

  factory GetTransitRouterMulticastDomainAssociationsResult.fromMap(Map<String, dynamic> map) {
    return GetTransitRouterMulticastDomainAssociationsResult(
      associations: pulumi.Input.decodeList<GetTransitRouterMulticastDomainAssociationsAssociation>(map['associations'], (value) => GetTransitRouterMulticastDomainAssociationsAssociation.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      resourceId: map['resourceId'] == null ? null : map['resourceId']! as String,
      resourceType: map['resourceType'] == null ? null : map['resourceType']! as String,
      status: map['status'] == null ? null : map['status']! as String,
      transitRouterAttachmentId: map['transitRouterAttachmentId'] == null ? null : map['transitRouterAttachmentId']! as String,
      transitRouterMulticastDomainId: map['transitRouterMulticastDomainId'] as String,
      vswitchId: map['vswitchId'] == null ? null : map['vswitchId']! as String,
    );
  }
}

