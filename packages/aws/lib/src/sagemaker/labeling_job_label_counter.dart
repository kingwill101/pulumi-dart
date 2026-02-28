// ignore_for_file: unused_element, unnecessary_cast

class LabelingJobLabelCounter {
  /// Total number of objects that could not be labeled due to an error.
  final int failedNonRetryableError;

  /// Total number of objects labeled by a human worker.
  final int humanLabeled;

  /// Total number of objects labeled by automated data labeling.
  final int machineLabeled;

  /// Total number of objects labeled.
  final int totalLabeled;

  /// Total number of objects not yet labeled.
  final int unlabeled;

  /// Creates a new [LabelingJobLabelCounter].
  /// [failedNonRetryableError] Total number of objects that could not be labeled due to an error.
  /// [humanLabeled] Total number of objects labeled by a human worker.
  /// [machineLabeled] Total number of objects labeled by automated data labeling.
  /// [totalLabeled] Total number of objects labeled.
  /// [unlabeled] Total number of objects not yet labeled.
  LabelingJobLabelCounter({
    required this.failedNonRetryableError,
    required this.humanLabeled,
    required this.machineLabeled,
    required this.totalLabeled,
    required this.unlabeled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['failedNonRetryableError'] = failedNonRetryableError;
    map['humanLabeled'] = humanLabeled;
    map['machineLabeled'] = machineLabeled;
    map['totalLabeled'] = totalLabeled;
    map['unlabeled'] = unlabeled;
    return map;
  }

  factory LabelingJobLabelCounter.fromMap(Map<String, dynamic> map) {
    return LabelingJobLabelCounter(
      failedNonRetryableError: map['failedNonRetryableError'] as int,
      humanLabeled: map['humanLabeled'] as int,
      machineLabeled: map['machineLabeled'] as int,
      totalLabeled: map['totalLabeled'] as int,
      unlabeled: map['unlabeled'] as int,
    );
  }
}
