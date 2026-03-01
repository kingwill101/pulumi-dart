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
    String? dbInstanceClass,
    String? dbInstanceDescription,
    bool? enableDetails,
    List<String>? ids,
    String? networkType,
    String? outputFile,
    String? resourceGroupId,
    String? status,
    Map<String, String>? tags,
    String? vpcId,
    String? vswitchId,
    String? zoneId,
  }) :
      dbInstanceClass = pulumi.Input.asOptionalInput<String>(dbInstanceClass),
      dbInstanceDescription = pulumi.Input.asOptionalInput<String>(dbInstanceDescription),
      enableDetails = pulumi.Input.asOptionalInput<bool>(enableDetails),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      networkType = pulumi.Input.asOptionalInput<String>(networkType),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId),
      vswitchId = pulumi.Input.asOptionalInput<String>(vswitchId),
      zoneId = pulumi.Input.asOptionalInput<String>(zoneId);

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
      dbInstanceClass: map['dbInstanceClass'] == null ? null : map['dbInstanceClass'] as String,
      dbInstanceDescription: map['dbInstanceDescription'] == null ? null : map['dbInstanceDescription'] as String,
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails'] as bool,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      networkType: map['networkType'] == null ? null : map['networkType'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      vpcId: map['vpcId'] == null ? null : map['vpcId'] as String,
      vswitchId: map['vswitchId'] == null ? null : map['vswitchId'] as String,
      zoneId: map['zoneId'] == null ? null : map['zoneId'] as String,
    );
  }
}

