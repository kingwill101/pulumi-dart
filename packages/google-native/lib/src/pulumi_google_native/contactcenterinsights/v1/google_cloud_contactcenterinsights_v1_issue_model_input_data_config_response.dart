// ignore_for_file: unused_element, unnecessary_cast

/// Configs for the input data used to create the issue model.
class GoogleCloudContactcenterinsightsV1IssueModelInputDataConfigResponse {
  /// A filter to reduce the conversations used for training the model to a specific subset.
  final String filter;

  /// Medium of conversations used in training data. This field is being deprecated. To specify the medium to be used in training a new issue model, set the `medium` field on `filter`.
  final String medium;

  /// Number of conversations used in training. Output only.
  final String trainingConversationsCount;

  GoogleCloudContactcenterinsightsV1IssueModelInputDataConfigResponse({
    required this.filter,
    required this.medium,
    required this.trainingConversationsCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['filter'] = filter;
    map['medium'] = medium;
    map['trainingConversationsCount'] = trainingConversationsCount;
    return map;
  }

  factory GoogleCloudContactcenterinsightsV1IssueModelInputDataConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudContactcenterinsightsV1IssueModelInputDataConfigResponse(
      filter: map['filter'] as String,
      medium: map['medium'] as String,
      trainingConversationsCount: map['trainingConversationsCount'] as String,
    );
  }
}
