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
      dryRun: map['dryRun'] == null ? null : (map['dryRun']! as bool).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      transitRouterId: (map['transitRouterId'] as String).input(),
      transitRouterRouteTableDescription: map['transitRouterRouteTableDescription'] == null ? null : (map['transitRouterRouteTableDescription']! as String).input(),
      transitRouterRouteTableName: map['transitRouterRouteTableName'] == null ? null : (map['transitRouterRouteTableName']! as String).input(),
    );
  }
}

