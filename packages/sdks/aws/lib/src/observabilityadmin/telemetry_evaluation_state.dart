// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'telemetry_evaluation_timeouts.dart';

/// Input properties used for looking up and filtering TelemetryEvaluation resources.
class TelemetryEvaluationState {
  /// Reason for the failure status. Only populated if `status` is `FAILED_START` or `FAILED_STOP`.
  final pulumi.Input<String>? failureReason;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Onboarding status of the telemetry config feature. Valid values: `NOT_STARTED`, `STARTING`, `FAILED_START`, `RUNNING`, `STOPPING`, `FAILED_STOP`, `STOPPED`.
  final pulumi.Input<String>? status;
  final pulumi.Input<TelemetryEvaluationTimeouts>? timeouts;

  /// Creates a new [TelemetryEvaluationState].
  /// [failureReason] Reason for the failure status. Only populated if `status` is `FAILED_START` or `FAILED_STOP`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [status] Onboarding status of the telemetry config feature. Valid values: `NOT_STARTED`, `STARTING`, `FAILED_START`, `RUNNING`, `STOPPING`, `FAILED_STOP`, `STOPPED`.
  /// [timeouts] Optional.
  const TelemetryEvaluationState({
    this.failureReason,
    this.region,
    this.status,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failureReason': ?failureReason,
      'region': ?region,
      'status': ?status,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<TelemetryEvaluationTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory TelemetryEvaluationState.fromMap(Map<String, dynamic> map) {
    return TelemetryEvaluationState(
      failureReason: (() { final guardedValue = map['failureReason']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TelemetryEvaluationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
