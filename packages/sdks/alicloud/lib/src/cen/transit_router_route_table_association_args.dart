// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cen_transit_router_route_table_association_transit_router_route_table_association_args_doc}
/// The set of arguments for TransitRouterRouteTableAssociation.
/// {@endtemplate}
/// {@macro pulumi_cen_transit_router_route_table_association_transit_router_route_table_association_args_doc}
class TransitRouterRouteTableAssociationArgs {
  /// Whether to perform PreCheck on this request, including permissions and instance status verification. Value:
  final pulumi.Input<bool>? dryRun;
  /// TransitRouterAttachmentId
  final pulumi.Input<String> transitRouterAttachmentId;
  /// TransitRouterRouteTableId
  final pulumi.Input<String> transitRouterRouteTableId;

  /// Creates a new [TransitRouterRouteTableAssociationArgs].
  /// [dryRun] Whether to perform PreCheck on this request, including permissions and instance status verification. Value:
  /// [transitRouterAttachmentId] TransitRouterAttachmentId
  /// [transitRouterRouteTableId] TransitRouterRouteTableId
  TransitRouterRouteTableAssociationArgs({
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

  factory TransitRouterRouteTableAssociationArgs.fromMap(Map<String, dynamic> map) {
    return TransitRouterRouteTableAssociationArgs(
      dryRun: map['dryRun'] == null ? null : pulumi.Output.create<bool>(map['dryRun'] as bool),
      transitRouterAttachmentId: pulumi.Output.create<String>(map['transitRouterAttachmentId'] as String),
      transitRouterRouteTableId: pulumi.Output.create<String>(map['transitRouterRouteTableId'] as String),
    );
  }
}

