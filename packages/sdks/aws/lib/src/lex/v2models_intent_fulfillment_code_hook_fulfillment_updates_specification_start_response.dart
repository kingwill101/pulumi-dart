// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_intent_fulfillment_code_hook_fulfillment_updates_specification_start_response_message_group.dart';

class V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationStartResponse {
  /// Whether the user can interrupt the start message while it is playing.
  final pulumi.Input<bool>? allowInterrupt;
  /// Delay between when the Lambda fulfillment function starts running and the start message is played. If the Lambda function returns before the delay is over, the start message isn't played.
  final pulumi.Input<int>? delayInSeconds;
  /// Between 1-5 configuration block message groups that contain start messages. Amazon Lex chooses one of the messages to play to the user. See `message_group`.
  final pulumi.Input<List<V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationStartResponseMessageGroup>>? messageGroups;

  /// Creates a new [V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationStartResponse].
  /// [allowInterrupt] Whether the user can interrupt the start message while it is playing.
  /// [delayInSeconds] Delay between when the Lambda fulfillment function starts running and the start message is played. If the Lambda function returns before the delay is over, the start message isn't played.
  /// [messageGroups] Between 1-5 configuration block message groups that contain start messages. Amazon Lex chooses one of the messages to play to the user. See `message_group`.
  V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationStartResponse({
    this.allowInterrupt,
    this.delayInSeconds,
    this.messageGroups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowInterrupt': ?allowInterrupt,
      'delayInSeconds': ?delayInSeconds,
      'messageGroups': ?pulumi.Input.mapOptionalInputValue<List<V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationStartResponseMessageGroup>, List<Map<String, dynamic>>>(messageGroups, (value) => pulumi.Input.encodeList<V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationStartResponseMessageGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationStartResponse.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationStartResponse(
      allowInterrupt: map['allowInterrupt'] == null ? null : ((map['allowInterrupt'] as bool).input()).input(),
      delayInSeconds: map['delayInSeconds'] == null ? null : ((map['delayInSeconds'] as int).input()).input(),
      messageGroups: map['messageGroups'] == null ? null : ((pulumi.Input.decodeList<V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationStartResponseMessageGroup>(map['messageGroups']!, (value) => V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationStartResponseMessageGroup.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
    );
  }
}

