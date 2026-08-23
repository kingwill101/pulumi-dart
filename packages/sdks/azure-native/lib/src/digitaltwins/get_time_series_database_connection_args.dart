// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_digitaltwins_get_time_series_database_connection_args_doc}
/// Arguments for getTimeSeriesDatabaseConnection.
/// {@endtemplate}
/// {@macro pulumi_digitaltwins_get_time_series_database_connection_args_doc}
class GetTimeSeriesDatabaseConnectionArgs {
  /// The name of the resource group that contains the DigitalTwinsInstance.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the DigitalTwinsInstance.
  final pulumi.Input<String> resourceName;
  /// Name of time series database connection.
  final pulumi.Input<String> timeSeriesDatabaseConnectionName;

  /// Creates a new [GetTimeSeriesDatabaseConnectionArgs].
  /// [resourceGroupName] The name of the resource group that contains the DigitalTwinsInstance.
  /// [resourceName] The name of the DigitalTwinsInstance.
  /// [timeSeriesDatabaseConnectionName] Name of time series database connection.
  const GetTimeSeriesDatabaseConnectionArgs({
    required this.resourceGroupName,
    required this.resourceName,
    required this.timeSeriesDatabaseConnectionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
      'timeSeriesDatabaseConnectionName': timeSeriesDatabaseConnectionName,
    };
  }

  factory GetTimeSeriesDatabaseConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetTimeSeriesDatabaseConnectionArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
      timeSeriesDatabaseConnectionName: pulumi.Input.fromValue(map['timeSeriesDatabaseConnectionName'] as String),
    );
  }
}
