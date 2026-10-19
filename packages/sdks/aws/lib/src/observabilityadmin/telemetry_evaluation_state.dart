// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'telemetry_evaluation_timeouts.dart';

/// Input properties used for looking up and filtering TelemetryEvaluation resources.
class TelemetryEvaluationState {
  /// Whether to start telemetry evaluation in all AWS Regions where CloudWatch Observability Admin is available. The current region becomes the home region. Mutually exclusive with `regions`.
  final pulumi.Input<bool?>? allRegions;
  /// Reason for the failure status. Only populated if `status` is `FAILED_START` or `FAILED_STOP`.
  final pulumi.Input<String?>? failureReason;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// List of AWS Regions to include in multi-region telemetry evaluation. The current region is always implicitly included. Mutually exclusive with `allRegions`.
  final pulumi.Input<List<String>?>? regions;
  /// Onboarding status of the telemetry config feature. Valid values: `NOT_STARTED`, `STARTING`, `FAILED_START`, `RUNNING`, `STOPPING`, `FAILED_STOP`, `STOPPED`.
  final pulumi.Input<String?>? status;
  final pulumi.Input<TelemetryEvaluationTimeouts?>? timeouts;

  /// Creates a new [TelemetryEvaluationState].
  /// [allRegions] Whether to start telemetry evaluation in all AWS Regions where CloudWatch Observability Admin is available. The current region becomes the home region. Mutually exclusive with `regions`.
  /// [failureReason] Reason for the failure status. Only populated if `status` is `FAILED_START` or `FAILED_STOP`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [regions] List of AWS Regions to include in multi-region telemetry evaluation. The current region is always implicitly included. Mutually exclusive with `allRegions`.
  /// [status] Onboarding status of the telemetry config feature. Valid values: `NOT_STARTED`, `STARTING`, `FAILED_START`, `RUNNING`, `STOPPING`, `FAILED_STOP`, `STOPPED`.
  /// [timeouts] Optional.
  const TelemetryEvaluationState({
    this.allRegions,
    this.failureReason,
    this.region,
    this.regions,
    this.status,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allRegions': ?allRegions,
      'failureReason': ?failureReason,
      'region': ?region,
      'regions': ?regions,
      'status': ?status,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<TelemetryEvaluationTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory TelemetryEvaluationState.fromMap(Map<String, dynamic> map) {
    return TelemetryEvaluationState(
      allRegions: (() { final guardedValue = map['allRegions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      failureReason: (() { final guardedValue = map['failureReason']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regions: (() { final guardedValue = map['regions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TelemetryEvaluationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
