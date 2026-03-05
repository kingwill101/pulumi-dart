// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azurearcdata_get_sql_server_availability_group_detail_view_args_doc}
/// Arguments for getSqlServerAvailabilityGroupDetailView.
/// {@endtemplate}
/// {@macro pulumi_azurearcdata_get_sql_server_availability_group_detail_view_args_doc}
class GetSqlServerAvailabilityGroupDetailViewArgs {
  /// Name of SQL Availability Group
  final pulumi.Input<String> availabilityGroupName;
  /// The name of the Azure resource group
  final pulumi.Input<String> resourceGroupName;
  /// Name of SQL Server Instance
  final pulumi.Input<String> sqlServerInstanceName;

  /// Creates a new [GetSqlServerAvailabilityGroupDetailViewArgs].
  /// [availabilityGroupName] Name of SQL Availability Group
  /// [resourceGroupName] The name of the Azure resource group
  /// [sqlServerInstanceName] Name of SQL Server Instance
  GetSqlServerAvailabilityGroupDetailViewArgs({
    required this.availabilityGroupName,
    required this.resourceGroupName,
    required this.sqlServerInstanceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityGroupName': availabilityGroupName,
      'resourceGroupName': resourceGroupName,
      'sqlServerInstanceName': sqlServerInstanceName,
    };
  }

  factory GetSqlServerAvailabilityGroupDetailViewArgs.fromMap(Map<String, dynamic> map) {
    return GetSqlServerAvailabilityGroupDetailViewArgs(
      availabilityGroupName: pulumi.Input.fromValue(map['availabilityGroupName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sqlServerInstanceName: pulumi.Input.fromValue(map['sqlServerInstanceName'] as String),
    );
  }
}

