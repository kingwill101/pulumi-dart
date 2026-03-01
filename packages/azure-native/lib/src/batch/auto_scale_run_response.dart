// ignore_for_file: unused_element, unnecessary_cast

import 'auto_scale_run_error_response.dart';

/// The results and errors from an execution of a pool autoscale formula.
class AutoScaleRunResponse {
  /// An error that occurred when autoscaling a pool.
  final AutoScaleRunErrorResponse? error;
  /// The time at which the autoscale formula was last evaluated.
  final String evaluationTime;
  /// Each variable value is returned in the form $variable=value, and variables are separated by semicolons.
  final String? results;

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
      'error': ?error == null ? null : error!.toMap(),
      'evaluationTime': evaluationTime,
      'results': ?results,
    };
  }

  factory AutoScaleRunResponse.fromMap(Map<String, dynamic> map) {
    return AutoScaleRunResponse(
      error: map['error'] == null ? null : AutoScaleRunErrorResponse.fromMap((map['error'] as Map).cast<String, dynamic>()),
      evaluationTime: map['evaluationTime'] as String,
      results: map['results'] == null ? null : map['results'] as String,
    );
  }
}

