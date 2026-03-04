// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTransitRouterMulticastDomainAssociationsAssociation {
  /// The ID of the Transit Router Multicast Domain Association. It formats as `&lt;transit_router_multicast_domain_id&gt;:&lt;transit_router_attachment_id&gt;:&lt;vswitch_id&gt;`.
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
  /// [id] The ID of the Transit Router Multicast Domain Association. It formats as `&lt;transit_router_multicast_domain_id&gt;:&lt;transit_router_attachment_id&gt;:&lt;vswitch_id&gt;`.
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

  factory GetTransitRouterMulticastDomainAssociationsAssociation.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetTransitRouterMulticastDomainAssociationsAssociation(
      id: pulumi.Input.fromValue(map['id'] as String),
      resourceId: pulumi.Input.fromValue(map['resourceId'] as String),
      resourceOwnerId: pulumi.Input.fromValue(map['resourceOwnerId'] as int),
      resourceType: pulumi.Input.fromValue(map['resourceType'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      transitRouterAttachmentId: pulumi.Input.fromValue(
        map['transitRouterAttachmentId'] as String,
      ),
      transitRouterMulticastDomainId: pulumi.Input.fromValue(
        map['transitRouterMulticastDomainId'] as String,
      ),
      vswitchId: pulumi.Input.fromValue(map['vswitchId'] as String),
    );
  }
}
