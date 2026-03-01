// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kusto_get_read_only_following_database_args_doc}
/// Arguments for getReadOnlyFollowingDatabase.
/// {@endtemplate}
/// {@macro pulumi_kusto_get_read_only_following_database_args_doc}
class GetReadOnlyFollowingDatabaseArgs {
  /// The name of the Kusto cluster.
  final pulumi.Input<String> clusterName;
  /// The name of the database in the Kusto cluster.
  final pulumi.Input<String> databaseName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetReadOnlyFollowingDatabaseArgs].
  /// [clusterName] The name of the Kusto cluster.
  /// [databaseName] The name of the database in the Kusto cluster.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetReadOnlyFollowingDatabaseArgs({
    required String clusterName,
    required String databaseName,
    required String resourceGroupName,
  }) :
      clusterName = pulumi.Input.asInput<String>(clusterName),
      databaseName = pulumi.Input.asInput<String>(databaseName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'databaseName': databaseName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetReadOnlyFollowingDatabaseArgs.fromMap(Map<String, dynamic> map) {
    return GetReadOnlyFollowingDatabaseArgs(
      clusterName: map['clusterName'] as String,
      databaseName: map['databaseName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

