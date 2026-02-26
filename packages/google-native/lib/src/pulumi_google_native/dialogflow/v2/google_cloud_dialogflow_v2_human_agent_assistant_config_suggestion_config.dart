// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_dialogflow_v2_human_agent_assistant_config_suggestion_feature_config.dart';

/// Detail human agent assistant config.
class GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionConfig {
  /// Configuration of different suggestion features. One feature can have only one config.
  final List<
          GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionFeatureConfig>?
      featureConfigs;

  /// If `group_suggestion_responses` is false, and there are multiple `feature_configs` in `event based suggestion` or StreamingAnalyzeContent, we will try to deliver suggestions to customers as soon as we get new suggestion. Different type of suggestions based on the same context will be in separate Pub/Sub event or `StreamingAnalyzeContentResponse`. If `group_suggestion_responses` set to true. All the suggestions to the same participant based on the same context will be grouped into a single Pub/Sub event or StreamingAnalyzeContentResponse.
  final bool? groupSuggestionResponses;

  GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionConfig({
    this.featureConfigs,
    this.groupSuggestionResponses,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final featureConfigsValue = featureConfigs;
    if (featureConfigsValue != null) {
      map['featureConfigs'] = Input.encodeList<
          GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionFeatureConfig,
          Map<String, dynamic>>(featureConfigsValue, (value) => value.toMap());
    }
    final groupSuggestionResponsesValue = groupSuggestionResponses;
    if (groupSuggestionResponsesValue != null) {
      map['groupSuggestionResponses'] = groupSuggestionResponsesValue;
    }
    return map;
  }

  factory GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionConfig.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionConfig(
      featureConfigs: map['featureConfigs'] == null
          ? null
          : Input.decodeList<
                  GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionFeatureConfig>(
              map['featureConfigs'],
              (value) =>
                  GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionFeatureConfig
                      .fromMap((value as Map).cast<String, dynamic>())),
      groupSuggestionResponses: map['groupSuggestionResponses'] == null
          ? null
          : map['groupSuggestionResponses'] as bool,
    );
  }
}
