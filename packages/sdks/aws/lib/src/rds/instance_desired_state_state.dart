// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_desired_state_timeouts.dart';

/// Input properties used for looking up and filtering InstanceDesiredState resources.
class InstanceDesiredStateState {
  /// DB Instance Identifier
  final pulumi.Input<String>? identifier;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Configured state of the DB Instance. Valid values are `available` and `stopped`.
  final pulumi.Input<String>? state;
  final pulumi.Input<InstanceDesiredStateTimeouts>? timeouts;

  /// Creates a new [InstanceDesiredStateState].
  /// [identifier] DB Instance Identifier
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [state] Configured state of the DB Instance. Valid values are `available` and `stopped`.
  /// [timeouts] Optional.
  InstanceDesiredStateState({
    this.identifier,
    this.region,
    this.state,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identifier': ?identifier,
      'region': ?region,
      'state': ?state,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<InstanceDesiredStateTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory InstanceDesiredStateState.fromMap(Map<String, dynamic> map) {
    return InstanceDesiredStateState(
      identifier: map['identifier'] == null ? null : ((map['identifier'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      state: map['state'] == null ? null : ((map['state'] as String).input()).input(),
      timeouts: map['timeouts'] == null ? null : ((InstanceDesiredStateTimeouts.fromMap((map['timeouts']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

