// ignore_for_file: unused_element, unnecessary_cast

class BqmlIterationResult {
  /// [Output-only, Beta] Time taken to run the training iteration in milliseconds.
  final String? durationMs;

  /// [Output-only, Beta] Eval loss computed on the eval data at the end of the iteration. The eval loss is used for early stopping to avoid overfitting. No eval loss if eval_split_method option is specified as no_split or auto_split with input data size less than 500 rows.
  final double? evalLoss;

  /// [Output-only, Beta] Index of the ML training iteration, starting from zero for each training run.
  final int? index;

  /// [Output-only, Beta] Learning rate used for this iteration, it varies for different training iterations if learn_rate_strategy option is not constant.
  final double? learnRate;

  /// [Output-only, Beta] Training loss computed on the training data at the end of the iteration. The training loss function is defined by model type.
  final double? trainingLoss;

  BqmlIterationResult({
    this.durationMs,
    this.evalLoss,
    this.index,
    this.learnRate,
    this.trainingLoss,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final durationMsValue = durationMs;
    if (durationMsValue != null) {
      map['durationMs'] = durationMsValue;
    }
    final evalLossValue = evalLoss;
    if (evalLossValue != null) {
      map['evalLoss'] = evalLossValue;
    }
    final indexValue = index;
    if (indexValue != null) {
      map['index'] = indexValue;
    }
    final learnRateValue = learnRate;
    if (learnRateValue != null) {
      map['learnRate'] = learnRateValue;
    }
    final trainingLossValue = trainingLoss;
    if (trainingLossValue != null) {
      map['trainingLoss'] = trainingLossValue;
    }
    return map;
  }

  factory BqmlIterationResult.fromMap(Map<String, dynamic> map) {
    return BqmlIterationResult(
      durationMs:
          map['durationMs'] == null ? null : map['durationMs'] as String,
      evalLoss: map['evalLoss'] == null ? null : map['evalLoss'] as double,
      index: map['index'] == null ? null : map['index'] as int,
      learnRate: map['learnRate'] == null ? null : map['learnRate'] as double,
      trainingLoss:
          map['trainingLoss'] == null ? null : map['trainingLoss'] as double,
    );
  }
}
