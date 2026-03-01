// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azurearcdata_get_sql_server_instance_jobs_status_args_doc}
/// Arguments for getSqlServerInstanceJobsStatus.
/// {@endtemplate}
/// {@macro pulumi_azurearcdata_get_sql_server_instance_jobs_status_args_doc}
class GetSqlServerInstanceJobsStatusArgs {
  /// The name of the feature to retrieve the job status for.
  final pulumi.Input<String>? featureName;
  /// The type of the job to retrieve the status for.
  final pulumi.Input<String>? jobType;
  /// The name of the Azure resource group
  final pulumi.Input<String> resourceGroupName;
  /// Name of SQL Server Instance
  final pulumi.Input<String> sqlServerInstanceName;

  /// Creates a new [GetSqlServerInstanceJobsStatusArgs].
  /// [featureName] The name of the feature to retrieve the job status for.
  /// [jobType] The type of the job to retrieve the status for.
  /// [resourceGroupName] The name of the Azure resource group
  /// [sqlServerInstanceName] Name of SQL Server Instance
  GetSqlServerInstanceJobsStatusArgs({
    String? featureName,
    String? jobType,
    required String resourceGroupName,
    required String sqlServerInstanceName,
  }) :
      featureName = pulumi.Input.asOptionalInput<String>(featureName),
      jobType = pulumi.Input.asOptionalInput<String>(jobType),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sqlServerInstanceName = pulumi.Input.asInput<String>(sqlServerInstanceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'featureName': ?featureName,
      'jobType': ?jobType,
      'resourceGroupName': resourceGroupName,
      'sqlServerInstanceName': sqlServerInstanceName,
    };
  }

  factory GetSqlServerInstanceJobsStatusArgs.fromMap(Map<String, dynamic> map) {
    return GetSqlServerInstanceJobsStatusArgs(
      featureName: map['featureName'] == null ? null : map['featureName'] as String,
      jobType: map['jobType'] == null ? null : map['jobType'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      sqlServerInstanceName: map['sqlServerInstanceName'] as String,
    );
  }
}

