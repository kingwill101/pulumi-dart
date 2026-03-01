// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_streamanalytics_reference_input_mssql_reference_input_mssql_args_doc}
/// The set of arguments for ReferenceInputMssql.
/// {@endtemplate}
/// {@macro pulumi_streamanalytics_reference_input_mssql_reference_input_mssql_args_doc}
class ReferenceInputMssqlArgs {
  /// The MS SQL database name where the reference data exists.
  final pulumi.Input<String> database;
  /// The query used to retrieve incremental changes in the reference data from the MS SQL database. Cannot be set when `refresh_type` is `Static`.
  final pulumi.Input<String>? deltaSnapshotQuery;
  /// The query used to retrieve the reference data from the MS SQL database.
  final pulumi.Input<String> fullSnapshotQuery;
  /// The name of the Reference Input MS SQL data. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The password to connect to the MS SQL database.
  final pulumi.Input<String> password;
  /// The frequency in `hh:mm:ss` with which the reference data should be retrieved from the MS SQL database e.g. `00:20:00` for every 20 minutes. Must be set when `refresh_type` is `RefreshPeriodicallyWithFull` or `RefreshPeriodicallyWithDelta`.
  final pulumi.Input<String>? refreshIntervalDuration;
  /// Defines whether and how the reference data should be refreshed. Accepted values are `Static`, `RefreshPeriodicallyWithFull` and `RefreshPeriodicallyWithDelta`.
  final pulumi.Input<String> refreshType;
  /// The name of the Resource Group where the Stream Analytics Job should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The fully qualified domain name of the MS SQL server.
  final pulumi.Input<String> server;
  /// The name of the Stream Analytics Job. Changing this forces a new resource to be created.
  final pulumi.Input<String> streamAnalyticsJobName;
  /// The name of the table in the Azure SQL database.
  final pulumi.Input<String>? table;
  /// The username to connect to the MS SQL database.
  final pulumi.Input<String> username;

  /// Creates a new [ReferenceInputMssqlArgs].
  /// [database] The MS SQL database name where the reference data exists.
  /// [deltaSnapshotQuery] The query used to retrieve incremental changes in the reference data from the MS SQL database. Cannot be set when `refresh_type` is `Static`.
  /// [fullSnapshotQuery] The query used to retrieve the reference data from the MS SQL database.
  /// [name] The name of the Reference Input MS SQL data. Changing this forces a new resource to be created.
  /// [password] The password to connect to the MS SQL database.
  /// [refreshIntervalDuration] The frequency in `hh:mm:ss` with which the reference data should be retrieved from the MS SQL database e.g. `00:20:00` for every 20 minutes. Must be set when `refresh_type` is `RefreshPeriodicallyWithFull` or `RefreshPeriodicallyWithDelta`.
  /// [refreshType] Defines whether and how the reference data should be refreshed. Accepted values are `Static`, `RefreshPeriodicallyWithFull` and `RefreshPeriodicallyWithDelta`.
  /// [resourceGroupName] The name of the Resource Group where the Stream Analytics Job should exist. Changing this forces a new resource to be created.
  /// [server] The fully qualified domain name of the MS SQL server.
  /// [streamAnalyticsJobName] The name of the Stream Analytics Job. Changing this forces a new resource to be created.
  /// [table] The name of the table in the Azure SQL database.
  /// [username] The username to connect to the MS SQL database.
  ReferenceInputMssqlArgs({
    required String database,
    String? deltaSnapshotQuery,
    required String fullSnapshotQuery,
    String? name,
    required String password,
    String? refreshIntervalDuration,
    required String refreshType,
    required String resourceGroupName,
    required String server,
    required String streamAnalyticsJobName,
    String? table,
    required String username,
  }) :
      database = pulumi.Input.asInput<String>(database),
      deltaSnapshotQuery = pulumi.Input.asOptionalInput<String>(deltaSnapshotQuery),
      fullSnapshotQuery = pulumi.Input.asInput<String>(fullSnapshotQuery),
      name = pulumi.Input.asOptionalInput<String>(name),
      password = pulumi.Input.asInput<String>(password),
      refreshIntervalDuration = pulumi.Input.asOptionalInput<String>(refreshIntervalDuration),
      refreshType = pulumi.Input.asInput<String>(refreshType),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      server = pulumi.Input.asInput<String>(server),
      streamAnalyticsJobName = pulumi.Input.asInput<String>(streamAnalyticsJobName),
      table = pulumi.Input.asOptionalInput<String>(table),
      username = pulumi.Input.asInput<String>(username);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'database': database,
      'deltaSnapshotQuery': ?deltaSnapshotQuery,
      'fullSnapshotQuery': fullSnapshotQuery,
      'name': ?name,
      'password': password,
      'refreshIntervalDuration': ?refreshIntervalDuration,
      'refreshType': refreshType,
      'resourceGroupName': resourceGroupName,
      'server': server,
      'streamAnalyticsJobName': streamAnalyticsJobName,
      'table': ?table,
      'username': username,
    };
  }

  factory ReferenceInputMssqlArgs.fromMap(Map<String, dynamic> map) {
    return ReferenceInputMssqlArgs(
      database: map['database'] as String,
      deltaSnapshotQuery: map['deltaSnapshotQuery'] == null ? null : map['deltaSnapshotQuery'] as String,
      fullSnapshotQuery: map['fullSnapshotQuery'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      password: map['password'] as String,
      refreshIntervalDuration: map['refreshIntervalDuration'] == null ? null : map['refreshIntervalDuration'] as String,
      refreshType: map['refreshType'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      server: map['server'] as String,
      streamAnalyticsJobName: map['streamAnalyticsJobName'] as String,
      table: map['table'] == null ? null : map['table'] as String,
      username: map['username'] as String,
    );
  }
}

