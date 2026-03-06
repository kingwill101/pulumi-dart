// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kusto_get_database_principal_assignment_args_doc}
/// Arguments for getDatabasePrincipalAssignment.
/// {@endtemplate}
/// {@macro pulumi_kusto_get_database_principal_assignment_args_doc}
class GetDatabasePrincipalAssignmentArgs {
  /// The name of the Kusto cluster.
  final pulumi.Input<String> clusterName;
  /// The name of the database in the Kusto cluster.
  final pulumi.Input<String> databaseName;
  /// The name of the Kusto principalAssignment.
  final pulumi.Input<String> principalAssignmentName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDatabasePrincipalAssignmentArgs].
  /// [clusterName] The name of the Kusto cluster.
  /// [databaseName] The name of the database in the Kusto cluster.
  /// [principalAssignmentName] The name of the Kusto principalAssignment.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetDatabasePrincipalAssignmentArgs({
    required this.clusterName,
    required this.databaseName,
    required this.principalAssignmentName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'databaseName': databaseName,
      'principalAssignmentName': principalAssignmentName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDatabasePrincipalAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return GetDatabasePrincipalAssignmentArgs(
      clusterName: pulumi.Input.fromValue(map['clusterName'] as String),
      databaseName: pulumi.Input.fromValue(map['databaseName'] as String),
      principalAssignmentName: pulumi.Input.fromValue(map['principalAssignmentName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

