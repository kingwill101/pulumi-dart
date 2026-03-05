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
    required this.dbClusterId,
    this.groupName,
    this.ids,
    this.outputFile,
  });

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
      dbClusterId: pulumi.Input.fromValue(map['dbClusterId'] as String),
      groupName: (() { final guardedValue = map['groupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

