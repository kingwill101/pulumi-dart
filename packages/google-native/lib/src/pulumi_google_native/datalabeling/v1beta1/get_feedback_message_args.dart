// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getFeedbackMessage.
class GetFeedbackMessageArgs {
  final Input<String> annotatedDatasetId;
  final Input<String> datasetId;
  final Input<String> feedbackMessageId;
  final Input<String> feedbackThreadId;
  final Input<String>? project;

  GetFeedbackMessageArgs({
    required this.annotatedDatasetId,
    required this.datasetId,
    required this.feedbackMessageId,
    required this.feedbackThreadId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['annotatedDatasetId'] = annotatedDatasetId;
    map['datasetId'] = datasetId;
    map['feedbackMessageId'] = feedbackMessageId;
    map['feedbackThreadId'] = feedbackThreadId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetFeedbackMessageArgs.fromMap(Map<String, dynamic> map) {
    return GetFeedbackMessageArgs(
      annotatedDatasetId: Input.asInput<String>(map['annotatedDatasetId']),
      datasetId: Input.asInput<String>(map['datasetId']),
      feedbackMessageId: Input.asInput<String>(map['feedbackMessageId']),
      feedbackThreadId: Input.asInput<String>(map['feedbackThreadId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
