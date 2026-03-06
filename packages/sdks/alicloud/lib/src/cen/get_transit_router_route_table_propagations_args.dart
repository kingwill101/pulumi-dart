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
  const GetTransitRouterRouteTablePropagationsArgs({
    this.ids,
    this.outputFile,
    this.status,
    this.transitRouterAttachmentId,
    required this.transitRouterRouteTableId,
  });

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
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transitRouterAttachmentId: (() { final guardedValue = map['transitRouterAttachmentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transitRouterRouteTableId: pulumi.Input.fromValue(map['transitRouterRouteTableId'] as String),
    );
  }
}

