// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_data_explorer_connection_properties.dart';

/// {@template pulumi_digitaltwins_time_series_database_connection_args_doc}
/// The set of arguments for TimeSeriesDatabaseConnection.
/// {@endtemplate}
/// {@macro pulumi_digitaltwins_time_series_database_connection_args_doc}
class TimeSeriesDatabaseConnectionArgs {
  /// Properties of a specific time series database connection.
  final pulumi.Input<AzureDataExplorerConnectionProperties>? properties;
  /// The name of the resource group that contains the DigitalTwinsInstance.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the DigitalTwinsInstance.
  final pulumi.Input<String> resourceName;
  /// Name of time series database connection.
  final pulumi.Input<String>? timeSeriesDatabaseConnectionName;

  /// Creates a new [TimeSeriesDatabaseConnectionArgs].
  /// [properties] Properties of a specific time series database connection.
  /// [resourceGroupName] The name of the resource group that contains the DigitalTwinsInstance.
  /// [resourceName] The name of the DigitalTwinsInstance.
  /// [timeSeriesDatabaseConnectionName] Name of time series database connection.
  TimeSeriesDatabaseConnectionArgs({
    pulumi.Output<AzureDataExplorerConnectionProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> resourceName,
    pulumi.Output<String>? timeSeriesDatabaseConnectionName,
  }) :
      properties = pulumi.Input.asOptionalInput<AzureDataExplorerConnectionProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName),
      timeSeriesDatabaseConnectionName = pulumi.Input.asOptionalInput<String>(timeSeriesDatabaseConnectionName);

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
      properties: map['properties'] == null ? null : pulumi.Output.create<AzureDataExplorerConnectionProperties>(AzureDataExplorerConnectionProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceName: pulumi.Output.create<String>(map['resourceName'] as String),
      timeSeriesDatabaseConnectionName: map['timeSeriesDatabaseConnectionName'] == null ? null : pulumi.Output.create<String>(map['timeSeriesDatabaseConnectionName'] as String),
    );
  }
}

