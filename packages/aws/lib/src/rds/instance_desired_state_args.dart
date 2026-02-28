// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_desired_state_timeouts.dart';

/// {@template pulumi_rds_instance_desired_state_instance_desired_state_args_doc}
/// The set of arguments for InstanceDesiredState.
/// {@endtemplate}
/// {@macro pulumi_rds_instance_desired_state_instance_desired_state_args_doc}
class InstanceDesiredStateArgs {
  /// DB Instance Identifier
  final pulumi.Input<String> identifier;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Configured state of the DB Instance. Valid values are `available` and `stopped`.
  final pulumi.Input<String> state;
  final pulumi.Input<InstanceDesiredStateTimeouts>? timeouts;

  /// Creates a new [InstanceDesiredStateArgs].
  /// [identifier] DB Instance Identifier
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [state] Configured state of the DB Instance. Valid values are `available` and `stopped`.
  /// [timeouts] Optional.
  InstanceDesiredStateArgs({
    required String identifier,
    String? region,
    required String state,
    InstanceDesiredStateTimeouts? timeouts,
  })  : identifier = pulumi.Input.asInput<String>(identifier),
        region = pulumi.Input.asOptionalInput<String>(region),
        state = pulumi.Input.asInput<String>(state),
        timeouts = pulumi.Input.asOptionalInput<InstanceDesiredStateTimeouts>(
            timeouts);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['identifier'] = identifier;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['state'] = state;
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          InstanceDesiredStateTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory InstanceDesiredStateArgs.fromMap(Map<String, dynamic> map) {
    return InstanceDesiredStateArgs(
      identifier: map['identifier'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      state: map['state'] as String,
      timeouts: map['timeouts'] == null
          ? null
          : InstanceDesiredStateTimeouts.fromMap(
              (map['timeouts'] as Map).cast<String, dynamic>()),
    );
  }
}
