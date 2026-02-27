// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_dialogflow_v2_article_suggestion_model_metadata.dart';
import 'google_cloud_dialogflow_v2_input_dataset.dart';
import 'google_cloud_dialogflow_v2_smart_reply_model_metadata.dart';

/// The set of arguments for ConversationModel.
class ConversationModelArgs {
  /// Metadata for article suggestion models.
  final Input<GoogleCloudDialogflowV2ArticleSuggestionModelMetadata>?
      articleSuggestionModelMetadata;

  /// Datasets used to create model.
  final Input<List<GoogleCloudDialogflowV2InputDataset>> datasets;

  /// The display name of the model. At most 64 bytes long.
  final Input<String> displayName;

  /// Language code for the conversation model. If not specified, the language is en-US. Language at ConversationModel should be set for all non en-us languages. This should be a [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt) language tag. Example: "en-US".
  final Input<String>? languageCode;
  final Input<String>? location;

  /// ConversationModel resource name. Format: `projects//conversationModels/`
  final Input<String>? name;
  final Input<String>? project;

  /// Metadata for smart reply models.
  final Input<GoogleCloudDialogflowV2SmartReplyModelMetadata>?
      smartReplyModelMetadata;

  ConversationModelArgs({
    this.articleSuggestionModelMetadata,
    required this.datasets,
    required this.displayName,
    this.languageCode,
    this.location,
    this.name,
    this.project,
    this.smartReplyModelMetadata,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final articleSuggestionModelMetadataValue = articleSuggestionModelMetadata;
    if (articleSuggestionModelMetadataValue != null) {
      map['articleSuggestionModelMetadata'] = Input.mapOptionalInputValue<
              GoogleCloudDialogflowV2ArticleSuggestionModelMetadata,
              Map<String, dynamic>>(
          articleSuggestionModelMetadataValue, (value) => value.toMap());
    }
    map['datasets'] = Input.mapInputValue<
            List<GoogleCloudDialogflowV2InputDataset>,
            List<Map<String, dynamic>>>(
        datasets,
        (value) => Input.encodeList<GoogleCloudDialogflowV2InputDataset,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    map['displayName'] = displayName;
    final languageCodeValue = languageCode;
    if (languageCodeValue != null) {
      map['languageCode'] = languageCodeValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final smartReplyModelMetadataValue = smartReplyModelMetadata;
    if (smartReplyModelMetadataValue != null) {
      map['smartReplyModelMetadata'] = Input.mapOptionalInputValue<
              GoogleCloudDialogflowV2SmartReplyModelMetadata,
              Map<String, dynamic>>(
          smartReplyModelMetadataValue, (value) => value.toMap());
    }
    return map;
  }

  factory ConversationModelArgs.fromMap(Map<String, dynamic> map) {
    return ConversationModelArgs(
      articleSuggestionModelMetadata: Input.asOptionalInput<
              GoogleCloudDialogflowV2ArticleSuggestionModelMetadata>(
          map['articleSuggestionModelMetadata']),
      datasets: Input.asInput<List<GoogleCloudDialogflowV2InputDataset>>(
          map['datasets']),
      displayName: Input.asInput<String>(map['displayName']),
      languageCode: Input.asOptionalInput<String>(map['languageCode']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      smartReplyModelMetadata:
          Input.asOptionalInput<GoogleCloudDialogflowV2SmartReplyModelMetadata>(
              map['smartReplyModelMetadata']),
    );
  }
}
