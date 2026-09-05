// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_set_event_destination_event_destination.dart';

/// Input properties used for looking up and filtering ConfigurationSetEventDestination resources.
class ConfigurationSetEventDestinationState {
  /// Name of the configuration set.
  final pulumi.Input<String?>? configurationSetName;
  /// Object that defines the event destination. See `eventDestination` Block for details.
  final pulumi.Input<ConfigurationSetEventDestinationEventDestination?>? eventDestination;
  /// Name that identifies the event destination within the configuration set.
  final pulumi.Input<String?>? eventDestinationName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [ConfigurationSetEventDestinationState].
  /// [configurationSetName] Name of the configuration set.
  /// [eventDestination] Object that defines the event destination. See `eventDestination` Block for details.
  /// [eventDestinationName] Name that identifies the event destination within the configuration set.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const ConfigurationSetEventDestinationState({
    this.configurationSetName,
    this.eventDestination,
    this.eventDestinationName,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationSetName': ?configurationSetName,
      'eventDestination': ?pulumi.Input.mapOptionalInputValue<ConfigurationSetEventDestinationEventDestination, Map<String, dynamic>>(eventDestination, (value) => value.toMap()),
      'eventDestinationName': ?eventDestinationName,
      'region': ?region,
    };
  }

  factory ConfigurationSetEventDestinationState.fromMap(Map<String, dynamic> map) {
    return ConfigurationSetEventDestinationState(
      configurationSetName: (() { final guardedValue = map['configurationSetName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eventDestination: (() { final guardedValue = map['eventDestination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConfigurationSetEventDestinationEventDestination.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      eventDestinationName: (() { final guardedValue = map['eventDestinationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
