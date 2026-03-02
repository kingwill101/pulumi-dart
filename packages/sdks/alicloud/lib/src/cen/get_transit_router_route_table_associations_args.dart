// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cen_get_transit_router_route_table_associations_get_transit_router_route_table_associations_args_doc}
/// Arguments for getTransitRouterRouteTableAssociations.
/// {@endtemplate}
/// {@macro pulumi_cen_get_transit_router_route_table_associations_get_transit_router_route_table_associations_args_doc}
class GetTransitRouterRouteTableAssociationsArgs {
  /// A list of CEN Transit Router Route Table Association IDs.
  final pulumi.Input<List<String>>? ids;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The status of the route table, including `Active`, `Associating`, `Dissociating`.
  final pulumi.Input<String>? status;
  /// The ID of the network instance connection.
  final pulumi.Input<String>? transitRouterAttachmentId;
  /// The ID of the next hop.
  final pulumi.Input<String>? transitRouterAttachmentResourceId;
  /// The type of next hop. Valid values:
  /// * `VPC`: virtual private cloud (VPC)
  /// * `VBR`: virtual border router (VBR)
  /// * `TR`: transit router
  /// * `VPN`: VPN attachment
  final pulumi.Input<String>? transitRouterAttachmentResourceType;
  /// The ID of the route table of the Enterprise Edition transit router.
  final pulumi.Input<String>? transitRouterRouteTableId;

  /// Creates a new [GetTransitRouterRouteTableAssociationsArgs].
  /// [ids] A list of CEN Transit Router Route Table Association IDs.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of the route table, including `Active`, `Associating`, `Dissociating`.
  /// [transitRouterAttachmentId] The ID of the network instance connection.
  /// [transitRouterAttachmentResourceId] The ID of the next hop.
  /// [transitRouterAttachmentResourceType] The type of next hop. Valid values:
  /// [transitRouterRouteTableId] The ID of the route table of the Enterprise Edition transit router.
  GetTransitRouterRouteTableAssociationsArgs({
    this.ids,
    this.outputFile,
    this.status,
    this.transitRouterAttachmentId,
    this.transitRouterAttachmentResourceId,
    this.transitRouterAttachmentResourceType,
    this.transitRouterRouteTableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'outputFile': ?outputFile,
      'status': ?status,
      'transitRouterAttachmentId': ?transitRouterAttachmentId,
      'transitRouterAttachmentResourceId': ?transitRouterAttachmentResourceId,
      'transitRouterAttachmentResourceType': ?transitRouterAttachmentResourceType,
      'transitRouterRouteTableId': ?transitRouterRouteTableId,
    };
  }

  factory GetTransitRouterRouteTableAssociationsArgs.fromMap(Map<String, dynamic> map) {
    return GetTransitRouterRouteTableAssociationsArgs(
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      transitRouterAttachmentId: map['transitRouterAttachmentId'] == null ? null : (map['transitRouterAttachmentId']! as String).input(),
      transitRouterAttachmentResourceId: map['transitRouterAttachmentResourceId'] == null ? null : (map['transitRouterAttachmentResourceId']! as String).input(),
      transitRouterAttachmentResourceType: map['transitRouterAttachmentResourceType'] == null ? null : (map['transitRouterAttachmentResourceType']! as String).input(),
      transitRouterRouteTableId: map['transitRouterRouteTableId'] == null ? null : (map['transitRouterRouteTableId']! as String).input(),
    );
  }
}

