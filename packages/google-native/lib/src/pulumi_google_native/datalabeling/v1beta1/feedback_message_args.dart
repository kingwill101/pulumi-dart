// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// The set of arguments for FeedbackMessage.
class FeedbackMessageArgs {
  final Input<String> annotatedDatasetId;

  /// String content of the feedback. Maximum of 10000 characters.
  final Input<String>? body;

  /// Create time.
  final Input<String>? createTime;
  final Input<String> datasetId;
  final Input<String> feedbackThreadId;

  /// The image storing this feedback if the feedback is an image representing operator's comments.
  final Input<String>? image;

  /// Name of the feedback message in a feedback thread. Format: 'project/{project_id}/datasets/{dataset_id}/annotatedDatasets/{annotated_dataset_id}/feedbackThreads/{feedback_thread_id}/feedbackMessage/{feedback_message_id}'
  final Input<String>? name;
  final Input<Map<String, dynamic>>? operatorFeedbackMetadata;
  final Input<String>? project;
  final Input<Map<String, dynamic>>? requesterFeedbackMetadata;

  FeedbackMessageArgs({
    required this.annotatedDatasetId,
    this.body,
    this.createTime,
    required this.datasetId,
    required this.feedbackThreadId,
    this.image,
    this.name,
    this.operatorFeedbackMetadata,
    this.project,
    this.requesterFeedbackMetadata,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['annotatedDatasetId'] = annotatedDatasetId;
    final bodyValue = body;
    if (bodyValue != null) {
      map['body'] = bodyValue;
    }
    final createTimeValue = createTime;
    if (createTimeValue != null) {
      map['createTime'] = createTimeValue;
    }
    map['datasetId'] = datasetId;
    map['feedbackThreadId'] = feedbackThreadId;
    final imageValue = image;
    if (imageValue != null) {
      map['image'] = imageValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final operatorFeedbackMetadataValue = operatorFeedbackMetadata;
    if (operatorFeedbackMetadataValue != null) {
      map['operatorFeedbackMetadata'] = operatorFeedbackMetadataValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final requesterFeedbackMetadataValue = requesterFeedbackMetadata;
    if (requesterFeedbackMetadataValue != null) {
      map['requesterFeedbackMetadata'] = requesterFeedbackMetadataValue;
    }
    return map;
  }

  factory FeedbackMessageArgs.fromMap(Map<String, dynamic> map) {
    return FeedbackMessageArgs(
      annotatedDatasetId: Input.asInput<String>(map['annotatedDatasetId']),
      body: Input.asOptionalInput<String>(map['body']),
      createTime: Input.asOptionalInput<String>(map['createTime']),
      datasetId: Input.asInput<String>(map['datasetId']),
      feedbackThreadId: Input.asInput<String>(map['feedbackThreadId']),
      image: Input.asOptionalInput<String>(map['image']),
      name: Input.asOptionalInput<String>(map['name']),
      operatorFeedbackMetadata: Input.asOptionalInput<Map<String, dynamic>>(
          map['operatorFeedbackMetadata']),
      project: Input.asOptionalInput<String>(map['project']),
      requesterFeedbackMetadata: Input.asOptionalInput<Map<String, dynamic>>(
          map['requesterFeedbackMetadata']),
    );
  }
}
