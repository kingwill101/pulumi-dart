// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auto_scale_run_error_response.dart';

/// The results and errors from an execution of a pool autoscale formula.
class AutoScaleRunResponse {
  /// An error that occurred when autoscaling a pool.
  final pulumi.Input<AutoScaleRunErrorResponse>? error;

  /// The time at which the autoscale formula was last evaluated.
  final pulumi.Input<String> evaluationTime;

  /// Each variable value is returned in the form $variable=value, and variables are separated by semicolons.
  final pulumi.Input<String>? results;

  /// Creates a new [AutoScaleRunResponse].
  /// [error] An error that occurred when autoscaling a pool.
  /// [evaluationTime] The time at which the autoscale formula was last evaluated.
  /// [results] Each variable value is returned in the form $variable=value, and variables are separated by semicolons.
  AutoScaleRunResponse({
    this.error,
    required this.evaluationTime,
    this.results,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'error':
          ?pulumi.Input.mapOptionalInputValue<
            AutoScaleRunErrorResponse,
            Map<String, dynamic>
          >(error, (value) => value.toMap()),
      'evaluationTime': evaluationTime,
      'results': ?results,
    };
  }

  factory AutoScaleRunResponse.fromMap(Map<String, dynamic> map) {
    return AutoScaleRunResponse(
      error: (() {
        final guardedValue = map['error'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AutoScaleRunErrorResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      evaluationTime: pulumi.Input.fromValue(map['evaluationTime'] as String),
      results: (() {
        final guardedValue = map['results'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
