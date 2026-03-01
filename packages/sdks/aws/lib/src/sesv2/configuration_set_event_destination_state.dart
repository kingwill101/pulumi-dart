// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_set_event_destination_event_destination.dart';

/// Input properties used for looking up and filtering ConfigurationSetEventDestination resources.
class ConfigurationSetEventDestinationState {
  /// The name of the configuration set.
  final pulumi.Input<String>? configurationSetName;
  /// A name that identifies the event destination within the configuration set.
  final pulumi.Input<ConfigurationSetEventDestinationEventDestination>? eventDestination;
  /// An object that defines the event destination. See `event_destination` Block for details.
  final pulumi.Input<String>? eventDestinationName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [ConfigurationSetEventDestinationState].
  /// [configurationSetName] The name of the configuration set.
  /// [eventDestination] A name that identifies the event destination within the configuration set.
  /// [eventDestinationName] An object that defines the event destination. See `event_destination` Block for details.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  ConfigurationSetEventDestinationState({
    pulumi.Output<String>? configurationSetName,
    pulumi.Output<ConfigurationSetEventDestinationEventDestination>? eventDestination,
    pulumi.Output<String>? eventDestinationName,
    pulumi.Output<String>? region,
  }) :
      configurationSetName = pulumi.Input.asOptionalInput<String>(configurationSetName),
      eventDestination = pulumi.Input.asOptionalInput<ConfigurationSetEventDestinationEventDestination>(eventDestination),
      eventDestinationName = pulumi.Input.asOptionalInput<String>(eventDestinationName),
      region = pulumi.Input.asOptionalInput<String>(region);

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
      configurationSetName: map['configurationSetName'] == null ? null : pulumi.Output.create<String>(map['configurationSetName'] as String),
      eventDestination: map['eventDestination'] == null ? null : pulumi.Output.create<ConfigurationSetEventDestinationEventDestination>(ConfigurationSetEventDestinationEventDestination.fromMap((map['eventDestination'] as Map).cast<String, dynamic>())),
      eventDestinationName: map['eventDestinationName'] == null ? null : pulumi.Output.create<String>(map['eventDestinationName'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

