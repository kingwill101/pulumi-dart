// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'safety_lever_state_state.dart';
import 'safety_lever_state_timeouts.dart';

/// Input properties used for looking up and filtering SafetyLeverState resources.
class SafetyLeverStateFisState {
  /// ARN of the safety lever.
  final pulumi.Input<String?>? arn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// State of the safety lever. See below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<SafetyLeverStateState?>? state;
  final pulumi.Input<SafetyLeverStateTimeouts?>? timeouts;

  /// Creates a new [SafetyLeverStateFisState].
  /// [arn] ARN of the safety lever.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [state] State of the safety lever. See below.
  /// [timeouts] Optional.
  const SafetyLeverStateFisState({
    this.arn,
    this.region,
    this.state,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'region': ?region,
      'state': ?pulumi.Input.mapOptionalInputValue<SafetyLeverStateState, Map<String, dynamic>>(state, (value) => value.toMap()),
      'timeouts': ?pulumi.Input.mapOptionalInputValue<SafetyLeverStateTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory SafetyLeverStateFisState.fromMap(Map<String, dynamic> map) {
    return SafetyLeverStateFisState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SafetyLeverStateState.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SafetyLeverStateTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
