// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../configuration_set_event_destination_event_destination_cloud_watch_destination_dimension_configuration/configuration_set_event_destination_event_destination_cloud_watch_destination_dimension_configuration.dart';

class ConfigurationSetEventDestinationEventDestinationCloudWatchDestination {
  /// An array of objects that define the dimensions to use when you send email events to Amazon CloudWatch. See `dimension_configuration` Block for details.
  final List<
          ConfigurationSetEventDestinationEventDestinationCloudWatchDestinationDimensionConfiguration>
      dimensionConfigurations;

  ConfigurationSetEventDestinationEventDestinationCloudWatchDestination({
    required this.dimensionConfigurations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dimensionConfigurations'] = pulumi.Input.encodeList<
        ConfigurationSetEventDestinationEventDestinationCloudWatchDestinationDimensionConfiguration,
        Map<String,
            dynamic>>(dimensionConfigurations, (value) => value.toMap());
    return map;
  }

  factory ConfigurationSetEventDestinationEventDestinationCloudWatchDestination.fromMap(
      Map<String, dynamic> map) {
    return ConfigurationSetEventDestinationEventDestinationCloudWatchDestination(
      dimensionConfigurations: pulumi.Input.decodeList<
              ConfigurationSetEventDestinationEventDestinationCloudWatchDestinationDimensionConfiguration>(
          map['dimensionConfigurations'],
          (value) =>
              ConfigurationSetEventDestinationEventDestinationCloudWatchDestinationDimensionConfiguration
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
