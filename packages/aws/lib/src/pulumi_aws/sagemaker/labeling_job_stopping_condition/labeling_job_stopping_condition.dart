// ignore_for_file: unused_element, unnecessary_cast

class LabelingJobStoppingCondition {
  /// Maximum number of objects that can be labeled by human workers.
  final int maxHumanLabeledObjectCount;

  /// Maximum number of input data objects that should be labeled.
  final int maxPercentageOfInputDatasetLabeled;

  LabelingJobStoppingCondition({
    required this.maxHumanLabeledObjectCount,
    required this.maxPercentageOfInputDatasetLabeled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maxHumanLabeledObjectCount'] = maxHumanLabeledObjectCount;
    map['maxPercentageOfInputDatasetLabeled'] =
        maxPercentageOfInputDatasetLabeled;
    return map;
  }

  factory LabelingJobStoppingCondition.fromMap(Map<String, dynamic> map) {
    return LabelingJobStoppingCondition(
      maxHumanLabeledObjectCount: map['maxHumanLabeledObjectCount'] as int,
      maxPercentageOfInputDatasetLabeled:
          map['maxPercentageOfInputDatasetLabeled'] as int,
    );
  }
}
