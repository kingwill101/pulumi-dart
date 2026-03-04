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
    this.dryRun,
    this.tags,
    required this.transitRouterId,
    this.transitRouterRouteTableDescription,
    this.transitRouterRouteTableName,
  });

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
      dryRun: (() {
        final guardedValue = map['dryRun'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      transitRouterId: pulumi.Input.fromValue(map['transitRouterId'] as String),
      transitRouterRouteTableDescription: (() {
        final guardedValue = map['transitRouterRouteTableDescription'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      transitRouterRouteTableName: (() {
        final guardedValue = map['transitRouterRouteTableName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
