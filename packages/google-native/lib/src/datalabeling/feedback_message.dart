import 'package:pulumi/pulumi.dart' as pulumi;
import 'feedback_message_args.dart';

/// Create a FeedbackMessage object.
class FeedbackMessage extends pulumi.CustomResource {
  late final pulumi.Output<String> annotatedDatasetId;
  /// String content of the feedback. Maximum of 10000 characters.
  late final pulumi.Output<String> body;
  /// Create time.
  late final pulumi.Output<String> createTime;
  late final pulumi.Output<String> datasetId;
  late final pulumi.Output<String> feedbackThreadId;
  /// The image storing this feedback if the feedback is an image representing operator's comments.
  late final pulumi.Output<String> image;
  /// Name of the feedback message in a feedback thread. Format: 'project/{project_id}/datasets/{dataset_id}/annotatedDatasets/{annotated_dataset_id}/feedbackThreads/{feedback_thread_id}/feedbackMessage/{feedback_message_id}'
  late final pulumi.Output<String> name;
  late final pulumi.Output<Map<String, dynamic>> operatorFeedbackMetadata;
  late final pulumi.Output<String> project;
  late final pulumi.Output<Map<String, dynamic>> requesterFeedbackMetadata;

  /// Creates a new [FeedbackMessage].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FeedbackMessage]. {@macro pulumi_datalabeling_v1beta1_feedback_message_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FeedbackMessage(
    String name, {
    FeedbackMessageArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:datalabeling/v1beta1:FeedbackMessage',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.annotatedDatasetId = registerOutput<String>('annotatedDatasetId');
    this.body = registerOutput<String>('body');
    this.createTime = registerOutput<String>('createTime');
    this.datasetId = registerOutput<String>('datasetId');
    this.feedbackThreadId = registerOutput<String>('feedbackThreadId');
    this.image = registerOutput<String>('image');
    this.name = registerOutput<String>('name');
    this.operatorFeedbackMetadata = registerOutput<Map<String, dynamic>>('operatorFeedbackMetadata');
    this.project = registerOutput<String>('project');
    this.requesterFeedbackMetadata = registerOutput<Map<String, dynamic>>('requesterFeedbackMetadata');
  }
}
