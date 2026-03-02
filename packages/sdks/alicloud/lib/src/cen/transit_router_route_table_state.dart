// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering TransitRouterRouteTable resources.
class TransitRouterRouteTableState {
  /// The dry run.
  final pulumi.Input<bool>? dryRun;
  /// The associating status of the Transit Router.
  final pulumi.Input<String>? status;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The ID of the transit router.
  final pulumi.Input<String>? transitRouterId;
  /// The description of the transit router route table.
  final pulumi.Input<String>? transitRouterRouteTableDescription;
  /// The id of the transit router route table.
  final pulumi.Input<String>? transitRouterRouteTableId;
  /// The name of the transit router route table.
  final pulumi.Input<String>? transitRouterRouteTableName;
  /// The type of the transit router route table. Valid values: `Custom`, `System`.
  final pulumi.Input<String>? transitRouterRouteTableType;

  /// Creates a new [TransitRouterRouteTableState].
  /// [dryRun] The dry run.
  /// [status] The associating status of the Transit Router.
  /// [tags] A mapping of tags to assign to the resource.
  /// [transitRouterId] The ID of the transit router.
  /// [transitRouterRouteTableDescription] The description of the transit router route table.
  /// [transitRouterRouteTableId] The id of the transit router route table.
  /// [transitRouterRouteTableName] The name of the transit router route table.
  /// [transitRouterRouteTableType] The type of the transit router route table. Valid values: `Custom`, `System`.
  TransitRouterRouteTableState({
    this.dryRun,
    this.status,
    this.tags,
    this.transitRouterId,
    this.transitRouterRouteTableDescription,
    this.transitRouterRouteTableId,
    this.transitRouterRouteTableName,
    this.transitRouterRouteTableType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dryRun': ?dryRun,
      'status': ?status,
      'tags': ?tags,
      'transitRouterId': ?transitRouterId,
      'transitRouterRouteTableDescription': ?transitRouterRouteTableDescription,
      'transitRouterRouteTableId': ?transitRouterRouteTableId,
      'transitRouterRouteTableName': ?transitRouterRouteTableName,
      'transitRouterRouteTableType': ?transitRouterRouteTableType,
    };
  }

  factory TransitRouterRouteTableState.fromMap(Map<String, dynamic> map) {
    return TransitRouterRouteTableState(
      dryRun: map['dryRun'] == null ? null : (map['dryRun'] as bool).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      transitRouterId: map['transitRouterId'] == null ? null : (map['transitRouterId'] as String).input(),
      transitRouterRouteTableDescription: map['transitRouterRouteTableDescription'] == null ? null : (map['transitRouterRouteTableDescription'] as String).input(),
      transitRouterRouteTableId: map['transitRouterRouteTableId'] == null ? null : (map['transitRouterRouteTableId'] as String).input(),
      transitRouterRouteTableName: map['transitRouterRouteTableName'] == null ? null : (map['transitRouterRouteTableName'] as String).input(),
      transitRouterRouteTableType: map['transitRouterRouteTableType'] == null ? null : (map['transitRouterRouteTableType'] as String).input(),
    );
  }
}

