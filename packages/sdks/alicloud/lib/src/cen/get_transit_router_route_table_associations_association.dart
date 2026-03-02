// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTransitRouterRouteTableAssociationsAssociation {
  final pulumi.Input<String> id;
  /// ID of the transit router route table association.
  final pulumi.Input<String> resourceId;
  /// Type of the resource.
  final pulumi.Input<String> resourceType;
  /// The status of the route table, including `Active`, `Associating`, `Dissociating`.
  final pulumi.Input<String> status;
  /// The ID of the network instance connection.
  final pulumi.Input<String> transitRouterAttachmentId;
  /// The ID of the route table of the Enterprise Edition transit router.
  final pulumi.Input<String> transitRouterRouteTableId;

  /// Creates a new [GetTransitRouterRouteTableAssociationsAssociation].
  /// [id] Required.
  /// [resourceId] ID of the transit router route table association.
  /// [resourceType] Type of the resource.
  /// [status] The status of the route table, including `Active`, `Associating`, `Dissociating`.
  /// [transitRouterAttachmentId] The ID of the network instance connection.
  /// [transitRouterRouteTableId] The ID of the route table of the Enterprise Edition transit router.
  GetTransitRouterRouteTableAssociationsAssociation({
    required this.id,
    required this.resourceId,
    required this.resourceType,
    required this.status,
    required this.transitRouterAttachmentId,
    required this.transitRouterRouteTableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'resourceId': resourceId,
      'resourceType': resourceType,
      'status': status,
      'transitRouterAttachmentId': transitRouterAttachmentId,
      'transitRouterRouteTableId': transitRouterRouteTableId,
    };
  }

  factory GetTransitRouterRouteTableAssociationsAssociation.fromMap(Map<String, dynamic> map) {
    return GetTransitRouterRouteTableAssociationsAssociation(
      id: (map['id'] as String).input(),
      resourceId: (map['resourceId'] as String).input(),
      resourceType: (map['resourceType'] as String).input(),
      status: (map['status'] as String).input(),
      transitRouterAttachmentId: (map['transitRouterAttachmentId'] as String).input(),
      transitRouterRouteTableId: (map['transitRouterRouteTableId'] as String).input(),
    );
  }
}

