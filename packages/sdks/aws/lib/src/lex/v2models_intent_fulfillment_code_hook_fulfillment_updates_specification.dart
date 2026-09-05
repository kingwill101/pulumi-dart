// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_intent_fulfillment_code_hook_fulfillment_updates_specification_start_response.dart';
import 'v2models_intent_fulfillment_code_hook_fulfillment_updates_specification_update_response.dart';

class V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecification {
  /// Whether fulfillment updates are sent to the user. When this field is true, updates are sent. If the active field is set to true, the `startResponse`, `updateResponse`, and `timeoutInSeconds` fields are required.
  final pulumi.Input<bool> active;
  /// Configuration block for the message sent to users when the fulfillment Lambda functions starts running.
  final pulumi.Input<V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationStartResponse?>? startResponse;
  /// Length of time that the fulfillment Lambda function should run before it times out.
  final pulumi.Input<int?>? timeoutInSeconds;
  /// Configuration block for messages sent periodically to the user while the fulfillment Lambda function is running.
  final pulumi.Input<V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponse?>? updateResponse;

  /// Creates a new [V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecification].
  /// [active] Whether fulfillment updates are sent to the user. When this field is true, updates are sent. If the active field is set to true, the `startResponse`, `updateResponse`, and `timeoutInSeconds` fields are required.
  /// [startResponse] Configuration block for the message sent to users when the fulfillment Lambda functions starts running.
  /// [timeoutInSeconds] Length of time that the fulfillment Lambda function should run before it times out.
  /// [updateResponse] Configuration block for messages sent periodically to the user while the fulfillment Lambda function is running.
  const V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecification({
    required this.active,
    this.startResponse,
    this.timeoutInSeconds,
    this.updateResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'active': active,
      'startResponse': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationStartResponse, Map<String, dynamic>>(startResponse, (value) => value.toMap()),
      'timeoutInSeconds': ?timeoutInSeconds,
      'updateResponse': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponse, Map<String, dynamic>>(updateResponse, (value) => value.toMap()),
    };
  }

  factory V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecification.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecification(
      active: pulumi.Input.fromValue(map['active'] as bool),
      startResponse: (() { final guardedValue = map['startResponse']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationStartResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      timeoutInSeconds: (() { final guardedValue = map['timeoutInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      updateResponse: (() { final guardedValue = map['updateResponse']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
