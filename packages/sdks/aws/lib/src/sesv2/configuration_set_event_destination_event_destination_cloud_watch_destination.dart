// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_set_event_destination_event_destination_cloud_watch_destination_dimension_configuration.dart';

class ConfigurationSetEventDestinationEventDestinationCloudWatchDestination {
  /// An array of objects that define the dimensions to use when you send email events to Amazon CloudWatch. See `dimension_configuration` Block for details.
  final pulumi.Input<List<ConfigurationSetEventDestinationEventDestinationCloudWatchDestinationDimensionConfiguration>> dimensionConfigurations;

  /// Creates a new [ConfigurationSetEventDestinationEventDestinationCloudWatchDestination].
  /// [dimensionConfigurations] An array of objects that define the dimensions to use when you send email events to Amazon CloudWatch. See `dimension_configuration` Block for details.
  const ConfigurationSetEventDestinationEventDestinationCloudWatchDestination({
    required this.dimensionConfigurations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dimensionConfigurations': pulumi.Input.mapInputValue<List<ConfigurationSetEventDestinationEventDestinationCloudWatchDestinationDimensionConfiguration>, List<Map<String, dynamic>>>(dimensionConfigurations, (value) => pulumi.Input.encodeList<ConfigurationSetEventDestinationEventDestinationCloudWatchDestinationDimensionConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ConfigurationSetEventDestinationEventDestinationCloudWatchDestination.fromMap(Map<String, dynamic> map) {
    return ConfigurationSetEventDestinationEventDestinationCloudWatchDestination(
      dimensionConfigurations: pulumi.Input.fromValue(pulumi.Input.decodeList<ConfigurationSetEventDestinationEventDestinationCloudWatchDestinationDimensionConfiguration>(map['dimensionConfigurations']!, (value) => ConfigurationSetEventDestinationEventDestinationCloudWatchDestinationDimensionConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

