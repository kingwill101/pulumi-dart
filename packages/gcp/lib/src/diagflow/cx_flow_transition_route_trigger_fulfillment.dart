// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_flow_transition_route_trigger_fulfillment_conditional_case.dart';
import 'cx_flow_transition_route_trigger_fulfillment_message.dart';
import 'cx_flow_transition_route_trigger_fulfillment_set_parameter_action.dart';

class CxFlowTransitionRouteTriggerFulfillment {
  /// Conditional cases for this fulfillment.
  /// Structure is documented below.
  final List<CxFlowTransitionRouteTriggerFulfillmentConditionalCase>? conditionalCases;
  /// The list of rich message responses to present to the user.
  /// Structure is documented below.
  final List<CxFlowTransitionRouteTriggerFulfillmentMessage>? messages;
  /// Whether Dialogflow should return currently queued fulfillment response messages in streaming APIs. If a webhook is specified, it happens before Dialogflow invokes webhook. Warning: 1) This flag only affects streaming API. Responses are still queued and returned once in non-streaming API. 2) The flag can be enabled in any fulfillment but only the first 3 partial responses will be returned. You may only want to apply it to fulfillments that have slow webhooks.
  final bool? returnPartialResponses;
  /// Set parameter values before executing the webhook.
  /// Structure is documented below.
  final List<CxFlowTransitionRouteTriggerFulfillmentSetParameterAction>? setParameterActions;
  /// The tag used by the webhook to identify which fulfillment is being called. This field is required if webhook is specified.
  final String? tag;
  /// The webhook to call. Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/webhooks/<Webhook ID>.
  final String? webhook;

  /// Creates a new [CxFlowTransitionRouteTriggerFulfillment].
  /// [conditionalCases] Conditional cases for this fulfillment.
  /// [messages] The list of rich message responses to present to the user.
  /// [returnPartialResponses] Whether Dialogflow should return currently queued fulfillment response messages in streaming APIs. If a webhook is specified, it happens before Dialogflow invokes webhook. Warning: 1) This flag only affects streaming API. Responses are still queued and returned once in non-streaming API. 2) The flag can be enabled in any fulfillment but only the first 3 partial responses will be returned. You may only want to apply it to fulfillments that have slow webhooks.
  /// [setParameterActions] Set parameter values before executing the webhook.
  /// [tag] The tag used by the webhook to identify which fulfillment is being called. This field is required if webhook is specified.
  /// [webhook] The webhook to call. Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/webhooks/<Webhook ID>.
  CxFlowTransitionRouteTriggerFulfillment({
    this.conditionalCases,
    this.messages,
    this.returnPartialResponses,
    this.setParameterActions,
    this.tag,
    this.webhook,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditionalCases': ?conditionalCases == null ? null : pulumi.Input.encodeList<CxFlowTransitionRouteTriggerFulfillmentConditionalCase, Map<String, dynamic>>(conditionalCases!, (value) => value.toMap()),
      'messages': ?messages == null ? null : pulumi.Input.encodeList<CxFlowTransitionRouteTriggerFulfillmentMessage, Map<String, dynamic>>(messages!, (value) => value.toMap()),
      'returnPartialResponses': ?returnPartialResponses,
      'setParameterActions': ?setParameterActions == null ? null : pulumi.Input.encodeList<CxFlowTransitionRouteTriggerFulfillmentSetParameterAction, Map<String, dynamic>>(setParameterActions!, (value) => value.toMap()),
      'tag': ?tag,
      'webhook': ?webhook,
    };
  }

  factory CxFlowTransitionRouteTriggerFulfillment.fromMap(Map<String, dynamic> map) {
    return CxFlowTransitionRouteTriggerFulfillment(
      conditionalCases: map['conditionalCases'] == null ? null : pulumi.Input.decodeList<CxFlowTransitionRouteTriggerFulfillmentConditionalCase>(map['conditionalCases'], (value) => CxFlowTransitionRouteTriggerFulfillmentConditionalCase.fromMap((value as Map).cast<String, dynamic>())),
      messages: map['messages'] == null ? null : pulumi.Input.decodeList<CxFlowTransitionRouteTriggerFulfillmentMessage>(map['messages'], (value) => CxFlowTransitionRouteTriggerFulfillmentMessage.fromMap((value as Map).cast<String, dynamic>())),
      returnPartialResponses: map['returnPartialResponses'] == null ? null : map['returnPartialResponses'] as bool,
      setParameterActions: map['setParameterActions'] == null ? null : pulumi.Input.decodeList<CxFlowTransitionRouteTriggerFulfillmentSetParameterAction>(map['setParameterActions'], (value) => CxFlowTransitionRouteTriggerFulfillmentSetParameterAction.fromMap((value as Map).cast<String, dynamic>())),
      tag: map['tag'] == null ? null : map['tag'] as String,
      webhook: map['webhook'] == null ? null : map['webhook'] as String,
    );
  }
}

