import 'package:pulumi/pulumi.dart';
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
    this.annotatedDatasetId = Output.createUnknown<String>();
    this.body = Output.createUnknown<String>();
    this.createTime = Output.createUnknown<String>();
    this.datasetId = Output.createUnknown<String>();
    this.feedbackThreadId = Output.createUnknown<String>();
    this.image = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.operatorFeedbackMetadata =
        Output.createUnknown<Map<String, dynamic>>();
    this.project = Output.createUnknown<String>();
    this.requesterFeedbackMetadata =
        Output.createUnknown<Map<String, dynamic>>();
  }
}
