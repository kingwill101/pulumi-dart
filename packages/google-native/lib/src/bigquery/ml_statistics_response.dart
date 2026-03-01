// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'iteration_result_response.dart';

class MlStatisticsResponse {
  /// Results for all completed iterations.
  final List<IterationResultResponse> iterationResults;

  /// Maximum number of iterations specified as max_iterations in the 'CREATE MODEL' query. The actual number of iterations may be less than this number due to early stop.
  final String maxIterations;

  /// Creates a new [MlStatisticsResponse].
  /// [iterationResults] Results for all completed iterations.
  /// [maxIterations] Maximum number of iterations specified as max_iterations in the 'CREATE MODEL' query. The actual number of iterations may be less than this number due to early stop.
  MlStatisticsResponse({
    required this.iterationResults,
    required this.maxIterations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iterationResults':
          pulumi.Input.encodeList<
            IterationResultResponse,
            Map<String, dynamic>
          >(iterationResults, (value) => value.toMap()),
      'maxIterations': maxIterations,
    };
  }

  factory MlStatisticsResponse.fromMap(Map<String, dynamic> map) {
    return MlStatisticsResponse(
      iterationResults: pulumi.Input.decodeList<IterationResultResponse>(
        map['iterationResults'],
        (value) => IterationResultResponse.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      maxIterations: map['maxIterations'] as String,
    );
  }
}
