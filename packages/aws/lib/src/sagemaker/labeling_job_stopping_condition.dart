// ignore_for_file: unused_element, unnecessary_cast


class LabelingJobStoppingCondition {
  /// Maximum number of objects that can be labeled by human workers.
  final int maxHumanLabeledObjectCount;
  /// Maximum number of input data objects that should be labeled.
  final int maxPercentageOfInputDatasetLabeled;

  /// Creates a new [LabelingJobStoppingCondition].
  /// [maxHumanLabeledObjectCount] Maximum number of objects that can be labeled by human workers.
  /// [maxPercentageOfInputDatasetLabeled] Maximum number of input data objects that should be labeled.
  LabelingJobStoppingCondition({
    required this.maxHumanLabeledObjectCount,
    required this.maxPercentageOfInputDatasetLabeled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxHumanLabeledObjectCount': maxHumanLabeledObjectCount,
      'maxPercentageOfInputDatasetLabeled': maxPercentageOfInputDatasetLabeled,
    };
  }

  factory LabelingJobStoppingCondition.fromMap(Map<String, dynamic> map) {
    return LabelingJobStoppingCondition(
      maxHumanLabeledObjectCount: map['maxHumanLabeledObjectCount'] as int,
      maxPercentageOfInputDatasetLabeled: map['maxPercentageOfInputDatasetLabeled'] as int,
    );
  }
}

