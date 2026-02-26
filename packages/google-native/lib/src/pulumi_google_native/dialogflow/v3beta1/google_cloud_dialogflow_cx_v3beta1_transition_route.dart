// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_cx_v3beta1_fulfillment.dart';

/// A transition route specifies a intent that can be matched and/or a data condition that can be evaluated during a session. When a specified transition is matched, the following actions are taken in order: * If there is a `trigger_fulfillment` associated with the transition, it will be called. * If there is a `target_page` associated with the transition, the session will transition into the specified page. * If there is a `target_flow` associated with the transition, the session will transition into the specified flow.
class GoogleCloudDialogflowCxV3beta1TransitionRoute {
  /// The condition to evaluate against form parameters or session parameters. See the [conditions reference](https://cloud.google.com/dialogflow/cx/docs/reference/condition). At least one of `intent` or `condition` must be specified. When both `intent` and `condition` are specified, the transition can only happen when both are fulfilled.
  final String? condition;

  /// Optional. The description of the transition route. The maximum length is 500 characters.
  final String? description;

  /// The unique identifier of an Intent. Format: `projects//locations//agents//intents/`. Indicates that the transition can only happen when the given intent is matched. At least one of `intent` or `condition` must be specified. When both `intent` and `condition` are specified, the transition can only happen when both are fulfilled.
  final String? intent;

  /// The target flow to transition to. Format: `projects//locations//agents//flows/`.
  final String? targetFlow;

  /// The target page to transition to. Format: `projects//locations//agents//flows//pages/`.
  final String? targetPage;

  /// The fulfillment to call when the condition is satisfied. At least one of `trigger_fulfillment` and `target` must be specified. When both are defined, `trigger_fulfillment` is executed first.
  final GoogleCloudDialogflowCxV3beta1Fulfillment? triggerFulfillment;

  GoogleCloudDialogflowCxV3beta1TransitionRoute({
    this.condition,
    this.description,
    this.intent,
    this.targetFlow,
    this.targetPage,
    this.triggerFulfillment,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final conditionValue = condition;
    if (conditionValue != null) {
      map['condition'] = conditionValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final intentValue = intent;
    if (intentValue != null) {
      map['intent'] = intentValue;
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

  factory GoogleCloudDialogflowCxV3beta1TransitionRoute.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1TransitionRoute(
      condition: map['condition'] == null ? null : map['condition'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      intent: map['intent'] == null ? null : map['intent'] as String,
      targetFlow:
          map['targetFlow'] == null ? null : map['targetFlow'] as String,
      targetPage:
          map['targetPage'] == null ? null : map['targetPage'] as String,
      triggerFulfillment: map['triggerFulfillment'] == null
          ? null
          : GoogleCloudDialogflowCxV3beta1Fulfillment.fromMap(
              (map['triggerFulfillment'] as Map).cast<String, dynamic>()),
    );
  }
}
