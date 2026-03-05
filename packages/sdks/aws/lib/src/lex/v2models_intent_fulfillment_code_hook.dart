// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_intent_fulfillment_code_hook_fulfillment_updates_specification.dart';
import 'v2models_intent_fulfillment_code_hook_post_fulfillment_status_specification.dart';

class V2modelsIntentFulfillmentCodeHook {
  /// Whether the fulfillment code hook is used. When active is false, the code hook doesn't run.
  final pulumi.Input<bool>? active;
  /// Whether a Lambda function should be invoked to fulfill a specific intent.
  final pulumi.Input<bool> enabled;
  /// Configuration block for settings for update messages sent to the user for long-running Lambda fulfillment functions. Fulfillment updates can be used only with streaming conversations. See `fulfillment_updates_specification`.
  final pulumi.Input<V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecification>? fulfillmentUpdatesSpecification;
  /// Configuration block for settings for messages sent to the user for after the Lambda fulfillment function completes. Post-fulfillment messages can be sent for both streaming and non-streaming conversations. See `post_fulfillment_status_specification`.
  final pulumi.Input<V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecification>? postFulfillmentStatusSpecification;

  /// Creates a new [V2modelsIntentFulfillmentCodeHook].
  /// [active] Whether the fulfillment code hook is used. When active is false, the code hook doesn't run.
  /// [enabled] Whether a Lambda function should be invoked to fulfill a specific intent.
  /// [fulfillmentUpdatesSpecification] Configuration block for settings for update messages sent to the user for long-running Lambda fulfillment functions. Fulfillment updates can be used only with streaming conversations. See `fulfillment_updates_specification`.
  /// [postFulfillmentStatusSpecification] Configuration block for settings for messages sent to the user for after the Lambda fulfillment function completes. Post-fulfillment messages can be sent for both streaming and non-streaming conversations. See `post_fulfillment_status_specification`.
  V2modelsIntentFulfillmentCodeHook({
    this.active,
    required this.enabled,
    this.fulfillmentUpdatesSpecification,
    this.postFulfillmentStatusSpecification,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'active': ?active,
      'enabled': enabled,
      'fulfillmentUpdatesSpecification': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecification, Map<String, dynamic>>(fulfillmentUpdatesSpecification, (value) => value.toMap()),
      'postFulfillmentStatusSpecification': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecification, Map<String, dynamic>>(postFulfillmentStatusSpecification, (value) => value.toMap()),
    };
  }

  factory V2modelsIntentFulfillmentCodeHook.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentFulfillmentCodeHook(
      active: (() { final guardedValue = map['active']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      fulfillmentUpdatesSpecification: (() { final guardedValue = map['fulfillmentUpdatesSpecification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecification.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      postFulfillmentStatusSpecification: (() { final guardedValue = map['postFulfillmentStatusSpecification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecification.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

