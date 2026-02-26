// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../configuration_set_event_destination_event_destination/configuration_set_event_destination_event_destination.dart';

/// The set of arguments for ConfigurationSetEventDestination.
class ConfigurationSetEventDestinationArgs {
  /// The name of the configuration set.
  final Input<String> configurationSetName;

  /// A name that identifies the event destination within the configuration set.
  final Input<ConfigurationSetEventDestinationEventDestination>
      eventDestination;

  /// An object that defines the event destination. See <span pulumi-lang-nodejs="`eventDestination`" pulumi-lang-dotnet="`EventDestination`" pulumi-lang-go="`eventDestination`" pulumi-lang-python="`event_destination`" pulumi-lang-yaml="`eventDestination`" pulumi-lang-java="`eventDestination`">`event_destination`</span> Block for details.
  final Input<String> eventDestinationName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  ConfigurationSetEventDestinationArgs({
    required this.configurationSetName,
    required this.eventDestination,
    required this.eventDestinationName,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['configurationSetName'] = configurationSetName;
    map['eventDestination'] = Input.mapInputValue<
        ConfigurationSetEventDestinationEventDestination,
        Map<String, dynamic>>(eventDestination, (value) => value.toMap());
    map['eventDestinationName'] = eventDestinationName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory ConfigurationSetEventDestinationArgs.fromMap(
      Map<String, dynamic> map) {
    return ConfigurationSetEventDestinationArgs(
      configurationSetName: Input.asInput<String>(map['configurationSetName']),
      eventDestination:
          Input.asInput<ConfigurationSetEventDestinationEventDestination>(
              map['eventDestination']),
      eventDestinationName: Input.asInput<String>(map['eventDestinationName']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
