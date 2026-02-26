// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../conversation_profile_human_agent_assistant_config_end_user_suggestion_config_feature_config/conversation_profile_human_agent_assistant_config_end_user_suggestion_config_feature_config.dart';

class ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfig {
  /// When disableHighLatencyFeaturesSyncDelivery is true and using the AnalyzeContent API, we will not deliver the responses from high latency features in the API response. The humanAgentAssistantConfig.notification_config must be configured and enableEventBasedSuggestion must be set to true to receive the responses from high latency features in Pub/Sub. High latency feature(s): KNOWLEDGE_ASSIST
  final bool? disableHighLatencyFeaturesSyncDelivery;

  /// Configuration of different suggestion features. One feature can have only one config.
  /// Structure is documented below.
  final List<
          ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfig>?
      featureConfigs;

  /// List of various generator resource names used in the conversation profile.
  final List<String>? generators;

  /// If groupSuggestionResponses is false, and there are multiple featureConfigs in event based suggestion or StreamingAnalyzeContent, we will try to deliver suggestions to customers as soon as we get new suggestion. Different type of suggestions based on the same context will be in separate Pub/Sub event or StreamingAnalyzeContentResponse.
  /// If groupSuggestionResponses set to true. All the suggestions to the same participant based on the same context will be grouped into a single Pub/Sub event or StreamingAnalyzeContentResponse.
  final bool? groupSuggestionResponses;

  ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfig({
    this.disableHighLatencyFeaturesSyncDelivery,
    this.featureConfigs,
    this.generators,
    this.groupSuggestionResponses,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final disableHighLatencyFeaturesSyncDeliveryValue =
        disableHighLatencyFeaturesSyncDelivery;
    if (disableHighLatencyFeaturesSyncDeliveryValue != null) {
      map['disableHighLatencyFeaturesSyncDelivery'] =
          disableHighLatencyFeaturesSyncDeliveryValue;
    }
    final featureConfigsValue = featureConfigs;
    if (featureConfigsValue != null) {
      map['featureConfigs'] = Input.encodeList<
          ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfig,
          Map<String, dynamic>>(featureConfigsValue, (value) => value.toMap());
    }
    final generatorsValue = generators;
    if (generatorsValue != null) {
      map['generators'] = generatorsValue;
    }
    final groupSuggestionResponsesValue = groupSuggestionResponses;
    if (groupSuggestionResponsesValue != null) {
      map['groupSuggestionResponses'] = groupSuggestionResponsesValue;
    }
    return map;
  }

  factory ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfig.fromMap(
      Map<String, dynamic> map) {
    return ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfig(
      disableHighLatencyFeaturesSyncDelivery:
          map['disableHighLatencyFeaturesSyncDelivery'] == null
              ? null
              : map['disableHighLatencyFeaturesSyncDelivery'] as bool,
      featureConfigs: map['featureConfigs'] == null
          ? null
          : Input.decodeList<
                  ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfig>(
              map['featureConfigs'],
              (value) =>
                  ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfig
                      .fromMap((value as Map).cast<String, dynamic>())),
      generators: map['generators'] == null
          ? null
          : (map['generators'] as List).cast<String>(),
      groupSuggestionResponses: map['groupSuggestionResponses'] == null
          ? null
          : map['groupSuggestionResponses'] as bool,
    );
  }
}
