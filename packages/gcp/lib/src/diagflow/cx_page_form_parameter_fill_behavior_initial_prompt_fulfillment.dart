// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_page_form_parameter_fill_behavior_initial_prompt_fulfillment_conditional_case.dart';
import 'cx_page_form_parameter_fill_behavior_initial_prompt_fulfillment_message.dart';
import 'cx_page_form_parameter_fill_behavior_initial_prompt_fulfillment_set_parameter_action.dart';

class CxPageFormParameterFillBehaviorInitialPromptFulfillment {
  /// Conditional cases for this fulfillment.
  /// Structure is documented below.
  final List<
          CxPageFormParameterFillBehaviorInitialPromptFulfillmentConditionalCase>?
      conditionalCases;

  /// The list of rich message responses to present to the user.
  /// Structure is documented below.
  final List<CxPageFormParameterFillBehaviorInitialPromptFulfillmentMessage>?
      messages;

  /// Whether Dialogflow should return currently queued fulfillment response messages in streaming APIs. If a webhook is specified, it happens before Dialogflow invokes webhook. Warning: 1) This flag only affects streaming API. Responses are still queued and returned once in non-streaming API. 2) The flag can be enabled in any fulfillment but only the first 3 partial responses will be returned. You may only want to apply it to fulfillments that have slow webhooks.
  final bool? returnPartialResponses;

  /// Set parameter values before executing the webhook.
  /// Structure is documented below.
  final List<
          CxPageFormParameterFillBehaviorInitialPromptFulfillmentSetParameterAction>?
      setParameterActions;

  /// The tag used by the webhook to identify which fulfillment is being called. This field is required if webhook is specified.
  final String? tag;

  /// The webhook to call. Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/webhooks/<Webhook ID>.
  final String? webhook;

  /// Creates a new [CxPageFormParameterFillBehaviorInitialPromptFulfillment].
  /// [conditionalCases] Conditional cases for this fulfillment.
  /// [messages] The list of rich message responses to present to the user.
  /// [returnPartialResponses] Whether Dialogflow should return currently queued fulfillment response messages in streaming APIs. If a webhook is specified, it happens before Dialogflow invokes webhook. Warning: 1) This flag only affects streaming API. Responses are still queued and returned once in non-streaming API. 2) The flag can be enabled in any fulfillment but only the first 3 partial responses will be returned. You may only want to apply it to fulfillments that have slow webhooks.
  /// [setParameterActions] Set parameter values before executing the webhook.
  /// [tag] The tag used by the webhook to identify which fulfillment is being called. This field is required if webhook is specified.
  /// [webhook] The webhook to call. Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/webhooks/<Webhook ID>.
  CxPageFormParameterFillBehaviorInitialPromptFulfillment({
    this.conditionalCases,
    this.messages,
    this.returnPartialResponses,
    this.setParameterActions,
    this.tag,
    this.webhook,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final conditionalCasesValue = conditionalCases;
    if (conditionalCasesValue != null) {
      map['conditionalCases'] = pulumi.Input.encodeList<
          CxPageFormParameterFillBehaviorInitialPromptFulfillmentConditionalCase,
          Map<String,
              dynamic>>(conditionalCasesValue, (value) => value.toMap());
    }
    final messagesValue = messages;
    if (messagesValue != null) {
      map['messages'] = pulumi.Input.encodeList<
          CxPageFormParameterFillBehaviorInitialPromptFulfillmentMessage,
          Map<String, dynamic>>(messagesValue, (value) => value.toMap());
    }
    final returnPartialResponsesValue = returnPartialResponses;
    if (returnPartialResponsesValue != null) {
      map['returnPartialResponses'] = returnPartialResponsesValue;
    }
    final setParameterActionsValue = setParameterActions;
    if (setParameterActionsValue != null) {
      map['setParameterActions'] = pulumi.Input.encodeList<
          CxPageFormParameterFillBehaviorInitialPromptFulfillmentSetParameterAction,
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

  factory CxPageFormParameterFillBehaviorInitialPromptFulfillment.fromMap(
      Map<String, dynamic> map) {
    return CxPageFormParameterFillBehaviorInitialPromptFulfillment(
      conditionalCases: map['conditionalCases'] == null
          ? null
          : pulumi.Input.decodeList<
                  CxPageFormParameterFillBehaviorInitialPromptFulfillmentConditionalCase>(
              map['conditionalCases'],
              (value) =>
                  CxPageFormParameterFillBehaviorInitialPromptFulfillmentConditionalCase
                      .fromMap((value as Map).cast<String, dynamic>())),
      messages: map['messages'] == null
          ? null
          : pulumi.Input.decodeList<
                  CxPageFormParameterFillBehaviorInitialPromptFulfillmentMessage>(
              map['messages'],
              (value) =>
                  CxPageFormParameterFillBehaviorInitialPromptFulfillmentMessage
                      .fromMap((value as Map).cast<String, dynamic>())),
      returnPartialResponses: map['returnPartialResponses'] == null
          ? null
          : map['returnPartialResponses'] as bool,
      setParameterActions: map['setParameterActions'] == null
          ? null
          : pulumi.Input.decodeList<
                  CxPageFormParameterFillBehaviorInitialPromptFulfillmentSetParameterAction>(
              map['setParameterActions'],
              (value) =>
                  CxPageFormParameterFillBehaviorInitialPromptFulfillmentSetParameterAction
                      .fromMap((value as Map).cast<String, dynamic>())),
      tag: map['tag'] == null ? null : map['tag'] as String,
      webhook: map['webhook'] == null ? null : map['webhook'] as String,
    );
  }
}
