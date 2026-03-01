// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2beta1_human_agent_assistant_config_suggestion_feature_config_response.dart';

/// Detail human agent assistant config.
class GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionConfigResponse {
  /// Configuration of different suggestion features. One feature can have only one config.
  final List<
    GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionFeatureConfigResponse
  >
  featureConfigs;

  /// If `group_suggestion_responses` is false, and there are multiple `feature_configs` in `event based suggestion` or StreamingAnalyzeContent, we will try to deliver suggestions to customers as soon as we get new suggestion. Different type of suggestions based on the same context will be in separate Pub/Sub event or `StreamingAnalyzeContentResponse`. If `group_suggestion_responses` set to true. All the suggestions to the same participant based on the same context will be grouped into a single Pub/Sub event or StreamingAnalyzeContentResponse.
  final bool groupSuggestionResponses;

  /// Creates a new [GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionConfigResponse].
  /// [featureConfigs] Configuration of different suggestion features. One feature can have only one config.
  /// [groupSuggestionResponses] If `group_suggestion_responses` is false, and there are multiple `feature_configs` in `event based suggestion` or StreamingAnalyzeContent, we will try to deliver suggestions to customers as soon as we get new suggestion. Different type of suggestions based on the same context will be in separate Pub/Sub event or `StreamingAnalyzeContentResponse`. If `group_suggestion_responses` set to true. All the suggestions to the same participant based on the same context will be grouped into a single Pub/Sub event or StreamingAnalyzeContentResponse.
  GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionConfigResponse({
    required this.featureConfigs,
    required this.groupSuggestionResponses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'featureConfigs':
          pulumi.Input.encodeList<
            GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionFeatureConfigResponse,
            Map<String, dynamic>
          >(featureConfigs, (value) => value.toMap()),
      'groupSuggestionResponses': groupSuggestionResponses,
    };
  }

  factory GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionConfigResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionConfigResponse(
      featureConfigs:
          pulumi.Input.decodeList<
            GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionFeatureConfigResponse
          >(
            map['featureConfigs'],
            (value) =>
                GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionFeatureConfigResponse.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      groupSuggestionResponses: map['groupSuggestionResponses'] as bool,
    );
  }
}
