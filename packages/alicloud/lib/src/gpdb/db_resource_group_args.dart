// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gpdb_db_resource_group_db_resource_group_args_doc}
/// The set of arguments for DbResourceGroup.
/// {@endtemplate}
/// {@macro pulumi_gpdb_db_resource_group_db_resource_group_args_doc}
class DbResourceGroupArgs {
  /// The instance ID.> You can call the DescribeDBInstances operation to view the instance IDs of all AnalyticDB PostgreSQL instances in the target region.
  final pulumi.Input<String> dbInstanceId;
  /// Resource group configuration.
  final pulumi.Input<String> resourceGroupConfig;
  /// Resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// Role List
  final pulumi.Input<List<String>>? roleLists;

  /// Creates a new [DbResourceGroupArgs].
  /// [dbInstanceId] The instance ID.> You can call the DescribeDBInstances operation to view the instance IDs of all AnalyticDB PostgreSQL instances in the target region.
  /// [resourceGroupConfig] Resource group configuration.
  /// [resourceGroupName] Resource group name.
  /// [roleLists] Role List
  DbResourceGroupArgs({
    required String dbInstanceId,
    required String resourceGroupConfig,
    required String resourceGroupName,
    List<String>? roleLists,
  }) :
      dbInstanceId = pulumi.Input.asInput<String>(dbInstanceId),
      resourceGroupConfig = pulumi.Input.asInput<String>(resourceGroupConfig),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      roleLists = pulumi.Input.asOptionalInput<List<String>>(roleLists);

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
      dbInstanceId: map['dbInstanceId'] as String,
      resourceGroupConfig: map['resourceGroupConfig'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      roleLists: map['roleLists'] == null ? null : (map['roleLists'] as List).cast<String>(),
    );
  }
}

