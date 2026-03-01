// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cen_get_transit_router_route_table_propagations_get_transit_router_route_table_propagations_args_doc}
/// Arguments for getTransitRouterRouteTablePropagations.
/// {@endtemplate}
/// {@macro pulumi_cen_get_transit_router_route_table_propagations_get_transit_router_route_table_propagations_args_doc}
class GetTransitRouterRouteTablePropagationsArgs {
  /// A list of Transit Router Route Table Propagation IDs.
  final pulumi.Input<List<String>>? ids;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The status of the route learning correlation. Valid values: `Active`, `Enabling`, `Disabling`.
  final pulumi.Input<String>? status;
  /// The ID of the network instance connection.
  final pulumi.Input<String>? transitRouterAttachmentId;
  /// The ID of the route table of the Enterprise Edition transit router.
  final pulumi.Input<String> transitRouterRouteTableId;

  /// Creates a new [GetTransitRouterRouteTablePropagationsArgs].
  /// [ids] A list of Transit Router Route Table Propagation IDs.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of the route learning correlation. Valid values: `Active`, `Enabling`, `Disabling`.
  /// [transitRouterAttachmentId] The ID of the network instance connection.
  /// [transitRouterRouteTableId] The ID of the route table of the Enterprise Edition transit router.
  GetTransitRouterRouteTablePropagationsArgs({
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? status,
    pulumi.Output<String>? transitRouterAttachmentId,
    required pulumi.Output<String> transitRouterRouteTableId,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      status = pulumi.Input.asOptionalInput<String>(status),
      transitRouterAttachmentId = pulumi.Input.asOptionalInput<String>(transitRouterAttachmentId),
      transitRouterRouteTableId = pulumi.Input.asInput<String>(transitRouterRouteTableId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'outputFile': ?outputFile,
      'status': ?status,
      'transitRouterAttachmentId': ?transitRouterAttachmentId,
      'transitRouterRouteTableId': transitRouterRouteTableId,
    };
  }

  factory GetTransitRouterRouteTablePropagationsArgs.fromMap(Map<String, dynamic> map) {
    return GetTransitRouterRouteTablePropagationsArgs(
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      transitRouterAttachmentId: map['transitRouterAttachmentId'] == null ? null : pulumi.Output.create<String>(map['transitRouterAttachmentId'] as String),
      transitRouterRouteTableId: pulumi.Output.create<String>(map['transitRouterRouteTableId'] as String),
    );
  }
}

