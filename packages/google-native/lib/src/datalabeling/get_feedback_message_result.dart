// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getFeedbackMessage.
class GetFeedbackMessageResult {
  /// String content of the feedback. Maximum of 10000 characters.
  final String body;

  /// Create time.
  final String createTime;

  /// The image storing this feedback if the feedback is an image representing operator's comments.
  final String image;

  /// Name of the feedback message in a feedback thread. Format: 'project/{project_id}/datasets/{dataset_id}/annotatedDatasets/{annotated_dataset_id}/feedbackThreads/{feedback_thread_id}/feedbackMessage/{feedback_message_id}'
  final String name;
  final Map<String, dynamic> operatorFeedbackMetadata;
  final Map<String, dynamic> requesterFeedbackMetadata;

  /// Creates a new [GetFeedbackMessageResult].
  /// [body] String content of the feedback. Maximum of 10000 characters.
  /// [createTime] Create time.
  /// [image] The image storing this feedback if the feedback is an image representing operator's comments.
  /// [name] Name of the feedback message in a feedback thread. Format: 'project/{project_id}/datasets/{dataset_id}/annotatedDatasets/{annotated_dataset_id}/feedbackThreads/{feedback_thread_id}/feedbackMessage/{feedback_message_id}'
  /// [operatorFeedbackMetadata] Required.
  /// [requesterFeedbackMetadata] Required.
  GetFeedbackMessageResult({
    required this.body,
    required this.createTime,
    required this.image,
    required this.name,
    required this.operatorFeedbackMetadata,
    required this.requesterFeedbackMetadata,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['body'] = body;
    map['createTime'] = createTime;
    map['image'] = image;
    map['name'] = name;
    map['operatorFeedbackMetadata'] = operatorFeedbackMetadata;
    map['requesterFeedbackMetadata'] = requesterFeedbackMetadata;
    return map;
  }

  factory GetFeedbackMessageResult.fromMap(Map<String, dynamic> map) {
    return GetFeedbackMessageResult(
      body: map['body'] as String,
      createTime: map['createTime'] as String,
      image: map['image'] as String,
      name: map['name'] as String,
      operatorFeedbackMetadata:
          (map['operatorFeedbackMetadata'] as Map).cast<String, dynamic>(),
      requesterFeedbackMetadata:
          (map['requesterFeedbackMetadata'] as Map).cast<String, dynamic>(),
    );
  }
}
