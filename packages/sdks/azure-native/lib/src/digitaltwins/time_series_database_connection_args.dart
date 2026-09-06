// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_data_explorer_connection_properties.dart';

/// {@template pulumi_digitaltwins_time_series_database_connection_args_doc}
/// The set of arguments for TimeSeriesDatabaseConnection.
/// {@endtemplate}
/// {@macro pulumi_digitaltwins_time_series_database_connection_args_doc}
class TimeSeriesDatabaseConnectionArgs {
  /// Properties of a specific time series database connection.
  final pulumi.Input<AzureDataExplorerConnectionProperties?>? properties;
  /// The name of the resource group that contains the DigitalTwinsInstance.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the DigitalTwinsInstance.
  final pulumi.Input<String> resourceName;
  /// Name of time series database connection.
  final pulumi.Input<String?>? timeSeriesDatabaseConnectionName;

  /// Creates a new [TimeSeriesDatabaseConnectionArgs].
  /// [properties] Properties of a specific time series database connection.
  /// [resourceGroupName] The name of the resource group that contains the DigitalTwinsInstance.
  /// [resourceName] The name of the DigitalTwinsInstance.
  /// [timeSeriesDatabaseConnectionName] Name of time series database connection.
  const TimeSeriesDatabaseConnectionArgs({
    this.properties,
    required this.resourceGroupName,
    required this.resourceName,
    this.timeSeriesDatabaseConnectionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': ?pulumi.Input.mapOptionalInputValue<AzureDataExplorerConnectionProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
      'timeSeriesDatabaseConnectionName': ?timeSeriesDatabaseConnectionName,
    };
  }

  factory TimeSeriesDatabaseConnectionArgs.fromMap(Map<String, dynamic> map) {
    return TimeSeriesDatabaseConnectionArgs(
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureDataExplorerConnectionProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
      timeSeriesDatabaseConnectionName: (() { final guardedValue = map['timeSeriesDatabaseConnectionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
