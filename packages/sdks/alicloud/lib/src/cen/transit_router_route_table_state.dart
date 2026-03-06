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
  const TransitRouterRouteTableState({
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
      dryRun: (() { final guardedValue = map['dryRun']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      transitRouterId: (() { final guardedValue = map['transitRouterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transitRouterRouteTableDescription: (() { final guardedValue = map['transitRouterRouteTableDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transitRouterRouteTableId: (() { final guardedValue = map['transitRouterRouteTableId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transitRouterRouteTableName: (() { final guardedValue = map['transitRouterRouteTableName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transitRouterRouteTableType: (() { final guardedValue = map['transitRouterRouteTableType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

