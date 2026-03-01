// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_intent_fulfillment_code_hook_fulfillment_updates_specification_start_response_message_group_message.dart';
import 'v2models_intent_fulfillment_code_hook_fulfillment_updates_specification_start_response_message_group_variation.dart';

class V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationStartResponseMessageGroup {
  /// Configuration block for the primary message that Amazon Lex should send to the user. See `message`.
  final V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationStartResponseMessageGroupMessage? message;
  /// Configuration blocks for message variations to send to the user. When variations are defined, Amazon Lex chooses the primary message or one of the variations to send to the user. See `variation`.
  final List<V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationStartResponseMessageGroupVariation>? variations;

  /// Creates a new [V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationStartResponseMessageGroup].
  /// [message] Configuration block for the primary message that Amazon Lex should send to the user. See `message`.
  /// [variations] Configuration blocks for message variations to send to the user. When variations are defined, Amazon Lex chooses the primary message or one of the variations to send to the user. See `variation`.
  V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationStartResponseMessageGroup({
    this.message,
    this.variations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'message': ?message == null ? null : message!.toMap(),
      'variations': ?variations == null ? null : pulumi.Input.encodeList<V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationStartResponseMessageGroupVariation, Map<String, dynamic>>(variations!, (value) => value.toMap()),
    };
  }

  factory V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationStartResponseMessageGroup.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationStartResponseMessageGroup(
      message: map['message'] == null ? null : V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationStartResponseMessageGroupMessage.fromMap((map['message'] as Map).cast<String, dynamic>()),
      variations: map['variations'] == null ? null : pulumi.Input.decodeList<V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationStartResponseMessageGroupVariation>(map['variations'], (value) => V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationStartResponseMessageGroupVariation.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

