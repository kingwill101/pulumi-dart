// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DbNode resources.
class DbNodeState {
  /// The specification information of the node.
  final pulumi.Input<String>? classCode;
  /// The Id of instance that can run database.
  final pulumi.Input<String>? dbInstanceId;
  /// The ID of the node.
  final pulumi.Input<String>? nodeId;
  /// The region ID of the node.
  final pulumi.Input<String>? nodeRegionId;
  /// The role of node.
  final pulumi.Input<String>? nodeRole;
  /// The zone ID of the node.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [DbNodeState].
  /// [classCode] The specification information of the node.
  /// [dbInstanceId] The Id of instance that can run database.
  /// [nodeId] The ID of the node.
  /// [nodeRegionId] The region ID of the node.
  /// [nodeRole] The role of node.
  /// [zoneId] The zone ID of the node.
  DbNodeState({
    pulumi.Output<String>? classCode,
    pulumi.Output<String>? dbInstanceId,
    pulumi.Output<String>? nodeId,
    pulumi.Output<String>? nodeRegionId,
    pulumi.Output<String>? nodeRole,
    pulumi.Output<String>? zoneId,
  }) :
      classCode = pulumi.Input.asOptionalInput<String>(classCode),
      dbInstanceId = pulumi.Input.asOptionalInput<String>(dbInstanceId),
      nodeId = pulumi.Input.asOptionalInput<String>(nodeId),
      nodeRegionId = pulumi.Input.asOptionalInput<String>(nodeRegionId),
      nodeRole = pulumi.Input.asOptionalInput<String>(nodeRole),
      zoneId = pulumi.Input.asOptionalInput<String>(zoneId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'classCode': ?classCode,
      'dbInstanceId': ?dbInstanceId,
      'nodeId': ?nodeId,
      'nodeRegionId': ?nodeRegionId,
      'nodeRole': ?nodeRole,
      'zoneId': ?zoneId,
    };
  }

  factory DbNodeState.fromMap(Map<String, dynamic> map) {
    return DbNodeState(
      classCode: map['classCode'] == null ? null : pulumi.Output.create<String>(map['classCode'] as String),
      dbInstanceId: map['dbInstanceId'] == null ? null : pulumi.Output.create<String>(map['dbInstanceId'] as String),
      nodeId: map['nodeId'] == null ? null : pulumi.Output.create<String>(map['nodeId'] as String),
      nodeRegionId: map['nodeRegionId'] == null ? null : pulumi.Output.create<String>(map['nodeRegionId'] as String),
      nodeRole: map['nodeRole'] == null ? null : pulumi.Output.create<String>(map['nodeRole'] as String),
      zoneId: map['zoneId'] == null ? null : pulumi.Output.create<String>(map['zoneId'] as String),
    );
  }
}

