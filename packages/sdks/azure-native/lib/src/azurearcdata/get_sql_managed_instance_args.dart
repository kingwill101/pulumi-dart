// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azurearcdata_get_sql_managed_instance_args_doc}
/// Arguments for getSqlManagedInstance.
/// {@endtemplate}
/// {@macro pulumi_azurearcdata_get_sql_managed_instance_args_doc}
class GetSqlManagedInstanceArgs {
  /// The name of the Azure resource group
  final pulumi.Input<String> resourceGroupName;
  /// Name of SQL Managed Instance
  final pulumi.Input<String> sqlManagedInstanceName;

  /// Creates a new [GetSqlManagedInstanceArgs].
  /// [resourceGroupName] The name of the Azure resource group
  /// [sqlManagedInstanceName] Name of SQL Managed Instance
  GetSqlManagedInstanceArgs({
    required this.resourceGroupName,
    required this.sqlManagedInstanceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'sqlManagedInstanceName': sqlManagedInstanceName,
    };
  }

  factory GetSqlManagedInstanceArgs.fromMap(Map<String, dynamic> map) {
    return GetSqlManagedInstanceArgs(
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      sqlManagedInstanceName: (map['sqlManagedInstanceName'] as String).input(),
    );
  }
}

