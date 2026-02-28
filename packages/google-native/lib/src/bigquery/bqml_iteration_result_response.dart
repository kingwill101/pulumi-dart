// ignore_for_file: unused_element, unnecessary_cast

class BqmlIterationResultResponse {
  /// [Output-only, Beta] Time taken to run the training iteration in milliseconds.
  final String durationMs;

  /// [Output-only, Beta] Eval loss computed on the eval data at the end of the iteration. The eval loss is used for early stopping to avoid overfitting. No eval loss if eval_split_method option is specified as no_split or auto_split with input data size less than 500 rows.
  final double evalLoss;

  /// [Output-only, Beta] Index of the ML training iteration, starting from zero for each training run.
  final int index;

  /// [Output-only, Beta] Learning rate used for this iteration, it varies for different training iterations if learn_rate_strategy option is not constant.
  final double learnRate;

  /// [Output-only, Beta] Training loss computed on the training data at the end of the iteration. The training loss function is defined by model type.
  final double trainingLoss;

  /// Creates a new [BqmlIterationResultResponse].
  /// [durationMs] [Output-only, Beta] Time taken to run the training iteration in milliseconds.
  /// [evalLoss] [Output-only, Beta] Eval loss computed on the eval data at the end of the iteration. The eval loss is used for early stopping to avoid overfitting. No eval loss if eval_split_method option is specified as no_split or auto_split with input data size less than 500 rows.
  /// [index] [Output-only, Beta] Index of the ML training iteration, starting from zero for each training run.
  /// [learnRate] [Output-only, Beta] Learning rate used for this iteration, it varies for different training iterations if learn_rate_strategy option is not constant.
  /// [trainingLoss] [Output-only, Beta] Training loss computed on the training data at the end of the iteration. The training loss function is defined by model type.
  BqmlIterationResultResponse({
    required this.durationMs,
    required this.evalLoss,
    required this.index,
    required this.learnRate,
    required this.trainingLoss,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['durationMs'] = durationMs;
    map['evalLoss'] = evalLoss;
    map['index'] = index;
    map['learnRate'] = learnRate;
    map['trainingLoss'] = trainingLoss;
    return map;
  }

  factory BqmlIterationResultResponse.fromMap(Map<String, dynamic> map) {
    return BqmlIterationResultResponse(
      durationMs: map['durationMs'] as String,
      evalLoss: map['evalLoss'] as double,
      index: map['index'] as int,
      learnRate: map['learnRate'] as double,
      trainingLoss: map['trainingLoss'] as double,
    );
  }
}
