// ignore_for_file: unused_element, unnecessary_cast


class GetTransitRouterMulticastDomainAssociationsAssociation {
  /// The ID of the Transit Router Multicast Domain Association. It formats as `<transit_router_multicast_domain_id>:<transit_router_attachment_id>:<vswitch_id>`.
  final String id;
  /// The ID of the resource associated with the multicast domain.
  final String resourceId;
  /// The ID of the Alibaba Cloud account to which the resource associated with the multicast domain belongs.
  final int resourceOwnerId;
  /// The type of resource associated with the multicast domain. Valid Value: `VPC`.
  final String resourceType;
  /// The status of the associated resource. Valid Value: `Associated`, `Associating`, `Dissociating`.
  final String status;
  /// The ID of the network instance connection.
  final String transitRouterAttachmentId;
  /// The ID of the multicast domain.
  final String transitRouterMulticastDomainId;
  /// The ID of the vSwitch.
  final String vswitchId;

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
      id: map['id'] as String,
      resourceId: map['resourceId'] as String,
      resourceOwnerId: map['resourceOwnerId'] as int,
      resourceType: map['resourceType'] as String,
      status: map['status'] as String,
      transitRouterAttachmentId: map['transitRouterAttachmentId'] as String,
      transitRouterMulticastDomainId: map['transitRouterMulticastDomainId'] as String,
      vswitchId: map['vswitchId'] as String,
    );
  }
}

