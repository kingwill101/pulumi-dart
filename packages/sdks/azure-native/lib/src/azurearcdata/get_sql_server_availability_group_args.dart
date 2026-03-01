// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azurearcdata_get_sql_server_availability_group_args_doc}
/// Arguments for getSqlServerAvailabilityGroup.
/// {@endtemplate}
/// {@macro pulumi_azurearcdata_get_sql_server_availability_group_args_doc}
class GetSqlServerAvailabilityGroupArgs {
  /// Name of SQL Availability Group
  final pulumi.Input<String> availabilityGroupName;
  /// The name of the Azure resource group
  final pulumi.Input<String> resourceGroupName;
  /// Name of SQL Server Instance
  final pulumi.Input<String> sqlServerInstanceName;

  /// Creates a new [GetSqlServerAvailabilityGroupArgs].
  /// [availabilityGroupName] Name of SQL Availability Group
  /// [resourceGroupName] The name of the Azure resource group
  /// [sqlServerInstanceName] Name of SQL Server Instance
  GetSqlServerAvailabilityGroupArgs({
    required pulumi.Output<String> availabilityGroupName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> sqlServerInstanceName,
  }) :
      availabilityGroupName = pulumi.Input.asInput<String>(availabilityGroupName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sqlServerInstanceName = pulumi.Input.asInput<String>(sqlServerInstanceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityGroupName': availabilityGroupName,
      'resourceGroupName': resourceGroupName,
      'sqlServerInstanceName': sqlServerInstanceName,
    };
  }

  factory GetSqlServerAvailabilityGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetSqlServerAvailabilityGroupArgs(
      availabilityGroupName: pulumi.Output.create<String>(map['availabilityGroupName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sqlServerInstanceName: pulumi.Output.create<String>(map['sqlServerInstanceName'] as String),
    );
  }
}

