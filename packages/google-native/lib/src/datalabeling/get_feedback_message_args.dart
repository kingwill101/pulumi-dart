// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datalabeling_v1beta1_get_feedback_message_args_doc}
/// Arguments for getFeedbackMessage.
/// {@endtemplate}
/// {@macro pulumi_datalabeling_v1beta1_get_feedback_message_args_doc}
class GetFeedbackMessageArgs {
  final pulumi.Input<String> annotatedDatasetId;
  final pulumi.Input<String> datasetId;
  final pulumi.Input<String> feedbackMessageId;
  final pulumi.Input<String> feedbackThreadId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetFeedbackMessageArgs].
  /// [annotatedDatasetId] Required.
  /// [datasetId] Required.
  /// [feedbackMessageId] Required.
  /// [feedbackThreadId] Required.
  /// [project] Optional.
  GetFeedbackMessageArgs({
    required String annotatedDatasetId,
    required String datasetId,
    required String feedbackMessageId,
    required String feedbackThreadId,
    String? project,
  }) :
      annotatedDatasetId = pulumi.Input.asInput<String>(annotatedDatasetId),
      datasetId = pulumi.Input.asInput<String>(datasetId),
      feedbackMessageId = pulumi.Input.asInput<String>(feedbackMessageId),
      feedbackThreadId = pulumi.Input.asInput<String>(feedbackThreadId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotatedDatasetId': annotatedDatasetId,
      'datasetId': datasetId,
      'feedbackMessageId': feedbackMessageId,
      'feedbackThreadId': feedbackThreadId,
      'project': ?project,
    };
  }

  factory GetFeedbackMessageArgs.fromMap(Map<String, dynamic> map) {
    return GetFeedbackMessageArgs(
      annotatedDatasetId: map['annotatedDatasetId'] as String,
      datasetId: map['datasetId'] as String,
      feedbackMessageId: map['feedbackMessageId'] as String,
      feedbackThreadId: map['feedbackThreadId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

