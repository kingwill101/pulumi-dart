// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_intent_fulfillment_code_hook_post_fulfillment_status_specification_success_response_message_group.dart';

class V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessResponse {
  /// Whether the user can interrupt a speech response from Amazon Lex.
  final bool? allowInterrupt;

  /// Configuration blocks for responses that Amazon Lex can send to the user. Amazon Lex chooses the actual response to send at runtime. See `message_group`.
  final List<
          V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessResponseMessageGroup>?
      messageGroups;

  /// Creates a new [V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessResponse].
  /// [allowInterrupt] Whether the user can interrupt a speech response from Amazon Lex.
  /// [messageGroups] Configuration blocks for responses that Amazon Lex can send to the user. Amazon Lex chooses the actual response to send at runtime. See `message_group`.
  V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessResponse({
    this.allowInterrupt,
    this.messageGroups,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowInterruptValue = allowInterrupt;
    if (allowInterruptValue != null) {
      map['allowInterrupt'] = allowInterruptValue;
    }
    final messageGroupsValue = messageGroups;
    if (messageGroupsValue != null) {
      map['messageGroups'] = pulumi.Input.encodeList<
          V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessResponseMessageGroup,
          Map<String, dynamic>>(messageGroupsValue, (value) => value.toMap());
    }
    return map;
  }

  factory V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessResponse.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessResponse(
      allowInterrupt:
          map['allowInterrupt'] == null ? null : map['allowInterrupt'] as bool,
      messageGroups: map['messageGroups'] == null
          ? null
          : pulumi.Input.decodeList<
                  V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessResponseMessageGroup>(
              map['messageGroups'],
              (value) =>
                  V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessResponseMessageGroup
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
