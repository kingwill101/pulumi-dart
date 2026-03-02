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
      dbInstanceClass: map['dbInstanceClass'] == null ? null : (map['dbInstanceClass'] as String).input(),
      dbInstanceDescription: map['dbInstanceDescription'] == null ? null : (map['dbInstanceDescription'] as String).input(),
      enableDetails: map['enableDetails'] == null ? null : (map['enableDetails'] as bool).input(),
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      networkType: map['networkType'] == null ? null : (map['networkType'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId'] as String).input(),
      vswitchId: map['vswitchId'] == null ? null : (map['vswitchId'] as String).input(),
      zoneId: map['zoneId'] == null ? null : (map['zoneId'] as String).input(),
    );
  }
}

