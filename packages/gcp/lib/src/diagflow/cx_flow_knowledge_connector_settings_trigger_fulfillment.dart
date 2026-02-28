// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_flow_knowledge_connector_settings_trigger_fulfillment_advanced_settings.dart';
import 'cx_flow_knowledge_connector_settings_trigger_fulfillment_conditional_case.dart';
import 'cx_flow_knowledge_connector_settings_trigger_fulfillment_message.dart';
import 'cx_flow_knowledge_connector_settings_trigger_fulfillment_set_parameter_action.dart';

class CxFlowKnowledgeConnectorSettingsTriggerFulfillment {
  /// Hierarchical advanced settings for agent/flow/page/fulfillment/parameter. Settings exposed at lower level overrides the settings exposed at higher level. Overriding occurs at the sub-setting level. For example, the playbackInterruptionSettings at fulfillment level only overrides the playbackInterruptionSettings at the agent level, leaving other settings at the agent level unchanged.
  /// DTMF settings does not override each other. DTMF settings set at different levels define DTMF detections running in parallel.
  /// Hierarchy: Agent->Flow->Page->Fulfillment/Parameter.
  /// Structure is documented below.
  final CxFlowKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettings?
      advancedSettings;

  /// Conditional cases for this fulfillment.
  /// Structure is documented below.
  final List<CxFlowKnowledgeConnectorSettingsTriggerFulfillmentConditionalCase>?
      conditionalCases;

  /// If the flag is true, the agent will utilize LLM to generate a text response. If LLM generation fails, the defined responses in the fulfillment will be respected. This flag is only useful for fulfillments associated with no-match event handlers.
  final bool? enableGenerativeFallback;

  /// The list of rich message responses to present to the user.
  /// Structure is documented below.
  final List<CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessage>?
      messages;

  /// Whether Dialogflow should return currently queued fulfillment response messages in streaming APIs. If a webhook is specified, it happens before Dialogflow invokes webhook. Warning: 1) This flag only affects streaming API. Responses are still queued and returned once in non-streaming API. 2) The flag can be enabled in any fulfillment but only the first 3 partial responses will be returned. You may only want to apply it to fulfillments that have slow webhooks.
  final bool? returnPartialResponses;

  /// Set parameter values before executing the webhook.
  /// Structure is documented below.
  final List<
          CxFlowKnowledgeConnectorSettingsTriggerFulfillmentSetParameterAction>?
      setParameterActions;

  /// The tag used by the webhook to identify which fulfillment is being called. This field is required if webhook is specified.
  final String? tag;

  /// The webhook to call. Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/webhooks/<Webhook ID>.
  final String? webhook;

  /// Creates a new [CxFlowKnowledgeConnectorSettingsTriggerFulfillment].
  /// [advancedSettings] Hierarchical advanced settings for agent/flow/page/fulfillment/parameter. Settings exposed at lower level overrides the settings exposed at higher level. Overriding occurs at the sub-setting level. For example, the playbackInterruptionSettings at fulfillment level only overrides the playbackInterruptionSettings at the agent level, leaving other settings at the agent level unchanged.
  /// [conditionalCases] Conditional cases for this fulfillment.
  /// [enableGenerativeFallback] If the flag is true, the agent will utilize LLM to generate a text response. If LLM generation fails, the defined responses in the fulfillment will be respected. This flag is only useful for fulfillments associated with no-match event handlers.
  /// [messages] The list of rich message responses to present to the user.
  /// [returnPartialResponses] Whether Dialogflow should return currently queued fulfillment response messages in streaming APIs. If a webhook is specified, it happens before Dialogflow invokes webhook. Warning: 1) This flag only affects streaming API. Responses are still queued and returned once in non-streaming API. 2) The flag can be enabled in any fulfillment but only the first 3 partial responses will be returned. You may only want to apply it to fulfillments that have slow webhooks.
  /// [setParameterActions] Set parameter values before executing the webhook.
  /// [tag] The tag used by the webhook to identify which fulfillment is being called. This field is required if webhook is specified.
  /// [webhook] The webhook to call. Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/webhooks/<Webhook ID>.
  CxFlowKnowledgeConnectorSettingsTriggerFulfillment({
    this.advancedSettings,
    this.conditionalCases,
    this.enableGenerativeFallback,
    this.messages,
    this.returnPartialResponses,
    this.setParameterActions,
    this.tag,
    this.webhook,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final advancedSettingsValue = advancedSettings;
    if (advancedSettingsValue != null) {
      map['advancedSettings'] = advancedSettingsValue.toMap();
    }
    final conditionalCasesValue = conditionalCases;
    if (conditionalCasesValue != null) {
      map['conditionalCases'] = pulumi.Input.encodeList<
              CxFlowKnowledgeConnectorSettingsTriggerFulfillmentConditionalCase,
              Map<String, dynamic>>(
          conditionalCasesValue, (value) => value.toMap());
    }
    final enableGenerativeFallbackValue = enableGenerativeFallback;
    if (enableGenerativeFallbackValue != null) {
      map['enableGenerativeFallback'] = enableGenerativeFallbackValue;
    }
    final messagesValue = messages;
    if (messagesValue != null) {
      map['messages'] = pulumi.Input.encodeList<
          CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessage,
          Map<String, dynamic>>(messagesValue, (value) => value.toMap());
    }
    final returnPartialResponsesValue = returnPartialResponses;
    if (returnPartialResponsesValue != null) {
      map['returnPartialResponses'] = returnPartialResponsesValue;
    }
    final setParameterActionsValue = setParameterActions;
    if (setParameterActionsValue != null) {
      map['setParameterActions'] = pulumi.Input.encodeList<
          CxFlowKnowledgeConnectorSettingsTriggerFulfillmentSetParameterAction,
          Map<String,
              dynamic>>(setParameterActionsValue, (value) => value.toMap());
    }
    final tagValue = tag;
    if (tagValue != null) {
      map['tag'] = tagValue;
    }
    final webhookValue = webhook;
    if (webhookValue != null) {
      map['webhook'] = webhookValue;
    }
    return map;
  }

  factory CxFlowKnowledgeConnectorSettingsTriggerFulfillment.fromMap(
      Map<String, dynamic> map) {
    return CxFlowKnowledgeConnectorSettingsTriggerFulfillment(
      advancedSettings: map['advancedSettings'] == null
          ? null
          : CxFlowKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettings
              .fromMap(
                  (map['advancedSettings'] as Map).cast<String, dynamic>()),
      conditionalCases: map['conditionalCases'] == null
          ? null
          : pulumi.Input.decodeList<
                  CxFlowKnowledgeConnectorSettingsTriggerFulfillmentConditionalCase>(
              map['conditionalCases'],
              (value) =>
                  CxFlowKnowledgeConnectorSettingsTriggerFulfillmentConditionalCase
                      .fromMap((value as Map).cast<String, dynamic>())),
      enableGenerativeFallback: map['enableGenerativeFallback'] == null
          ? null
          : map['enableGenerativeFallback'] as bool,
      messages: map['messages'] == null
          ? null
          : pulumi.Input.decodeList<
                  CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessage>(
              map['messages'],
              (value) =>
                  CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessage
                      .fromMap((value as Map).cast<String, dynamic>())),
      returnPartialResponses: map['returnPartialResponses'] == null
          ? null
          : map['returnPartialResponses'] as bool,
      setParameterActions: map['setParameterActions'] == null
          ? null
          : pulumi.Input.decodeList<
                  CxFlowKnowledgeConnectorSettingsTriggerFulfillmentSetParameterAction>(
              map['setParameterActions'],
              (value) =>
                  CxFlowKnowledgeConnectorSettingsTriggerFulfillmentSetParameterAction
                      .fromMap((value as Map).cast<String, dynamic>())),
      tag: map['tag'] == null ? null : map['tag'] as String,
      webhook: map['webhook'] == null ? null : map['webhook'] as String,
    );
  }
}
