// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gpdb_get_instances_get_instances_args_doc}
/// Arguments for getInstances.
/// {@endtemplate}
/// {@macro pulumi_gpdb_get_instances_get_instances_args_doc}
class GetInstancesArgs {
  /// Instance availability zone.
  final pulumi.Input<String>? availabilityZone;
  /// The db instance categories.
  final pulumi.Input<String>? dbInstanceCategories;
  /// The db instance modes.
  final pulumi.Input<String>? dbInstanceModes;
  /// The description of the instance.
  final pulumi.Input<String>? description;
  /// Default to `false`. Set it to `true` can output more details about resource attributes.
  final pulumi.Input<bool>? enableDetails;
  /// The ids list of AnalyticDB for PostgreSQL instances.
  final pulumi.Input<List<String>>? ids;
  /// The network type of the instance.
  final pulumi.Input<String>? instanceNetworkType;
  /// A regex string to apply to the instance name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The ID of the enterprise resource group to which the instance belongs.
  final pulumi.Input<String>? resourceGroupId;
  /// The status of the instance. Valid values: `Creating`, `DBInstanceClassChanging`, `DBInstanceNetTypeChanging`, `Deleting`, `EngineVersionUpgrading`, `GuardDBInstanceCreating`, `GuardSwitching`, `Importing`, `ImportingFromOtherInstance`, `Rebooting`, `Restoring`, `Running`, `Transfering`, `TransferingToOtherInstance`.
  final pulumi.Input<String>? status;
  final pulumi.Input<Map<String, String>>? tags;
  /// Used to retrieve instances belong to specified `vswitch` resources.
  final pulumi.Input<String>? vswitchId;

  /// Creates a new [GetInstancesArgs].
  /// [availabilityZone] Instance availability zone.
  /// [dbInstanceCategories] The db instance categories.
  /// [dbInstanceModes] The db instance modes.
  /// [description] The description of the instance.
  /// [enableDetails] Default to `false`. Set it to `true` can output more details about resource attributes.
  /// [ids] The ids list of AnalyticDB for PostgreSQL instances.
  /// [instanceNetworkType] The network type of the instance.
  /// [nameRegex] A regex string to apply to the instance name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [resourceGroupId] The ID of the enterprise resource group to which the instance belongs.
  /// [status] The status of the instance. Valid values: `Creating`, `DBInstanceClassChanging`, `DBInstanceNetTypeChanging`, `Deleting`, `EngineVersionUpgrading`, `GuardDBInstanceCreating`, `GuardSwitching`, `Importing`, `ImportingFromOtherInstance`, `Rebooting`, `Restoring`, `Running`, `Transfering`, `TransferingToOtherInstance`.
  /// [tags] Optional.
  /// [vswitchId] Used to retrieve instances belong to specified `vswitch` resources.
  GetInstancesArgs({
    this.availabilityZone,
    this.dbInstanceCategories,
    this.dbInstanceModes,
    this.description,
    this.enableDetails,
    this.ids,
    this.instanceNetworkType,
    this.nameRegex,
    this.outputFile,
    this.resourceGroupId,
    this.status,
    this.tags,
    this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZone': ?availabilityZone,
      'dbInstanceCategories': ?dbInstanceCategories,
      'dbInstanceModes': ?dbInstanceModes,
      'description': ?description,
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'instanceNetworkType': ?instanceNetworkType,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'resourceGroupId': ?resourceGroupId,
      'status': ?status,
      'tags': ?tags,
      'vswitchId': ?vswitchId,
    };
  }

  factory GetInstancesArgs.fromMap(Map<String, dynamic> map) {
    return GetInstancesArgs(
      availabilityZone: map['availabilityZone'] == null ? null : (map['availabilityZone'] as String).input(),
      dbInstanceCategories: map['dbInstanceCategories'] == null ? null : (map['dbInstanceCategories'] as String).input(),
      dbInstanceModes: map['dbInstanceModes'] == null ? null : (map['dbInstanceModes'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      enableDetails: map['enableDetails'] == null ? null : (map['enableDetails'] as bool).input(),
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      instanceNetworkType: map['instanceNetworkType'] == null ? null : (map['instanceNetworkType'] as String).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      vswitchId: map['vswitchId'] == null ? null : (map['vswitchId'] as String).input(),
    );
  }
}

