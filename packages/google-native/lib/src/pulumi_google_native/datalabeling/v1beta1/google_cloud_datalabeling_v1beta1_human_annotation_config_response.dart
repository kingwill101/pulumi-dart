// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for how human labeling task should be done.
class GoogleCloudDatalabelingV1beta1HumanAnnotationConfigResponse {
  /// Optional. A human-readable description for AnnotatedDataset. The description can be up to 10000 characters long.
  final String annotatedDatasetDescription;

  /// A human-readable name for AnnotatedDataset defined by users. Maximum of 64 characters .
  final String annotatedDatasetDisplayName;

  /// Optional. If you want your own labeling contributors to manage and work on this labeling request, you can set these contributors here. We will give them access to the question types in crowdcompute. Note that these emails must be registered in crowdcompute worker UI: https://crowd-compute.appspot.com/
  final List<String> contributorEmails;

  /// Instruction resource name.
  final String instruction;

  /// Optional. A human-readable label used to logically group labeling tasks. This string must match the regular expression `[a-zA-Z\\d_-]{0,128}`.
  final String labelGroup;

  /// Optional. The Language of this question, as a [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt). Default value is en-US. Only need to set this when task is language related. For example, French text classification.
  final String languageCode;

  /// Optional. Maximum duration for contributors to answer a question. Maximum is 3600 seconds. Default is 3600 seconds.
  final String questionDuration;

  /// Optional. Replication of questions. Each question will be sent to up to this number of contributors to label. Aggregated answers will be returned. Default is set to 1. For image related labeling, valid values are 1, 3, 5.
  final int replicaCount;

  /// Email of the user who started the labeling task and should be notified by email. If empty no notification will be sent.
  final String userEmailAddress;

  GoogleCloudDatalabelingV1beta1HumanAnnotationConfigResponse({
    required this.annotatedDatasetDescription,
    required this.annotatedDatasetDisplayName,
    required this.contributorEmails,
    required this.instruction,
    required this.labelGroup,
    required this.languageCode,
    required this.questionDuration,
    required this.replicaCount,
    required this.userEmailAddress,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['annotatedDatasetDescription'] = annotatedDatasetDescription;
    map['annotatedDatasetDisplayName'] = annotatedDatasetDisplayName;
    map['contributorEmails'] = contributorEmails;
    map['instruction'] = instruction;
    map['labelGroup'] = labelGroup;
    map['languageCode'] = languageCode;
    map['questionDuration'] = questionDuration;
    map['replicaCount'] = replicaCount;
    map['userEmailAddress'] = userEmailAddress;
    return map;
  }

  factory GoogleCloudDatalabelingV1beta1HumanAnnotationConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDatalabelingV1beta1HumanAnnotationConfigResponse(
      annotatedDatasetDescription: map['annotatedDatasetDescription'] as String,
      annotatedDatasetDisplayName: map['annotatedDatasetDisplayName'] as String,
      contributorEmails: (map['contributorEmails'] as List).cast<String>(),
      instruction: map['instruction'] as String,
      labelGroup: map['labelGroup'] as String,
      languageCode: map['languageCode'] as String,
      questionDuration: map['questionDuration'] as String,
      replicaCount: map['replicaCount'] as int,
      userEmailAddress: map['userEmailAddress'] as String,
    );
  }
}
