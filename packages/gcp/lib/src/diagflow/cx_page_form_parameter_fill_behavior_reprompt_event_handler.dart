// ignore_for_file: unused_element, unnecessary_cast

import 'cx_page_form_parameter_fill_behavior_reprompt_event_handler_trigger_fulfillment.dart';

class CxPageFormParameterFillBehaviorRepromptEventHandler {
  /// The name of the event to handle.
  final String? event;

  /// (Output)
  /// The unique identifier of this event handler.
  final String? name;

  /// The target flow to transition to.
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/flows/<Flow ID>.
  final String? targetFlow;

  /// The target page to transition to.
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/flows/<Flow ID>/pages/<Page ID>.
  final String? targetPage;

  /// The fulfillment to call when the event occurs. Handling webhook errors with a fulfillment enabled with webhook could cause infinite loop. It is invalid to specify such fulfillment for a handler handling webhooks.
  /// Structure is documented below.
  final CxPageFormParameterFillBehaviorRepromptEventHandlerTriggerFulfillment?
  triggerFulfillment;

  /// Creates a new [CxPageFormParameterFillBehaviorRepromptEventHandler].
  /// [event] The name of the event to handle.
  /// [name] (Output)
  /// [targetFlow] The target flow to transition to.
  /// [targetPage] The target page to transition to.
  /// [triggerFulfillment] The fulfillment to call when the event occurs. Handling webhook errors with a fulfillment enabled with webhook could cause infinite loop. It is invalid to specify such fulfillment for a handler handling webhooks.
  CxPageFormParameterFillBehaviorRepromptEventHandler({
    this.event,
    this.name,
    this.targetFlow,
    this.targetPage,
    this.triggerFulfillment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'event': ?event,
      'name': ?name,
      'targetFlow': ?targetFlow,
      'targetPage': ?targetPage,
      'triggerFulfillment': ?triggerFulfillment == null
          ? null
          : triggerFulfillment!.toMap(),
    };
  }

  factory CxPageFormParameterFillBehaviorRepromptEventHandler.fromMap(
    Map<String, dynamic> map,
  ) {
    return CxPageFormParameterFillBehaviorRepromptEventHandler(
      event: map['event'] == null ? null : map['event'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      targetFlow: map['targetFlow'] == null
          ? null
          : map['targetFlow'] as String,
      targetPage: map['targetPage'] == null
          ? null
          : map['targetPage'] as String,
      triggerFulfillment: map['triggerFulfillment'] == null
          ? null
          : CxPageFormParameterFillBehaviorRepromptEventHandlerTriggerFulfillment.fromMap(
              (map['triggerFulfillment'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
