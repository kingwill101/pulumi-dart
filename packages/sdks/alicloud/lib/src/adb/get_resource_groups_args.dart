// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_adb_get_resource_groups_get_resource_groups_args_doc}
/// Arguments for getResourceGroups.
/// {@endtemplate}
/// {@macro pulumi_adb_get_resource_groups_get_resource_groups_args_doc}
class GetResourceGroupsArgs {
  /// DBClusterId
  final pulumi.Input<String> dbClusterId;
  /// The name of the resource pool, which cannot exceed 64 bytes in length.
  final pulumi.Input<String>? groupName;
  /// A list of AnalyticDB for MySQL (ADB) Resource Group IDs.
  final pulumi.Input<List<String>>? ids;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetResourceGroupsArgs].
  /// [dbClusterId] DBClusterId
  /// [groupName] The name of the resource pool, which cannot exceed 64 bytes in length.
  /// [ids] A list of AnalyticDB for MySQL (ADB) Resource Group IDs.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetResourceGroupsArgs({
    required pulumi.Output<String> dbClusterId,
    pulumi.Output<String>? groupName,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? outputFile,
  }) :
      dbClusterId = pulumi.Input.asInput<String>(dbClusterId),
      groupName = pulumi.Input.asOptionalInput<String>(groupName),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbClusterId': dbClusterId,
      'groupName': ?groupName,
      'ids': ?ids,
      'outputFile': ?outputFile,
    };
  }

  factory GetResourceGroupsArgs.fromMap(Map<String, dynamic> map) {
    return GetResourceGroupsArgs(
      dbClusterId: pulumi.Output.create<String>(map['dbClusterId'] as String),
      groupName: map['groupName'] == null ? null : pulumi.Output.create<String>(map['groupName'] as String),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
    );
  }
}

