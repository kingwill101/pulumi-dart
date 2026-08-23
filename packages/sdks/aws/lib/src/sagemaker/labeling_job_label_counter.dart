// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LabelingJobLabelCounter {
  /// Total number of objects that could not be labeled due to an error.
  final pulumi.Input<int> failedNonRetryableError;
  /// Total number of objects labeled by a human worker.
  final pulumi.Input<int> humanLabeled;
  /// Total number of objects labeled by automated data labeling.
  final pulumi.Input<int> machineLabeled;
  /// Total number of objects labeled.
  final pulumi.Input<int> totalLabeled;
  /// Total number of objects not yet labeled.
  final pulumi.Input<int> unlabeled;

  /// Creates a new [LabelingJobLabelCounter].
  /// [failedNonRetryableError] Total number of objects that could not be labeled due to an error.
  /// [humanLabeled] Total number of objects labeled by a human worker.
  /// [machineLabeled] Total number of objects labeled by automated data labeling.
  /// [totalLabeled] Total number of objects labeled.
  /// [unlabeled] Total number of objects not yet labeled.
  const LabelingJobLabelCounter({
    required this.failedNonRetryableError,
    required this.humanLabeled,
    required this.machineLabeled,
    required this.totalLabeled,
    required this.unlabeled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failedNonRetryableError': failedNonRetryableError,
      'humanLabeled': humanLabeled,
      'machineLabeled': machineLabeled,
      'totalLabeled': totalLabeled,
      'unlabeled': unlabeled,
    };
  }

  factory LabelingJobLabelCounter.fromMap(Map<String, dynamic> map) {
    return LabelingJobLabelCounter(
      failedNonRetryableError: pulumi.Input.fromValue(map['failedNonRetryableError'] as int),
      humanLabeled: pulumi.Input.fromValue(map['humanLabeled'] as int),
      machineLabeled: pulumi.Input.fromValue(map['machineLabeled'] as int),
      totalLabeled: pulumi.Input.fromValue(map['totalLabeled'] as int),
      unlabeled: pulumi.Input.fromValue(map['unlabeled'] as int),
    );
  }
}
