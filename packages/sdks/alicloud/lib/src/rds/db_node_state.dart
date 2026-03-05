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
    this.classCode,
    this.dbInstanceId,
    this.nodeId,
    this.nodeRegionId,
    this.nodeRole,
    this.zoneId,
  });

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
      classCode: (() { final guardedValue = map['classCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbInstanceId: (() { final guardedValue = map['dbInstanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeId: (() { final guardedValue = map['nodeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeRegionId: (() { final guardedValue = map['nodeRegionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeRole: (() { final guardedValue = map['nodeRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

