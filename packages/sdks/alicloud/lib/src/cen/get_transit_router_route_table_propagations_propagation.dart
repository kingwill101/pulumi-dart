// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTransitRouterRouteTablePropagationsPropagation {
  /// The ID of the network instance connection.
  final pulumi.Input<String> id;
  /// The ID of the network instance.
  final pulumi.Input<String> resourceId;
  /// The type of the network instance.
  final pulumi.Input<String> resourceType;
  /// The status of the route learning correlation. Valid values: `Active`, `Enabling`, `Disabling`.
  final pulumi.Input<String> status;
  /// The ID of the network instance connection.
  final pulumi.Input<String> transitRouterAttachmentId;
  /// The ID of the route table of the Enterprise Edition transit router.
  final pulumi.Input<String> transitRouterRouteTableId;

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
      id: pulumi.Input.fromValue(map['id'] as String),
      resourceId: pulumi.Input.fromValue(map['resourceId'] as String),
      resourceType: pulumi.Input.fromValue(map['resourceType'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      transitRouterAttachmentId: pulumi.Input.fromValue(map['transitRouterAttachmentId'] as String),
      transitRouterRouteTableId: pulumi.Input.fromValue(map['transitRouterRouteTableId'] as String),
    );
  }
}

