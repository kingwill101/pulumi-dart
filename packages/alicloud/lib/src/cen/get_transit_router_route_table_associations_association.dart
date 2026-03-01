// ignore_for_file: unused_element, unnecessary_cast


class GetTransitRouterRouteTableAssociationsAssociation {
  final String id;
  /// ID of the transit router route table association.
  final String resourceId;
  /// Type of the resource.
  final String resourceType;
  /// The status of the route table, including `Active`, `Associating`, `Dissociating`.
  final String status;
  /// The ID of the network instance connection.
  final String transitRouterAttachmentId;
  /// The ID of the route table of the Enterprise Edition transit router.
  final String transitRouterRouteTableId;

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
      id: map['id'] as String,
      resourceId: map['resourceId'] as String,
      resourceType: map['resourceType'] as String,
      status: map['status'] as String,
      transitRouterAttachmentId: map['transitRouterAttachmentId'] as String,
      transitRouterRouteTableId: map['transitRouterRouteTableId'] as String,
    );
  }
}

