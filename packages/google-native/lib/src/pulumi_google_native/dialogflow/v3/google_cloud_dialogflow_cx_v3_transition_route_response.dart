// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_cx_v3_fulfillment_response.dart';

/// A transition route specifies a intent that can be matched and/or a data condition that can be evaluated during a session. When a specified transition is matched, the following actions are taken in order: * If there is a `trigger_fulfillment` associated with the transition, it will be called. * If there is a `target_page` associated with the transition, the session will transition into the specified page. * If there is a `target_flow` associated with the transition, the session will transition into the specified flow.
class GoogleCloudDialogflowCxV3TransitionRouteResponse {
  /// The condition to evaluate against form parameters or session parameters. See the [conditions reference](https://cloud.google.com/dialogflow/cx/docs/reference/condition). At least one of `intent` or `condition` must be specified. When both `intent` and `condition` are specified, the transition can only happen when both are fulfilled.
  final String condition;

  /// Optional. The description of the transition route. The maximum length is 500 characters.
  final String description;

  /// The unique identifier of an Intent. Format: `projects//locations//agents//intents/`. Indicates that the transition can only happen when the given intent is matched. At least one of `intent` or `condition` must be specified. When both `intent` and `condition` are specified, the transition can only happen when both are fulfilled.
  final String intent;

  /// The unique identifier of this transition route.
  final String name;

  /// The target flow to transition to. Format: `projects//locations//agents//flows/`.
  final String targetFlow;

  /// The target page to transition to. Format: `projects//locations//agents//flows//pages/`.
  final String targetPage;

  /// The fulfillment to call when the condition is satisfied. At least one of `trigger_fulfillment` and `target` must be specified. When both are defined, `trigger_fulfillment` is executed first.
  final GoogleCloudDialogflowCxV3FulfillmentResponse triggerFulfillment;

  GoogleCloudDialogflowCxV3TransitionRouteResponse({
    required this.condition,
    required this.description,
    required this.intent,
    required this.name,
    required this.targetFlow,
    required this.targetPage,
    required this.triggerFulfillment,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['condition'] = condition;
    map['description'] = description;
    map['intent'] = intent;
    map['name'] = name;
    map['targetFlow'] = targetFlow;
    map['targetPage'] = targetPage;
    map['triggerFulfillment'] = triggerFulfillment.toMap();
    return map;
  }

  factory GoogleCloudDialogflowCxV3TransitionRouteResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3TransitionRouteResponse(
      condition: map['condition'] as String,
      description: map['description'] as String,
      intent: map['intent'] as String,
      name: map['name'] as String,
      targetFlow: map['targetFlow'] as String,
      targetPage: map['targetPage'] as String,
      triggerFulfillment: GoogleCloudDialogflowCxV3FulfillmentResponse.fromMap(
          (map['triggerFulfillment'] as Map).cast<String, dynamic>()),
    );
  }
}
