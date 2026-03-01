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
    pulumi.Output<bool>? dryRun,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? transitRouterId,
    pulumi.Output<String>? transitRouterRouteTableDescription,
    pulumi.Output<String>? transitRouterRouteTableId,
    pulumi.Output<String>? transitRouterRouteTableName,
    pulumi.Output<String>? transitRouterRouteTableType,
  }) :
      dryRun = pulumi.Input.asOptionalInput<bool>(dryRun),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      transitRouterId = pulumi.Input.asOptionalInput<String>(transitRouterId),
      transitRouterRouteTableDescription = pulumi.Input.asOptionalInput<String>(transitRouterRouteTableDescription),
      transitRouterRouteTableId = pulumi.Input.asOptionalInput<String>(transitRouterRouteTableId),
      transitRouterRouteTableName = pulumi.Input.asOptionalInput<String>(transitRouterRouteTableName),
      transitRouterRouteTableType = pulumi.Input.asOptionalInput<String>(transitRouterRouteTableType);

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
      dryRun: map['dryRun'] == null ? null : pulumi.Output.create<bool>(map['dryRun'] as bool),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      transitRouterId: map['transitRouterId'] == null ? null : pulumi.Output.create<String>(map['transitRouterId'] as String),
      transitRouterRouteTableDescription: map['transitRouterRouteTableDescription'] == null ? null : pulumi.Output.create<String>(map['transitRouterRouteTableDescription'] as String),
      transitRouterRouteTableId: map['transitRouterRouteTableId'] == null ? null : pulumi.Output.create<String>(map['transitRouterRouteTableId'] as String),
      transitRouterRouteTableName: map['transitRouterRouteTableName'] == null ? null : pulumi.Output.create<String>(map['transitRouterRouteTableName'] as String),
      transitRouterRouteTableType: map['transitRouterRouteTableType'] == null ? null : pulumi.Output.create<String>(map['transitRouterRouteTableType'] as String),
    );
  }
}

