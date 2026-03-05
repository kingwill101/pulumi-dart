// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gpdb_db_resource_group_db_resource_group_args_doc}
/// The set of arguments for DbResourceGroup.
/// {@endtemplate}
/// {@macro pulumi_gpdb_db_resource_group_db_resource_group_args_doc}
class DbResourceGroupArgs {
  /// The instance ID.&gt; You can call the DescribeDBInstances operation to view the instance IDs of all AnalyticDB PostgreSQL instances in the target region.
  final pulumi.Input<String> dbInstanceId;
  /// Resource group configuration.
  final pulumi.Input<String> resourceGroupConfig;
  /// Resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// Role List
  final pulumi.Input<List<String>>? roleLists;

  /// Creates a new [DbResourceGroupArgs].
  /// [dbInstanceId] The instance ID.&gt; You can call the DescribeDBInstances operation to view the instance IDs of all AnalyticDB PostgreSQL instances in the target region.
  /// [resourceGroupConfig] Resource group configuration.
  /// [resourceGroupName] Resource group name.
  /// [roleLists] Role List
  DbResourceGroupArgs({
    required this.dbInstanceId,
    required this.resourceGroupConfig,
    required this.resourceGroupName,
    this.roleLists,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbInstanceId': dbInstanceId,
      'resourceGroupConfig': resourceGroupConfig,
      'resourceGroupName': resourceGroupName,
      'roleLists': ?roleLists,
    };
  }

  factory DbResourceGroupArgs.fromMap(Map<String, dynamic> map) {
    return DbResourceGroupArgs(
      dbInstanceId: pulumi.Input.fromValue(map['dbInstanceId'] as String),
      resourceGroupConfig: pulumi.Input.fromValue(map['resourceGroupConfig'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      roleLists: (() { final guardedValue = map['roleLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

