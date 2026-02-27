// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for EventConfigurations.
class EventConfigurationsArgs {
  /// Map. The new event configuration values. You can use only these strings as keys: `THING_GROUP_HIERARCHY`, `THING_GROUP_MEMBERSHIP`, `THING_TYPE`, `THING_TYPE_ASSOCIATION`, `THING_GROUP`, `THING`, `POLICY`, `CA_CERTIFICATE`, `JOB_EXECUTION`, `CERTIFICATE`, `JOB`. Use boolean for values of mapping.
  final pulumi.Input<Map<String, bool>> eventConfigurations;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  EventConfigurationsArgs({
    required this.eventConfigurations,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['eventConfigurations'] = eventConfigurations;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory EventConfigurationsArgs.fromMap(Map<String, dynamic> map) {
    return EventConfigurationsArgs(
      eventConfigurations:
          pulumi.Input.asInput<Map<String, bool>>(map['eventConfigurations']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
