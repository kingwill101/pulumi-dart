import 'package:pulumi/pulumi.dart' hide Config;
import 'feedback_message_args.dart';

/// Create a FeedbackMessage object.
class FeedbackMessage extends CustomResource {
  late final Output<String> annotatedDatasetId;

  /// String content of the feedback. Maximum of 10000 characters.
  late final Output<String> body;

  /// Create time.
  late final Output<String> createTime;
  late final Output<String> datasetId;
  late final Output<String> feedbackThreadId;

  /// The image storing this feedback if the feedback is an image representing operator's comments.
  late final Output<String> image;

  /// Name of the feedback message in a feedback thread. Format: 'project/{project_id}/datasets/{dataset_id}/annotatedDatasets/{annotated_dataset_id}/feedbackThreads/{feedback_thread_id}/feedbackMessage/{feedback_message_id}'
  late final Output<String> name;
  late final Output<Map<String, dynamic>> operatorFeedbackMetadata;
  late final Output<String> project;
  late final Output<Map<String, dynamic>> requesterFeedbackMetadata;

  FeedbackMessage(
    String name, {
    FeedbackMessageArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:datalabeling/v1beta1:FeedbackMessage',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.annotatedDatasetId = registerOutput<String>('annotatedDatasetId');
    this.body = registerOutput<String>('body');
    this.createTime = registerOutput<String>('createTime');
    this.datasetId = registerOutput<String>('datasetId');
    this.feedbackThreadId = registerOutput<String>('feedbackThreadId');
    this.image = registerOutput<String>('image');
    this.name = registerOutput<String>('name');
    this.operatorFeedbackMetadata =
        registerOutput<Map<String, dynamic>>('operatorFeedbackMetadata');
    this.project = registerOutput<String>('project');
    this.requesterFeedbackMetadata =
        registerOutput<Map<String, dynamic>>('requesterFeedbackMetadata');
  }
}
