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
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> sqlManagedInstanceName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sqlManagedInstanceName = pulumi.Input.asInput<String>(sqlManagedInstanceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'sqlManagedInstanceName': sqlManagedInstanceName,
    };
  }

  factory GetSqlManagedInstanceArgs.fromMap(Map<String, dynamic> map) {
    return GetSqlManagedInstanceArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sqlManagedInstanceName: pulumi.Output.create<String>(map['sqlManagedInstanceName'] as String),
    );
  }
}

