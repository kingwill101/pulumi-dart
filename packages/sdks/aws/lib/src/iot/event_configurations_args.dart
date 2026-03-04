// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iot_event_configurations_event_configurations_args_doc}
/// The set of arguments for EventConfigurations.
/// {@endtemplate}
/// {@macro pulumi_iot_event_configurations_event_configurations_args_doc}
class EventConfigurationsArgs {
  /// Map. The new event configuration values. You can use only these strings as keys: `THING_GROUP_HIERARCHY`, `THING_GROUP_MEMBERSHIP`, `THING_TYPE`, `THING_TYPE_ASSOCIATION`, `THING_GROUP`, `THING`, `POLICY`, `CA_CERTIFICATE`, `JOB_EXECUTION`, `CERTIFICATE`, `JOB`. Use boolean for values of mapping.
  final pulumi.Input<Map<String, bool>> eventConfigurations;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [EventConfigurationsArgs].
  /// [eventConfigurations] Map. The new event configuration values. You can use only these strings as keys: `THING_GROUP_HIERARCHY`, `THING_GROUP_MEMBERSHIP`, `THING_TYPE`, `THING_TYPE_ASSOCIATION`, `THING_GROUP`, `THING`, `POLICY`, `CA_CERTIFICATE`, `JOB_EXECUTION`, `CERTIFICATE`, `JOB`. Use boolean for values of mapping.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  EventConfigurationsArgs({required this.eventConfigurations, this.region});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventConfigurations': eventConfigurations,
      'region': ?region,
    };
  }

  factory EventConfigurationsArgs.fromMap(Map<String, dynamic> map) {
    return EventConfigurationsArgs(
      eventConfigurations: pulumi.Input.fromValue(
        (map['eventConfigurations'] as Map).cast<String, bool>(),
      ),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
