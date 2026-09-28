// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'safety_lever_state_state.dart';
import 'safety_lever_state_timeouts.dart';

/// {@template pulumi_fis_safety_lever_state_safety_lever_state_args_doc}
/// The set of arguments for SafetyLeverState.
/// {@endtemplate}
/// {@macro pulumi_fis_safety_lever_state_safety_lever_state_args_doc}
class SafetyLeverStateArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// State of the safety lever. See below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<SafetyLeverStateState?>? state;
  final pulumi.Input<SafetyLeverStateTimeouts?>? timeouts;

  /// Creates a new [SafetyLeverStateArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [state] State of the safety lever. See below.
  /// [timeouts] Optional.
  const SafetyLeverStateArgs({
    this.region,
    this.state,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'state': ?pulumi.Input.mapOptionalInputValue<SafetyLeverStateState, Map<String, dynamic>>(state, (value) => value.toMap()),
      'timeouts': ?pulumi.Input.mapOptionalInputValue<SafetyLeverStateTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory SafetyLeverStateArgs.fromMap(Map<String, dynamic> map) {
    return SafetyLeverStateArgs(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SafetyLeverStateState.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SafetyLeverStateTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
