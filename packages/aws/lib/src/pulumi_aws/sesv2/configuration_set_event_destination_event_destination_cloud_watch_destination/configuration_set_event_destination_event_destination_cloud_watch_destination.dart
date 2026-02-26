// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../configuration_set_event_destination_event_destination_cloud_watch_destination_dimension_configuration/configuration_set_event_destination_event_destination_cloud_watch_destination_dimension_configuration.dart';

class ConfigurationSetEventDestinationEventDestinationCloudWatchDestination {
  /// An array of objects that define the dimensions to use when you send email events to Amazon CloudWatch. See <span pulumi-lang-nodejs="`dimensionConfiguration`" pulumi-lang-dotnet="`DimensionConfiguration`" pulumi-lang-go="`dimensionConfiguration`" pulumi-lang-python="`dimension_configuration`" pulumi-lang-yaml="`dimensionConfiguration`" pulumi-lang-java="`dimensionConfiguration`">`dimension_configuration`</span> Block for details.
  final List<
          ConfigurationSetEventDestinationEventDestinationCloudWatchDestinationDimensionConfiguration>
      dimensionConfigurations;

  ConfigurationSetEventDestinationEventDestinationCloudWatchDestination({
    required this.dimensionConfigurations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dimensionConfigurations'] = Input.encodeList<
        ConfigurationSetEventDestinationEventDestinationCloudWatchDestinationDimensionConfiguration,
        Map<String,
            dynamic>>(dimensionConfigurations, (value) => value.toMap());
    return map;
  }

  factory ConfigurationSetEventDestinationEventDestinationCloudWatchDestination.fromMap(
      Map<String, dynamic> map) {
    return ConfigurationSetEventDestinationEventDestinationCloudWatchDestination(
      dimensionConfigurations: Input.decodeList<
              ConfigurationSetEventDestinationEventDestinationCloudWatchDestinationDimensionConfiguration>(
          map['dimensionConfigurations'],
          (value) =>
              ConfigurationSetEventDestinationEventDestinationCloudWatchDestinationDimensionConfiguration
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
