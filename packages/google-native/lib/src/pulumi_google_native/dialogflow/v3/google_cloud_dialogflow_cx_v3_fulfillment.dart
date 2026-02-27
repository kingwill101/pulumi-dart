// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_dialogflow_cx_v3_advanced_settings.dart';
import 'google_cloud_dialogflow_cx_v3_fulfillment_conditional_cases.dart';
import 'google_cloud_dialogflow_cx_v3_fulfillment_set_parameter_action.dart';
import 'google_cloud_dialogflow_cx_v3_response_message.dart';

/// A fulfillment can do one or more of the following actions at the same time: * Generate rich message responses. * Set parameter values. * Call the webhook. Fulfillments can be called at various stages in the Page or Form lifecycle. For example, when a DetectIntentRequest drives a session to enter a new page, the page's entry fulfillment can add a static response to the QueryResult in the returning DetectIntentResponse, call the webhook (for example, to load user data from a database), or both.
class GoogleCloudDialogflowCxV3Fulfillment {
  /// Hierarchical advanced settings for this fulfillment. The settings exposed at the lower level overrides the settings exposed at the higher level.
  final GoogleCloudDialogflowCxV3AdvancedSettings? advancedSettings;

  /// Conditional cases for this fulfillment.
  final List<GoogleCloudDialogflowCxV3FulfillmentConditionalCases>?
      conditionalCases;

  /// If the flag is true, the agent will utilize LLM to generate a text response. If LLM generation fails, the defined responses in the fulfillment will be respected. This flag is only useful for fulfillments associated with no-match event handlers.
  final bool? enableGenerativeFallback;

  /// The list of rich message responses to present to the user.
  final List<GoogleCloudDialogflowCxV3ResponseMessage>? messages;

  /// Whether Dialogflow should return currently queued fulfillment response messages in streaming APIs. If a webhook is specified, it happens before Dialogflow invokes webhook. Warning: 1) This flag only affects streaming API. Responses are still queued and returned once in non-streaming API. 2) The flag can be enabled in any fulfillment but only the first 3 partial responses will be returned. You may only want to apply it to fulfillments that have slow webhooks.
  final bool? returnPartialResponses;

  /// Set parameter values before executing the webhook.
  final List<GoogleCloudDialogflowCxV3FulfillmentSetParameterAction>?
      setParameterActions;

  /// The value of this field will be populated in the WebhookRequest `fulfillmentInfo.tag` field by Dialogflow when the associated webhook is called. The tag is typically used by the webhook service to identify which fulfillment is being called, but it could be used for other purposes. This field is required if `webhook` is specified.
  final String? tag;

  /// The webhook to call. Format: `projects//locations//agents//webhooks/`.
  final String? webhook;

  GoogleCloudDialogflowCxV3Fulfillment({
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
      map['conditionalCases'] = Input.encodeList<
              GoogleCloudDialogflowCxV3FulfillmentConditionalCases,
              Map<String, dynamic>>(
          conditionalCasesValue, (value) => value.toMap());
    }
    final enableGenerativeFallbackValue = enableGenerativeFallback;
    if (enableGenerativeFallbackValue != null) {
      map['enableGenerativeFallback'] = enableGenerativeFallbackValue;
    }
    final messagesValue = messages;
    if (messagesValue != null) {
      map['messages'] = Input.encodeList<
          GoogleCloudDialogflowCxV3ResponseMessage,
          Map<String, dynamic>>(messagesValue, (value) => value.toMap());
    }
    final returnPartialResponsesValue = returnPartialResponses;
    if (returnPartialResponsesValue != null) {
      map['returnPartialResponses'] = returnPartialResponsesValue;
    }
    final setParameterActionsValue = setParameterActions;
    if (setParameterActionsValue != null) {
      map['setParameterActions'] = Input.encodeList<
              GoogleCloudDialogflowCxV3FulfillmentSetParameterAction,
              Map<String, dynamic>>(
          setParameterActionsValue, (value) => value.toMap());
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

  factory GoogleCloudDialogflowCxV3Fulfillment.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3Fulfillment(
      advancedSettings: map['advancedSettings'] == null
          ? null
          : GoogleCloudDialogflowCxV3AdvancedSettings.fromMap(
              (map['advancedSettings'] as Map).cast<String, dynamic>()),
      conditionalCases: map['conditionalCases'] == null
          ? null
          : Input.decodeList<
                  GoogleCloudDialogflowCxV3FulfillmentConditionalCases>(
              map['conditionalCases'],
              (value) =>
                  GoogleCloudDialogflowCxV3FulfillmentConditionalCases.fromMap(
                      (value as Map).cast<String, dynamic>())),
      enableGenerativeFallback: map['enableGenerativeFallback'] == null
          ? null
          : map['enableGenerativeFallback'] as bool,
      messages: map['messages'] == null
          ? null
          : Input.decodeList<GoogleCloudDialogflowCxV3ResponseMessage>(
              map['messages'],
              (value) => GoogleCloudDialogflowCxV3ResponseMessage.fromMap(
                  (value as Map).cast<String, dynamic>())),
      returnPartialResponses: map['returnPartialResponses'] == null
          ? null
          : map['returnPartialResponses'] as bool,
      setParameterActions: map['setParameterActions'] == null
          ? null
          : Input.decodeList<
                  GoogleCloudDialogflowCxV3FulfillmentSetParameterAction>(
              map['setParameterActions'],
              (value) => GoogleCloudDialogflowCxV3FulfillmentSetParameterAction
                  .fromMap((value as Map).cast<String, dynamic>())),
      tag: map['tag'] == null ? null : map['tag'] as String,
      webhook: map['webhook'] == null ? null : map['webhook'] as String,
    );
  }
}
