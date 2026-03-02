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
  /// A name that identifies the event destination within the configuration set.
  final pulumi.Input<ConfigurationSetEventDestinationEventDestination> eventDestination;
  /// An object that defines the event destination. See `event_destination` Block for details.
  final pulumi.Input<String> eventDestinationName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [ConfigurationSetEventDestinationArgs].
  /// [configurationSetName] The name of the configuration set.
  /// [eventDestination] A name that identifies the event destination within the configuration set.
  /// [eventDestinationName] An object that defines the event destination. See `event_destination` Block for details.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  ConfigurationSetEventDestinationArgs({
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
      configurationSetName: (map['configurationSetName'] as String).input(),
      eventDestination: (ConfigurationSetEventDestinationEventDestination.fromMap((map['eventDestination']! as Map).cast<String, dynamic>())).input(),
      eventDestinationName: (map['eventDestinationName'] as String).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
    );
  }
}

