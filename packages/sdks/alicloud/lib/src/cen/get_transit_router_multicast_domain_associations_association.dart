// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTransitRouterMulticastDomainAssociationsAssociation {
  /// The ID of the Transit Router Multicast Domain Association. It formats as `<transit_router_multicast_domain_id>:<transit_router_attachment_id>:<vswitch_id>`.
  final pulumi.Input<String> id;
  /// The ID of the resource associated with the multicast domain.
  final pulumi.Input<String> resourceId;
  /// The ID of the Alibaba Cloud account to which the resource associated with the multicast domain belongs.
  final pulumi.Input<int> resourceOwnerId;
  /// The type of resource associated with the multicast domain. Valid Value: `VPC`.
  final pulumi.Input<String> resourceType;
  /// The status of the associated resource. Valid Value: `Associated`, `Associating`, `Dissociating`.
  final pulumi.Input<String> status;
  /// The ID of the network instance connection.
  final pulumi.Input<String> transitRouterAttachmentId;
  /// The ID of the multicast domain.
  final pulumi.Input<String> transitRouterMulticastDomainId;
  /// The ID of the vSwitch.
  final pulumi.Input<String> vswitchId;

  /// Creates a new [GetTransitRouterMulticastDomainAssociationsAssociation].
  /// [id] The ID of the Transit Router Multicast Domain Association. It formats as `<transit_router_multicast_domain_id>:<transit_router_attachment_id>:<vswitch_id>`.
  /// [resourceId] The ID of the resource associated with the multicast domain.
  /// [resourceOwnerId] The ID of the Alibaba Cloud account to which the resource associated with the multicast domain belongs.
  /// [resourceType] The type of resource associated with the multicast domain. Valid Value: `VPC`.
  /// [status] The status of the associated resource. Valid Value: `Associated`, `Associating`, `Dissociating`.
  /// [transitRouterAttachmentId] The ID of the network instance connection.
  /// [transitRouterMulticastDomainId] The ID of the multicast domain.
  /// [vswitchId] The ID of the vSwitch.
  GetTransitRouterMulticastDomainAssociationsAssociation({
    required this.id,
    required this.resourceId,
    required this.resourceOwnerId,
    required this.resourceType,
    required this.status,
    required this.transitRouterAttachmentId,
    required this.transitRouterMulticastDomainId,
    required this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'resourceId': resourceId,
      'resourceOwnerId': resourceOwnerId,
      'resourceType': resourceType,
      'status': status,
      'transitRouterAttachmentId': transitRouterAttachmentId,
      'transitRouterMulticastDomainId': transitRouterMulticastDomainId,
      'vswitchId': vswitchId,
    };
  }

  factory GetTransitRouterMulticastDomainAssociationsAssociation.fromMap(Map<String, dynamic> map) {
    return GetTransitRouterMulticastDomainAssociationsAssociation(
      id: (map['id'] as String).input(),
      resourceId: (map['resourceId'] as String).input(),
      resourceOwnerId: (map['resourceOwnerId'] as int).input(),
      resourceType: (map['resourceType'] as String).input(),
      status: (map['status'] as String).input(),
      transitRouterAttachmentId: (map['transitRouterAttachmentId'] as String).input(),
      transitRouterMulticastDomainId: (map['transitRouterMulticastDomainId'] as String).input(),
      vswitchId: (map['vswitchId'] as String).input(),
    );
  }
}

