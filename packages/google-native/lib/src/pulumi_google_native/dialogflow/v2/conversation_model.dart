import 'package:pulumi/pulumi.dart';
import 'conversation_model_args.dart';
import 'google_cloud_dialogflow_v2_article_suggestion_model_metadata_response.dart';
import 'google_cloud_dialogflow_v2_input_dataset_response.dart';
import 'google_cloud_dialogflow_v2_smart_reply_model_metadata_response.dart';

/// Creates a model. This method is a [long-running operation](https://cloud.google.com/dialogflow/es/docs/how/long-running-operations). The returned `Operation` type has the following method-specific fields: - `metadata`: CreateConversationModelOperationMetadata - `response`: ConversationModel
class ConversationModel extends CustomResource {
  /// Metadata for article suggestion models.
  late final Output<
          GoogleCloudDialogflowV2ArticleSuggestionModelMetadataResponse>
      articleSuggestionModelMetadata;

  /// Creation time of this model.
  late final Output<String> createTime;

  /// Datasets used to create model.
  late final Output<List<GoogleCloudDialogflowV2InputDatasetResponse>> datasets;

  /// The display name of the model. At most 64 bytes long.
  late final Output<String> displayName;

  /// Language code for the conversation model. If not specified, the language is en-US. Language at ConversationModel should be set for all non en-us languages. This should be a [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt) language tag. Example: "en-US".
  late final Output<String> languageCode;
  late final Output<String> location;

  /// ConversationModel resource name. Format: `projects//conversationModels/`
  late final Output<String> name;
  late final Output<String> project;

  /// Metadata for smart reply models.
  late final Output<GoogleCloudDialogflowV2SmartReplyModelMetadataResponse>
      smartReplyModelMetadata;

  /// State of the model. A model can only serve prediction requests after it gets deployed.
  late final Output<String> state;

  ConversationModel(
    String name, {
    ConversationModelArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:dialogflow/v2:ConversationModel',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.articleSuggestionModelMetadata = Output.createUnknown<
        GoogleCloudDialogflowV2ArticleSuggestionModelMetadataResponse>();
    this.createTime = Output.createUnknown<String>();
    this.datasets = Output.createUnknown<
        List<GoogleCloudDialogflowV2InputDatasetResponse>>();
    this.displayName = Output.createUnknown<String>();
    this.languageCode = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.smartReplyModelMetadata = Output.createUnknown<
        GoogleCloudDialogflowV2SmartReplyModelMetadataResponse>();
    this.state = Output.createUnknown<String>();
  }
}
