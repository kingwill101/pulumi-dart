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
    final map = <String, dynamic>{};
    map['earlyStop'] = earlyStop;
    map['l1Reg'] = l1Reg;
    map['l2Reg'] = l2Reg;
    map['learnRate'] = learnRate;
    map['learnRateStrategy'] = learnRateStrategy;
    map['lineSearchInitLearnRate'] = lineSearchInitLearnRate;
    map['maxIteration'] = maxIteration;
    map['minRelProgress'] = minRelProgress;
    map['warmStart'] = warmStart;
    return map;
  }

  factory BqmlTrainingRunTrainingOptionsResponse.fromMap(
      Map<String, dynamic> map) {
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
