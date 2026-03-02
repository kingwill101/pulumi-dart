// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LabelingJobStoppingCondition {
  /// Maximum number of objects that can be labeled by human workers.
  final pulumi.Input<int> maxHumanLabeledObjectCount;
  /// Maximum number of input data objects that should be labeled.
  final pulumi.Input<int> maxPercentageOfInputDatasetLabeled;

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
      maxHumanLabeledObjectCount: (map['maxHumanLabeledObjectCount'] as int).input(),
      maxPercentageOfInputDatasetLabeled: (map['maxPercentageOfInputDatasetLabeled'] as int).input(),
    );
  }
}

