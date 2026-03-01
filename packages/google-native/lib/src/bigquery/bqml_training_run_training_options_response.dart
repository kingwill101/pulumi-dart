// ignore_for_file: unused_element, unnecessary_cast

/// [Output-only, Beta] Training options used by this training run. These options are mutable for subsequent training runs. Default values are explicitly stored for options not specified in the input query of the first training run. For subsequent training runs, any option not explicitly specified in the input query will be copied from the previous training run.
class BqmlTrainingRunTrainingOptionsResponse {
  final bool earlyStop;
  final double l1Reg;
  final double l2Reg;
  final double learnRate;
  final String learnRateStrategy;
  final double lineSearchInitLearnRate;
  final String maxIteration;
  final double minRelProgress;
  final bool warmStart;

  /// Creates a new [BqmlTrainingRunTrainingOptionsResponse].
  /// [earlyStop] Required.
  /// [l1Reg] Required.
  /// [l2Reg] Required.
  /// [learnRate] Required.
  /// [learnRateStrategy] Required.
  /// [lineSearchInitLearnRate] Required.
  /// [maxIteration] Required.
  /// [minRelProgress] Required.
  /// [warmStart] Required.
  BqmlTrainingRunTrainingOptionsResponse({
    required this.earlyStop,
    required this.l1Reg,
    required this.l2Reg,
    required this.learnRate,
    required this.learnRateStrategy,
    required this.lineSearchInitLearnRate,
    required this.maxIteration,
    required this.minRelProgress,
    required this.warmStart,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'earlyStop': earlyStop,
      'l1Reg': l1Reg,
      'l2Reg': l2Reg,
      'learnRate': learnRate,
      'learnRateStrategy': learnRateStrategy,
      'lineSearchInitLearnRate': lineSearchInitLearnRate,
      'maxIteration': maxIteration,
      'minRelProgress': minRelProgress,
      'warmStart': warmStart,
    };
  }

  factory BqmlTrainingRunTrainingOptionsResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return BqmlTrainingRunTrainingOptionsResponse(
      earlyStop: map['earlyStop'] as bool,
      l1Reg: map['l1Reg'] as double,
      l2Reg: map['l2Reg'] as double,
      learnRate: map['learnRate'] as double,
      learnRateStrategy: map['learnRateStrategy'] as String,
      lineSearchInitLearnRate: map['lineSearchInitLearnRate'] as double,
      maxIteration: map['maxIteration'] as String,
      minRelProgress: map['minRelProgress'] as double,
      warmStart: map['warmStart'] as bool,
    );
  }
}
