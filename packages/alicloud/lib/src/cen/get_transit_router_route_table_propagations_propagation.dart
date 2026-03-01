// ignore_for_file: unused_element, unnecessary_cast


class GetTransitRouterRouteTablePropagationsPropagation {
  /// The ID of the network instance connection.
  final String id;
  /// The ID of the network instance.
  final String resourceId;
  /// The type of the network instance.
  final String resourceType;
  /// The status of the route learning correlation. Valid values: `Active`, `Enabling`, `Disabling`.
  final String status;
  /// The ID of the network instance connection.
  final String transitRouterAttachmentId;
  /// The ID of the route table of the Enterprise Edition transit router.
  final String transitRouterRouteTableId;

  /// Creates a new [GetTransitRouterRouteTablePropagationsPropagation].
  /// [id] The ID of the network instance connection.
  /// [resourceId] The ID of the network instance.
  /// [resourceType] The type of the network instance.
  /// [status] The status of the route learning correlation. Valid values: `Active`, `Enabling`, `Disabling`.
  /// [transitRouterAttachmentId] The ID of the network instance connection.
  /// [transitRouterRouteTableId] The ID of the route table of the Enterprise Edition transit router.
  GetTransitRouterRouteTablePropagationsPropagation({
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

  factory GetTransitRouterRouteTablePropagationsPropagation.fromMap(Map<String, dynamic> map) {
    return GetTransitRouterRouteTablePropagationsPropagation(
      id: map['id'] as String,
      resourceId: map['resourceId'] as String,
      resourceType: map['resourceType'] as String,
      status: map['status'] as String,
      transitRouterAttachmentId: map['transitRouterAttachmentId'] as String,
      transitRouterRouteTableId: map['transitRouterRouteTableId'] as String,
    );
  }
}

