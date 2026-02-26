// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_dialogflow_cx_v3beta1_advanced_settings_response.dart';
import 'google_cloud_dialogflow_cx_v3beta1_fulfillment_conditional_cases_response.dart';
import 'google_cloud_dialogflow_cx_v3beta1_fulfillment_set_parameter_action_response.dart';
import 'google_cloud_dialogflow_cx_v3beta1_response_message_response.dart';

/// A fulfillment can do one or more of the following actions at the same time: * Generate rich message responses. * Set parameter values. * Call the webhook. Fulfillments can be called at various stages in the Page or Form lifecycle. For example, when a DetectIntentRequest drives a session to enter a new page, the page's entry fulfillment can add a static response to the QueryResult in the returning DetectIntentResponse, call the webhook (for example, to load user data from a database), or both.
class GoogleCloudDialogflowCxV3beta1FulfillmentResponse {
  /// Hierarchical advanced settings for this fulfillment. The settings exposed at the lower level overrides the settings exposed at the higher level.
  final GoogleCloudDialogflowCxV3beta1AdvancedSettingsResponse advancedSettings;

  /// Conditional cases for this fulfillment.
  final List<GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesResponse>
      conditionalCases;

  /// If the flag is true, the agent will utilize LLM to generate a text response. If LLM generation fails, the defined responses in the fulfillment will be respected. This flag is only useful for fulfillments associated with no-match event handlers.
  final bool enableGenerativeFallback;

  /// The list of rich message responses to present to the user.
  final List<GoogleCloudDialogflowCxV3beta1ResponseMessageResponse> messages;

  /// Whether Dialogflow should return currently queued fulfillment response messages in streaming APIs. If a webhook is specified, it happens before Dialogflow invokes webhook. Warning: 1) This flag only affects streaming API. Responses are still queued and returned once in non-streaming API. 2) The flag can be enabled in any fulfillment but only the first 3 partial responses will be returned. You may only want to apply it to fulfillments that have slow webhooks.
  final bool returnPartialResponses;

  /// Set parameter values before executing the webhook.
  final List<
          GoogleCloudDialogflowCxV3beta1FulfillmentSetParameterActionResponse>
      setParameterActions;

  /// The value of this field will be populated in the WebhookRequest `fulfillmentInfo.tag` field by Dialogflow when the associated webhook is called. The tag is typically used by the webhook service to identify which fulfillment is being called, but it could be used for other purposes. This field is required if `webhook` is specified.
  final String tag;

  /// The webhook to call. Format: `projects//locations//agents//webhooks/`.
  final String webhook;

  GoogleCloudDialogflowCxV3beta1FulfillmentResponse({
    required this.advancedSettings,
    required this.conditionalCases,
    required this.enableGenerativeFallback,
    required this.messages,
    required this.returnPartialResponses,
    required this.setParameterActions,
    required this.tag,
    required this.webhook,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['advancedSettings'] = advancedSettings.toMap();
    map['conditionalCases'] = Input.encodeList<
        GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesResponse,
        Map<String, dynamic>>(conditionalCases, (value) => value.toMap());
    map['enableGenerativeFallback'] = enableGenerativeFallback;
    map['messages'] = Input.encodeList<
        GoogleCloudDialogflowCxV3beta1ResponseMessageResponse,
        Map<String, dynamic>>(messages, (value) => value.toMap());
    map['returnPartialResponses'] = returnPartialResponses;
    map['setParameterActions'] = Input.encodeList<
        GoogleCloudDialogflowCxV3beta1FulfillmentSetParameterActionResponse,
        Map<String, dynamic>>(setParameterActions, (value) => value.toMap());
    map['tag'] = tag;
    map['webhook'] = webhook;
    return map;
  }

  factory GoogleCloudDialogflowCxV3beta1FulfillmentResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1FulfillmentResponse(
      advancedSettings:
          GoogleCloudDialogflowCxV3beta1AdvancedSettingsResponse.fromMap(
              (map['advancedSettings'] as Map).cast<String, dynamic>()),
      conditionalCases: Input.decodeList<
              GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesResponse>(
          map['conditionalCases'],
          (value) =>
              GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesResponse
                  .fromMap((value as Map).cast<String, dynamic>())),
      enableGenerativeFallback: map['enableGenerativeFallback'] as bool,
      messages: Input.decodeList<
              GoogleCloudDialogflowCxV3beta1ResponseMessageResponse>(
          map['messages'],
          (value) =>
              GoogleCloudDialogflowCxV3beta1ResponseMessageResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
      returnPartialResponses: map['returnPartialResponses'] as bool,
      setParameterActions: Input.decodeList<
              GoogleCloudDialogflowCxV3beta1FulfillmentSetParameterActionResponse>(
          map['setParameterActions'],
          (value) =>
              GoogleCloudDialogflowCxV3beta1FulfillmentSetParameterActionResponse
                  .fromMap((value as Map).cast<String, dynamic>())),
      tag: map['tag'] as String,
      webhook: map['webhook'] as String,
    );
  }
}
