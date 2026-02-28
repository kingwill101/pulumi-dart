// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_cx_v3beta1_fulfillment_response.dart';

/// An event handler specifies an event that can be handled during a session. When the specified event happens, the following actions are taken in order: * If there is a `trigger_fulfillment` associated with the event, it will be called. * If there is a `target_page` associated with the event, the session will transition into the specified page. * If there is a `target_flow` associated with the event, the session will transition into the specified flow.
class GoogleCloudDialogflowCxV3beta1EventHandlerResponse {
  /// The name of the event to handle.
  final String event;

  /// The unique identifier of this event handler.
  final String name;

  /// The target flow to transition to. Format: `projects//locations//agents//flows/`.
  final String targetFlow;

  /// The target page to transition to. Format: `projects//locations//agents//flows//pages/`.
  final String targetPage;

  /// The fulfillment to call when the event occurs. Handling webhook errors with a fulfillment enabled with webhook could cause infinite loop. It is invalid to specify such fulfillment for a handler handling webhooks.
  final GoogleCloudDialogflowCxV3beta1FulfillmentResponse triggerFulfillment;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1EventHandlerResponse].
  /// [event] The name of the event to handle.
  /// [name] The unique identifier of this event handler.
  /// [targetFlow] The target flow to transition to. Format: `projects//locations//agents//flows/`.
  /// [targetPage] The target page to transition to. Format: `projects//locations//agents//flows//pages/`.
  /// [triggerFulfillment] The fulfillment to call when the event occurs. Handling webhook errors with a fulfillment enabled with webhook could cause infinite loop. It is invalid to specify such fulfillment for a handler handling webhooks.
  GoogleCloudDialogflowCxV3beta1EventHandlerResponse({
    required this.event,
    required this.name,
    required this.targetFlow,
    required this.targetPage,
    required this.triggerFulfillment,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['event'] = event;
    map['name'] = name;
    map['targetFlow'] = targetFlow;
    map['targetPage'] = targetPage;
    map['triggerFulfillment'] = triggerFulfillment.toMap();
    return map;
  }

  factory GoogleCloudDialogflowCxV3beta1EventHandlerResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1EventHandlerResponse(
      event: map['event'] as String,
      name: map['name'] as String,
      targetFlow: map['targetFlow'] as String,
      targetPage: map['targetPage'] as String,
      triggerFulfillment:
          GoogleCloudDialogflowCxV3beta1FulfillmentResponse.fromMap(
              (map['triggerFulfillment'] as Map).cast<String, dynamic>()),
    );
  }
}
