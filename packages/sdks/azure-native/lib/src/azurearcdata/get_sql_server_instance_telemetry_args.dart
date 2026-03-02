// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azurearcdata_get_sql_server_instance_telemetry_args_doc}
/// Arguments for getSqlServerInstanceTelemetry.
/// {@endtemplate}
/// {@macro pulumi_azurearcdata_get_sql_server_instance_telemetry_args_doc}
class GetSqlServerInstanceTelemetryArgs {
  /// The aggregation type to use for the numerical columns in the dataset.
  final pulumi.Input<String>? aggregationType;
  /// The list of database names to return telemetry for. If not specified, telemetry for all databases will be aggregated and returned.
  final pulumi.Input<List<String>>? databaseNames;
  /// The name of the telemetry dataset to retrieve.
  final pulumi.Input<String> datasetName;
  /// The end time for the time range to fetch telemetry for. If not specified, the current time is used.
  final pulumi.Input<String>? endTime;
  /// The time granularity to fetch telemetry for. This is an ISO8601 duration. Examples: PT15M, PT1H, P1D
  final pulumi.Input<String>? interval;
  /// The name of the Azure resource group
  final pulumi.Input<String> resourceGroupName;
  /// Name of SQL Server Instance
  final pulumi.Input<String> sqlServerInstanceName;
  /// The start time for the time range to fetch telemetry for. If not specified, the current time minus 1 hour is used.
  final pulumi.Input<String>? startTime;

  /// Creates a new [GetSqlServerInstanceTelemetryArgs].
  /// [aggregationType] The aggregation type to use for the numerical columns in the dataset.
  /// [databaseNames] The list of database names to return telemetry for. If not specified, telemetry for all databases will be aggregated and returned.
  /// [datasetName] The name of the telemetry dataset to retrieve.
  /// [endTime] The end time for the time range to fetch telemetry for. If not specified, the current time is used.
  /// [interval] The time granularity to fetch telemetry for. This is an ISO8601 duration. Examples: PT15M, PT1H, P1D
  /// [resourceGroupName] The name of the Azure resource group
  /// [sqlServerInstanceName] Name of SQL Server Instance
  /// [startTime] The start time for the time range to fetch telemetry for. If not specified, the current time minus 1 hour is used.
  GetSqlServerInstanceTelemetryArgs({
    this.aggregationType,
    this.databaseNames,
    required this.datasetName,
    this.endTime,
    this.interval,
    required this.resourceGroupName,
    required this.sqlServerInstanceName,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregationType': ?aggregationType,
      'databaseNames': ?databaseNames,
      'datasetName': datasetName,
      'endTime': ?endTime,
      'interval': ?interval,
      'resourceGroupName': resourceGroupName,
      'sqlServerInstanceName': sqlServerInstanceName,
      'startTime': ?startTime,
    };
  }

  factory GetSqlServerInstanceTelemetryArgs.fromMap(Map<String, dynamic> map) {
    return GetSqlServerInstanceTelemetryArgs(
      aggregationType: map['aggregationType'] == null ? null : (map['aggregationType'] as String).input(),
      databaseNames: map['databaseNames'] == null ? null : ((map['databaseNames'] as List).cast<String>()).input(),
      datasetName: (map['datasetName'] as String).input(),
      endTime: map['endTime'] == null ? null : (map['endTime'] as String).input(),
      interval: map['interval'] == null ? null : (map['interval'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      sqlServerInstanceName: (map['sqlServerInstanceName'] as String).input(),
      startTime: map['startTime'] == null ? null : (map['startTime'] as String).input(),
    );
  }
}

