// ignore_for_file: unused_element, unnecessary_cast

import 'v2models_intent_fulfillment_code_hook_fulfillment_updates_specification_start_response.dart';
import 'v2models_intent_fulfillment_code_hook_fulfillment_updates_specification_update_response.dart';

class V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecification {
  /// Whether fulfillment updates are sent to the user. When this field is true, updates are sent. If the active field is set to true, the `start_response`, `update_response`, and `timeout_in_seconds` fields are required.
  final bool active;

  /// Configuration block for the message sent to users when the fulfillment Lambda functions starts running.
  final V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationStartResponse?
      startResponse;

  /// Length of time that the fulfillment Lambda function should run before it times out.
  final int? timeoutInSeconds;

  /// Configuration block for messages sent periodically to the user while the fulfillment Lambda function is running.
  final V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponse?
      updateResponse;

  /// Creates a new [V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecification].
  /// [active] Whether fulfillment updates are sent to the user. When this field is true, updates are sent. If the active field is set to true, the `start_response`, `update_response`, and `timeout_in_seconds` fields are required.
  /// [startResponse] Configuration block for the message sent to users when the fulfillment Lambda functions starts running.
  /// [timeoutInSeconds] Length of time that the fulfillment Lambda function should run before it times out.
  /// [updateResponse] Configuration block for messages sent periodically to the user while the fulfillment Lambda function is running.
  V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecification({
    required this.active,
    this.startResponse,
    this.timeoutInSeconds,
    this.updateResponse,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['active'] = active;
    final startResponseValue = startResponse;
    if (startResponseValue != null) {
      map['startResponse'] = startResponseValue.toMap();
    }
    final timeoutInSecondsValue = timeoutInSeconds;
    if (timeoutInSecondsValue != null) {
      map['timeoutInSeconds'] = timeoutInSecondsValue;
    }
    final updateResponseValue = updateResponse;
    if (updateResponseValue != null) {
      map['updateResponse'] = updateResponseValue.toMap();
    }
    return map;
  }

  factory V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecification.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecification(
      active: map['active'] as bool,
      startResponse: map['startResponse'] == null
          ? null
          : V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationStartResponse
              .fromMap((map['startResponse'] as Map).cast<String, dynamic>()),
      timeoutInSeconds: map['timeoutInSeconds'] == null
          ? null
          : map['timeoutInSeconds'] as int,
      updateResponse: map['updateResponse'] == null
          ? null
          : V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponse
              .fromMap((map['updateResponse'] as Map).cast<String, dynamic>()),
    );
  }
}
