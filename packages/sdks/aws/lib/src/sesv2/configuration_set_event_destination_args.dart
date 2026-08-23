// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_set_event_destination_event_destination.dart';

/// {@template pulumi_sesv2_configuration_set_event_destination_configuration_set_event_destination_args_doc}
/// The set of arguments for ConfigurationSetEventDestination.
/// {@endtemplate}
/// {@macro pulumi_sesv2_configuration_set_event_destination_configuration_set_event_destination_args_doc}
class ConfigurationSetEventDestinationArgs {
  /// The name of the configuration set.
  final pulumi.Input<String> configurationSetName;
  /// An object that defines the event destination. See `eventDestination` Block for details.
  final pulumi.Input<ConfigurationSetEventDestinationEventDestination> eventDestination;
  /// A name that identifies the event destination within the configuration set.
  final pulumi.Input<String> eventDestinationName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [ConfigurationSetEventDestinationArgs].
  /// [configurationSetName] The name of the configuration set.
  /// [eventDestination] An object that defines the event destination. See `eventDestination` Block for details.
  /// [eventDestinationName] A name that identifies the event destination within the configuration set.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const ConfigurationSetEventDestinationArgs({
    required this.configurationSetName,
    required this.eventDestination,
    required this.eventDestinationName,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationSetName': configurationSetName,
      'eventDestination': pulumi.Input.mapInputValue<ConfigurationSetEventDestinationEventDestination, Map<String, dynamic>>(eventDestination, (value) => value.toMap()),
      'eventDestinationName': eventDestinationName,
      'region': ?region,
    };
  }

  factory ConfigurationSetEventDestinationArgs.fromMap(Map<String, dynamic> map) {
    return ConfigurationSetEventDestinationArgs(
      configurationSetName: pulumi.Input.fromValue(map['configurationSetName'] as String),
      eventDestination: pulumi.Input.fromValue(ConfigurationSetEventDestinationEventDestination.fromMap((map['eventDestination']! as Map).cast<String, dynamic>())),
      eventDestinationName: pulumi.Input.fromValue(map['eventDestinationName'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
