// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cen_transit_router_route_table_transit_router_route_table_args_doc}
/// The set of arguments for TransitRouterRouteTable.
/// {@endtemplate}
/// {@macro pulumi_cen_transit_router_route_table_transit_router_route_table_args_doc}
class TransitRouterRouteTableArgs {
  /// The dry run.
  final pulumi.Input<bool>? dryRun;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The ID of the transit router.
  final pulumi.Input<String> transitRouterId;
  /// The description of the transit router route table.
  final pulumi.Input<String>? transitRouterRouteTableDescription;
  /// The name of the transit router route table.
  final pulumi.Input<String>? transitRouterRouteTableName;

  /// Creates a new [TransitRouterRouteTableArgs].
  /// [dryRun] The dry run.
  /// [tags] A mapping of tags to assign to the resource.
  /// [transitRouterId] The ID of the transit router.
  /// [transitRouterRouteTableDescription] The description of the transit router route table.
  /// [transitRouterRouteTableName] The name of the transit router route table.
  TransitRouterRouteTableArgs({
    pulumi.Output<bool>? dryRun,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> transitRouterId,
    pulumi.Output<String>? transitRouterRouteTableDescription,
    pulumi.Output<String>? transitRouterRouteTableName,
  }) :
      dryRun = pulumi.Input.asOptionalInput<bool>(dryRun),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      transitRouterId = pulumi.Input.asInput<String>(transitRouterId),
      transitRouterRouteTableDescription = pulumi.Input.asOptionalInput<String>(transitRouterRouteTableDescription),
      transitRouterRouteTableName = pulumi.Input.asOptionalInput<String>(transitRouterRouteTableName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dryRun': ?dryRun,
      'tags': ?tags,
      'transitRouterId': transitRouterId,
      'transitRouterRouteTableDescription': ?transitRouterRouteTableDescription,
      'transitRouterRouteTableName': ?transitRouterRouteTableName,
    };
  }

  factory TransitRouterRouteTableArgs.fromMap(Map<String, dynamic> map) {
    return TransitRouterRouteTableArgs(
      dryRun: map['dryRun'] == null ? null : pulumi.Output.create<bool>(map['dryRun'] as bool),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      transitRouterId: pulumi.Output.create<String>(map['transitRouterId'] as String),
      transitRouterRouteTableDescription: map['transitRouterRouteTableDescription'] == null ? null : pulumi.Output.create<String>(map['transitRouterRouteTableDescription'] as String),
      transitRouterRouteTableName: map['transitRouterRouteTableName'] == null ? null : pulumi.Output.create<String>(map['transitRouterRouteTableName'] as String),
    );
  }
}

