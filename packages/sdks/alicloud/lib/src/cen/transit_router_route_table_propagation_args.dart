// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cen_transit_router_route_table_propagation_transit_router_route_table_propagation_args_doc}
/// The set of arguments for TransitRouterRouteTablePropagation.
/// {@endtemplate}
/// {@macro pulumi_cen_transit_router_route_table_propagation_transit_router_route_table_propagation_args_doc}
class TransitRouterRouteTablePropagationArgs {
  /// The dry run.
  ///
  /// > **NOTE:** The Zone of CEN has MasterZone and SlaveZone, first zone_id of zone_mapping need be MasterZone. We have a API to describeZones[API](https://help.aliyun.com/document_detail/261356.html)
  final pulumi.Input<bool>? dryRun;
  /// The ID the transit router attachment.
  final pulumi.Input<String> transitRouterAttachmentId;
  /// The ID of the transit router route table.
  final pulumi.Input<String> transitRouterRouteTableId;

  /// Creates a new [TransitRouterRouteTablePropagationArgs].
  /// [dryRun] The dry run.
  /// [transitRouterAttachmentId] The ID the transit router attachment.
  /// [transitRouterRouteTableId] The ID of the transit router route table.
  TransitRouterRouteTablePropagationArgs({
    pulumi.Output<bool>? dryRun,
    required pulumi.Output<String> transitRouterAttachmentId,
    required pulumi.Output<String> transitRouterRouteTableId,
  }) :
      dryRun = pulumi.Input.asOptionalInput<bool>(dryRun),
      transitRouterAttachmentId = pulumi.Input.asInput<String>(transitRouterAttachmentId),
      transitRouterRouteTableId = pulumi.Input.asInput<String>(transitRouterRouteTableId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dryRun': ?dryRun,
      'transitRouterAttachmentId': transitRouterAttachmentId,
      'transitRouterRouteTableId': transitRouterRouteTableId,
    };
  }

  factory TransitRouterRouteTablePropagationArgs.fromMap(Map<String, dynamic> map) {
    return TransitRouterRouteTablePropagationArgs(
      dryRun: map['dryRun'] == null ? null : pulumi.Output.create<bool>(map['dryRun'] as bool),
      transitRouterAttachmentId: pulumi.Output.create<String>(map['transitRouterAttachmentId'] as String),
      transitRouterRouteTableId: pulumi.Output.create<String>(map['transitRouterRouteTableId'] as String),
    );
  }
}

