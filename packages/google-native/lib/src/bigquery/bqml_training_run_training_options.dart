// ignore_for_file: unused_element, unnecessary_cast

/// [Output-only, Beta] Training options used by this training run. These options are mutable for subsequent training runs. Default values are explicitly stored for options not specified in the input query of the first training run. For subsequent training runs, any option not explicitly specified in the input query will be copied from the previous training run.
class BqmlTrainingRunTrainingOptions {
  final bool? earlyStop;
  final double? l1Reg;
  final double? l2Reg;
  final double? learnRate;
  final String? learnRateStrategy;
  final double? lineSearchInitLearnRate;
  final String? maxIteration;
  final double? minRelProgress;
  final bool? warmStart;

  /// Creates a new [BqmlTrainingRunTrainingOptions].
  /// [earlyStop] Optional.
  /// [l1Reg] Optional.
  /// [l2Reg] Optional.
  /// [learnRate] Optional.
  /// [learnRateStrategy] Optional.
  /// [lineSearchInitLearnRate] Optional.
  /// [maxIteration] Optional.
  /// [minRelProgress] Optional.
  /// [warmStart] Optional.
  BqmlTrainingRunTrainingOptions({
    this.earlyStop,
    this.l1Reg,
    this.l2Reg,
    this.learnRate,
    this.learnRateStrategy,
    this.lineSearchInitLearnRate,
    this.maxIteration,
    this.minRelProgress,
    this.warmStart,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final earlyStopValue = earlyStop;
    if (earlyStopValue != null) {
      map['earlyStop'] = earlyStopValue;
    }
    final l1RegValue = l1Reg;
    if (l1RegValue != null) {
      map['l1Reg'] = l1RegValue;
    }
    final l2RegValue = l2Reg;
    if (l2RegValue != null) {
      map['l2Reg'] = l2RegValue;
    }
    final learnRateValue = learnRate;
    if (learnRateValue != null) {
      map['learnRate'] = learnRateValue;
    }
    final learnRateStrategyValue = learnRateStrategy;
    if (learnRateStrategyValue != null) {
      map['learnRateStrategy'] = learnRateStrategyValue;
    }
    final lineSearchInitLearnRateValue = lineSearchInitLearnRate;
    if (lineSearchInitLearnRateValue != null) {
      map['lineSearchInitLearnRate'] = lineSearchInitLearnRateValue;
    }
    final maxIterationValue = maxIteration;
    if (maxIterationValue != null) {
      map['maxIteration'] = maxIterationValue;
    }
    final minRelProgressValue = minRelProgress;
    if (minRelProgressValue != null) {
      map['minRelProgress'] = minRelProgressValue;
    }
    final warmStartValue = warmStart;
    if (warmStartValue != null) {
      map['warmStart'] = warmStartValue;
    }
    return map;
  }

  factory BqmlTrainingRunTrainingOptions.fromMap(Map<String, dynamic> map) {
    return BqmlTrainingRunTrainingOptions(
      earlyStop: map['earlyStop'] == null ? null : map['earlyStop'] as bool,
      l1Reg: map['l1Reg'] == null ? null : map['l1Reg'] as double,
      l2Reg: map['l2Reg'] == null ? null : map['l2Reg'] as double,
      learnRate: map['learnRate'] == null ? null : map['learnRate'] as double,
      learnRateStrategy: map['learnRateStrategy'] == null
          ? null
          : map['learnRateStrategy'] as String,
      lineSearchInitLearnRate: map['lineSearchInitLearnRate'] == null
          ? null
          : map['lineSearchInitLearnRate'] as double,
      maxIteration:
          map['maxIteration'] == null ? null : map['maxIteration'] as String,
      minRelProgress: map['minRelProgress'] == null
          ? null
          : map['minRelProgress'] as double,
      warmStart: map['warmStart'] == null ? null : map['warmStart'] as bool,
    );
  }
}
