// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kusto_list_database_principals_args_doc}
/// Arguments for listDatabasePrincipals.
/// {@endtemplate}
/// {@macro pulumi_kusto_list_database_principals_args_doc}
class ListDatabasePrincipalsArgs {
  /// The name of the Kusto cluster.
  final pulumi.Input<String> clusterName;
  /// The name of the database in the Kusto cluster.
  final pulumi.Input<String> databaseName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListDatabasePrincipalsArgs].
  /// [clusterName] The name of the Kusto cluster.
  /// [databaseName] The name of the database in the Kusto cluster.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  ListDatabasePrincipalsArgs({
    required pulumi.Output<String> clusterName,
    required pulumi.Output<String> databaseName,
    required pulumi.Output<String> resourceGroupName,
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

  factory ListDatabasePrincipalsArgs.fromMap(Map<String, dynamic> map) {
    return ListDatabasePrincipalsArgs(
      clusterName: pulumi.Output.create<String>(map['clusterName'] as String),
      databaseName: pulumi.Output.create<String>(map['databaseName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

