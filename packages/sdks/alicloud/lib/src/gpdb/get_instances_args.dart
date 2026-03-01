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
    pulumi.Output<String>? availabilityZone,
    pulumi.Output<String>? dbInstanceCategories,
    pulumi.Output<String>? dbInstanceModes,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? enableDetails,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? instanceNetworkType,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? vswitchId,
  }) :
      availabilityZone = pulumi.Input.asOptionalInput<String>(availabilityZone),
      dbInstanceCategories = pulumi.Input.asOptionalInput<String>(dbInstanceCategories),
      dbInstanceModes = pulumi.Input.asOptionalInput<String>(dbInstanceModes),
      description = pulumi.Input.asOptionalInput<String>(description),
      enableDetails = pulumi.Input.asOptionalInput<bool>(enableDetails),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      instanceNetworkType = pulumi.Input.asOptionalInput<String>(instanceNetworkType),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vswitchId = pulumi.Input.asOptionalInput<String>(vswitchId);

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
      availabilityZone: map['availabilityZone'] == null ? null : pulumi.Output.create<String>(map['availabilityZone'] as String),
      dbInstanceCategories: map['dbInstanceCategories'] == null ? null : pulumi.Output.create<String>(map['dbInstanceCategories'] as String),
      dbInstanceModes: map['dbInstanceModes'] == null ? null : pulumi.Output.create<String>(map['dbInstanceModes'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      enableDetails: map['enableDetails'] == null ? null : pulumi.Output.create<bool>(map['enableDetails'] as bool),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      instanceNetworkType: map['instanceNetworkType'] == null ? null : pulumi.Output.create<String>(map['instanceNetworkType'] as String),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      vswitchId: map['vswitchId'] == null ? null : pulumi.Output.create<String>(map['vswitchId'] as String),
    );
  }
}

