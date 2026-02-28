// ignore_for_file: unused_element, unnecessary_cast

class BigQueryModelTrainingResponse {
  /// [Output-only, Beta] Index of current ML training iteration. Updated during create model query job to show job progress.
  final int currentIteration;

  /// [Output-only, Beta] Expected number of iterations for the create model query job specified as num_iterations in the input query. The actual total number of iterations may be less than this number due to early stop.
  final String expectedTotalIterations;

  /// Creates a new [BigQueryModelTrainingResponse].
  /// [currentIteration] [Output-only, Beta] Index of current ML training iteration. Updated during create model query job to show job progress.
  /// [expectedTotalIterations] [Output-only, Beta] Expected number of iterations for the create model query job specified as num_iterations in the input query. The actual total number of iterations may be less than this number due to early stop.
  BigQueryModelTrainingResponse({
    required this.currentIteration,
    required this.expectedTotalIterations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['currentIteration'] = currentIteration;
    map['expectedTotalIterations'] = expectedTotalIterations;
    return map;
  }

  factory BigQueryModelTrainingResponse.fromMap(Map<String, dynamic> map) {
    return BigQueryModelTrainingResponse(
      currentIteration: map['currentIteration'] as int,
      expectedTotalIterations: map['expectedTotalIterations'] as String,
    );
  }
}
