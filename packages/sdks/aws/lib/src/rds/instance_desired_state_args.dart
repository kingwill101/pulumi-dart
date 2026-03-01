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
    required pulumi.Output<String> identifier,
    pulumi.Output<String>? region,
    required pulumi.Output<String> state,
    pulumi.Output<InstanceDesiredStateTimeouts>? timeouts,
  }) :
      identifier = pulumi.Input.asInput<String>(identifier),
      region = pulumi.Input.asOptionalInput<String>(region),
      state = pulumi.Input.asInput<String>(state),
      timeouts = pulumi.Input.asOptionalInput<InstanceDesiredStateTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identifier': identifier,
      'region': ?region,
      'state': state,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<InstanceDesiredStateTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory InstanceDesiredStateArgs.fromMap(Map<String, dynamic> map) {
    return InstanceDesiredStateArgs(
      identifier: pulumi.Output.create<String>(map['identifier'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      state: pulumi.Output.create<String>(map['state'] as String),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<InstanceDesiredStateTimeouts>(InstanceDesiredStateTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

