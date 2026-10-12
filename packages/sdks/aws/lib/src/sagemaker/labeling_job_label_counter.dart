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
      failedNonRetryableError: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['failedNonRetryableError'])),
      humanLabeled: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['humanLabeled'])),
      machineLabeled: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['machineLabeled'])),
      totalLabeled: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['totalLabeled'])),
      unlabeled: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['unlabeled'])),
    );
  }
}
