// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_intent_fulfillment_code_hook_post_fulfillment_status_specification_failure_response_message_group_message.dart';
import 'v2models_intent_fulfillment_code_hook_post_fulfillment_status_specification_failure_response_message_group_variation.dart';

class V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureResponseMessageGroup {
  /// Configuration block for the primary message that Amazon Lex should send to the user. See `message`.
  final pulumi.Input<V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureResponseMessageGroupMessage?>? message;
  /// Configuration blocks for message variations to send to the user. When variations are defined, Amazon Lex chooses the primary message or one of the variations to send to the user. See `variation`.
  final pulumi.Input<List<V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureResponseMessageGroupVariation>?>? variations;

  /// Creates a new [V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureResponseMessageGroup].
  /// [message] Configuration block for the primary message that Amazon Lex should send to the user. See `message`.
  /// [variations] Configuration blocks for message variations to send to the user. When variations are defined, Amazon Lex chooses the primary message or one of the variations to send to the user. See `variation`.
  const V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureResponseMessageGroup({
    this.message,
    this.variations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'message': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureResponseMessageGroupMessage, Map<String, dynamic>>(message, (value) => value.toMap()),
      'variations': ?pulumi.Input.mapOptionalInputValue<List<V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureResponseMessageGroupVariation>, List<Map<String, dynamic>>>(variations, (value) => pulumi.Input.encodeList<V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureResponseMessageGroupVariation, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureResponseMessageGroup.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureResponseMessageGroup(
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureResponseMessageGroupMessage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      variations: (() { final guardedValue = map['variations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureResponseMessageGroupVariation>(guardedValue, (value) => V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureResponseMessageGroupVariation.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
