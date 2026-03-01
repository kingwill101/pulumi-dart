// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EventConfigurations resources.
class EventConfigurationsState {
  /// Map. The new event configuration values. You can use only these strings as keys: `THING_GROUP_HIERARCHY`, `THING_GROUP_MEMBERSHIP`, `THING_TYPE`, `THING_TYPE_ASSOCIATION`, `THING_GROUP`, `THING`, `POLICY`, `CA_CERTIFICATE`, `JOB_EXECUTION`, `CERTIFICATE`, `JOB`. Use boolean for values of mapping.
  final pulumi.Input<Map<String, bool>>? eventConfigurations;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [EventConfigurationsState].
  /// [eventConfigurations] Map. The new event configuration values. You can use only these strings as keys: `THING_GROUP_HIERARCHY`, `THING_GROUP_MEMBERSHIP`, `THING_TYPE`, `THING_TYPE_ASSOCIATION`, `THING_GROUP`, `THING`, `POLICY`, `CA_CERTIFICATE`, `JOB_EXECUTION`, `CERTIFICATE`, `JOB`. Use boolean for values of mapping.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  EventConfigurationsState({
    pulumi.Output<Map<String, bool>>? eventConfigurations,
    pulumi.Output<String>? region,
  }) :
      eventConfigurations = pulumi.Input.asOptionalInput<Map<String, bool>>(eventConfigurations),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventConfigurations': ?eventConfigurations,
      'region': ?region,
    };
  }

  factory EventConfigurationsState.fromMap(Map<String, dynamic> map) {
    return EventConfigurationsState(
      eventConfigurations: map['eventConfigurations'] == null ? null : pulumi.Output.create<Map<String, bool>>((map['eventConfigurations'] as Map).cast<String, bool>()),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

