// ignore_for_file: unused_element, unnecessary_cast

import 'cx_page_event_handler_trigger_fulfillment.dart';

class CxPageEventHandler {
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
  final CxPageEventHandlerTriggerFulfillment? triggerFulfillment;

  /// Creates a new [CxPageEventHandler].
  /// [event] The name of the event to handle.
  /// [name] (Output)
  /// [targetFlow] The target flow to transition to.
  /// [targetPage] The target page to transition to.
  /// [triggerFulfillment] The fulfillment to call when the event occurs. Handling webhook errors with a fulfillment enabled with webhook could cause infinite loop. It is invalid to specify such fulfillment for a handler handling webhooks.
  CxPageEventHandler({
    this.event,
    this.name,
    this.targetFlow,
    this.targetPage,
    this.triggerFulfillment,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final eventValue = event;
    if (eventValue != null) {
      map['event'] = eventValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final targetFlowValue = targetFlow;
    if (targetFlowValue != null) {
      map['targetFlow'] = targetFlowValue;
    }
    final targetPageValue = targetPage;
    if (targetPageValue != null) {
      map['targetPage'] = targetPageValue;
    }
    final triggerFulfillmentValue = triggerFulfillment;
    if (triggerFulfillmentValue != null) {
      map['triggerFulfillment'] = triggerFulfillmentValue.toMap();
    }
    return map;
  }

  factory CxPageEventHandler.fromMap(Map<String, dynamic> map) {
    return CxPageEventHandler(
      event: map['event'] == null ? null : map['event'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      targetFlow:
          map['targetFlow'] == null ? null : map['targetFlow'] as String,
      targetPage:
          map['targetPage'] == null ? null : map['targetPage'] as String,
      triggerFulfillment: map['triggerFulfillment'] == null
          ? null
          : CxPageEventHandlerTriggerFulfillment.fromMap(
              (map['triggerFulfillment'] as Map).cast<String, dynamic>()),
    );
  }
}
