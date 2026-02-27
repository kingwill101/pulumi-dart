// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getFeedbackMessage.
class GetFeedbackMessageArgs {
  final pulumi.Input<String> annotatedDatasetId;
  final pulumi.Input<String> datasetId;
  final pulumi.Input<String> feedbackMessageId;
  final pulumi.Input<String> feedbackThreadId;
  final pulumi.Input<String>? project;

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
      annotatedDatasetId:
          pulumi.Input.asInput<String>(map['annotatedDatasetId']),
      datasetId: pulumi.Input.asInput<String>(map['datasetId']),
      feedbackMessageId: pulumi.Input.asInput<String>(map['feedbackMessageId']),
      feedbackThreadId: pulumi.Input.asInput<String>(map['feedbackThreadId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
