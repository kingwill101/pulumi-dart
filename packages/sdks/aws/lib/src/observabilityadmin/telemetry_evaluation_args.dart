// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'telemetry_evaluation_timeouts.dart';

/// {@template pulumi_observabilityadmin_telemetry_evaluation_telemetry_evaluation_args_doc}
/// The set of arguments for TelemetryEvaluation.
/// {@endtemplate}
/// {@macro pulumi_observabilityadmin_telemetry_evaluation_telemetry_evaluation_args_doc}
class TelemetryEvaluationArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  final pulumi.Input<TelemetryEvaluationTimeouts?>? timeouts;

  /// Creates a new [TelemetryEvaluationArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [timeouts] Optional.
  const TelemetryEvaluationArgs({
    this.region,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<TelemetryEvaluationTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory TelemetryEvaluationArgs.fromMap(Map<String, dynamic> map) {
    return TelemetryEvaluationArgs(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TelemetryEvaluationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
