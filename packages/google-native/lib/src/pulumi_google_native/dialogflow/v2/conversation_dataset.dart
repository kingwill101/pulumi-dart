import 'package:pulumi/pulumi.dart';
import 'conversation_dataset_args.dart';
import 'google_cloud_dialogflow_v2_conversation_info_response.dart';
import 'google_cloud_dialogflow_v2_input_config_response.dart';

/// Creates a new conversation dataset. This method is a [long-running operation](https://cloud.google.com/dialogflow/es/docs/how/long-running-operations). The returned `Operation` type has the following method-specific fields: - `metadata`: CreateConversationDatasetOperationMetadata - `response`: ConversationDataset
/// Auto-naming is currently not supported for this resource.
class ConversationDataset extends CustomResource {
  /// The number of conversations this conversation dataset contains.
  late final Output<String> conversationCount;

  /// Metadata set during conversation data import.
  late final Output<GoogleCloudDialogflowV2ConversationInfoResponse>
      conversationInfo;

  /// Creation time of this dataset.
  late final Output<String> createTime;

  /// Optional. The description of the dataset. Maximum of 10000 bytes.
  late final Output<String> description;

  /// The display name of the dataset. Maximum of 64 bytes.
  late final Output<String> displayName;

  /// Input configurations set during conversation data import.
  late final Output<GoogleCloudDialogflowV2InputConfigResponse> inputConfig;
  late final Output<String> location;

  /// ConversationDataset resource name. Format: `projects//locations//conversationDatasets/`
  late final Output<String> name;
  late final Output<String> project;

  ConversationDataset(
    String name, {
    ConversationDatasetArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:dialogflow/v2:ConversationDataset',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.conversationCount = Output.createUnknown<String>();
    this.conversationInfo =
        Output.createUnknown<GoogleCloudDialogflowV2ConversationInfoResponse>();
    this.createTime = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.displayName = Output.createUnknown<String>();
    this.inputConfig =
        Output.createUnknown<GoogleCloudDialogflowV2InputConfigResponse>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
  }
}
