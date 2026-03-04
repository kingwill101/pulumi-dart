// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mongodb_get_serverless_instances_get_serverless_instances_args_doc}
/// Arguments for getServerlessInstances.
/// {@endtemplate}
/// {@macro pulumi_mongodb_get_serverless_instances_get_serverless_instances_args_doc}
class GetServerlessInstancesArgs {
  /// The db instance class.
  final pulumi.Input<String>? dbInstanceClass;

  /// The db instance description.
  final pulumi.Input<String>? dbInstanceDescription;

  /// Default to `false`. Set it to `true` can output more details about resource attributes.
  final pulumi.Input<bool>? enableDetails;

  /// A list of Serverless Instance IDs.
  final pulumi.Input<List<String>>? ids;

  /// The network type of the instance. Valid values: `Classic` or `VPC`.
  final pulumi.Input<String>? networkType;

  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// The ID of the resource group.
  final pulumi.Input<String>? resourceGroupId;

  /// The instance status. Valid values: `Creating`, `DBInstanceClassChanging`, `DBInstanceNetTypeChanging`, `Deleting`, `EngineVersionUpgrading`, `GuardSwitching`, `HASwitching`, `Importing`, `ImportingFromOthers`, `LinkSwitching`, `MinorVersionUpgrading`, `NodeCreating`, `NodeDeleting`, `Rebooting`, `Restoring`, `Running`, `SSLModifying`, `TDEModifying`, `TempDBInstanceCreating`, `Transing`, `TransingToOthers`, `released`.
  final pulumi.Input<String>? status;

  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// The ID of the VPC network.
  final pulumi.Input<String>? vpcId;

  /// The id of the vswitch.
  final pulumi.Input<String>? vswitchId;

  /// The ID of the zone.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [GetServerlessInstancesArgs].
  /// [dbInstanceClass] The db instance class.
  /// [dbInstanceDescription] The db instance description.
  /// [enableDetails] Default to `false`. Set it to `true` can output more details about resource attributes.
  /// [ids] A list of Serverless Instance IDs.
  /// [networkType] The network type of the instance. Valid values: `Classic` or `VPC`.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [resourceGroupId] The ID of the resource group.
  /// [status] The instance status. Valid values: `Creating`, `DBInstanceClassChanging`, `DBInstanceNetTypeChanging`, `Deleting`, `EngineVersionUpgrading`, `GuardSwitching`, `HASwitching`, `Importing`, `ImportingFromOthers`, `LinkSwitching`, `MinorVersionUpgrading`, `NodeCreating`, `NodeDeleting`, `Rebooting`, `Restoring`, `Running`, `SSLModifying`, `TDEModifying`, `TempDBInstanceCreating`, `Transing`, `TransingToOthers`, `released`.
  /// [tags] A mapping of tags to assign to the resource.
  /// [vpcId] The ID of the VPC network.
  /// [vswitchId] The id of the vswitch.
  /// [zoneId] The ID of the zone.
  GetServerlessInstancesArgs({
    this.dbInstanceClass,
    this.dbInstanceDescription,
    this.enableDetails,
    this.ids,
    this.networkType,
    this.outputFile,
    this.resourceGroupId,
    this.status,
    this.tags,
    this.vpcId,
    this.vswitchId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbInstanceClass': ?dbInstanceClass,
      'dbInstanceDescription': ?dbInstanceDescription,
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'networkType': ?networkType,
      'outputFile': ?outputFile,
      'resourceGroupId': ?resourceGroupId,
      'status': ?status,
      'tags': ?tags,
      'vpcId': ?vpcId,
      'vswitchId': ?vswitchId,
      'zoneId': ?zoneId,
    };
  }

  factory GetServerlessInstancesArgs.fromMap(Map<String, dynamic> map) {
    return GetServerlessInstancesArgs(
      dbInstanceClass: (() {
        final guardedValue = map['dbInstanceClass'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dbInstanceDescription: (() {
        final guardedValue = map['dbInstanceDescription'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enableDetails: (() {
        final guardedValue = map['enableDetails'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      networkType: (() {
        final guardedValue = map['networkType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupId: (() {
        final guardedValue = map['resourceGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      vpcId: (() {
        final guardedValue = map['vpcId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vswitchId: (() {
        final guardedValue = map['vswitchId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      zoneId: (() {
        final guardedValue = map['zoneId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
