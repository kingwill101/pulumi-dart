// ignore_for_file: unused_element, unnecessary_cast

import 'cx_page_transition_route_trigger_fulfillment.dart';

class CxPageTransitionRoute {
  /// The condition to evaluate against form parameters or session parameters.
  /// At least one of intent or condition must be specified. When both intent and condition are specified, the transition can only happen when both are fulfilled.
  final String? condition;

  /// The unique identifier of an Intent.
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/intents/<Intent ID>. Indicates that the transition can only happen when the given intent is matched. At least one of intent or condition must be specified. When both intent and condition are specified, the transition can only happen when both are fulfilled.
  final String? intent;

  /// (Output)
  /// The unique identifier of this transition route.
  final String? name;

  /// The target flow to transition to.
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/flows/<Flow ID>.
  final String? targetFlow;

  /// The target page to transition to.
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/flows/<Flow ID>/pages/<Page ID>.
  final String? targetPage;

  /// The fulfillment to call when the condition is satisfied. At least one of triggerFulfillment and target must be specified. When both are defined, triggerFulfillment is executed first.
  /// Structure is documented below.
  final CxPageTransitionRouteTriggerFulfillment? triggerFulfillment;

  /// Creates a new [CxPageTransitionRoute].
  /// [condition] The condition to evaluate against form parameters or session parameters.
  /// [intent] The unique identifier of an Intent.
  /// [name] (Output)
  /// [targetFlow] The target flow to transition to.
  /// [targetPage] The target page to transition to.
  /// [triggerFulfillment] The fulfillment to call when the condition is satisfied. At least one of triggerFulfillment and target must be specified. When both are defined, triggerFulfillment is executed first.
  CxPageTransitionRoute({
    this.condition,
    this.intent,
    this.name,
    this.targetFlow,
    this.targetPage,
    this.triggerFulfillment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?condition,
      'intent': ?intent,
      'name': ?name,
      'targetFlow': ?targetFlow,
      'targetPage': ?targetPage,
      'triggerFulfillment': ?triggerFulfillment == null
          ? null
          : triggerFulfillment!.toMap(),
    };
  }

  factory CxPageTransitionRoute.fromMap(Map<String, dynamic> map) {
    return CxPageTransitionRoute(
      condition: map['condition'] == null ? null : map['condition'] as String,
      intent: map['intent'] == null ? null : map['intent'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      targetFlow: map['targetFlow'] == null
          ? null
          : map['targetFlow'] as String,
      targetPage: map['targetPage'] == null
          ? null
          : map['targetPage'] as String,
      triggerFulfillment: map['triggerFulfillment'] == null
          ? null
          : CxPageTransitionRouteTriggerFulfillment.fromMap(
              (map['triggerFulfillment'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
