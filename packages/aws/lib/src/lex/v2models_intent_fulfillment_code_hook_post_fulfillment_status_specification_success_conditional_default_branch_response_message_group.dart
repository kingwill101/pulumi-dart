// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_intent_fulfillment_code_hook_post_fulfillment_status_specification_success_conditional_default_branch_response_message_group_message.dart';
import 'v2models_intent_fulfillment_code_hook_post_fulfillment_status_specification_success_conditional_default_branch_response_message_group_variation.dart';

class V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalDefaultBranchResponseMessageGroup {
  /// Configuration block for the primary message that Amazon Lex should send to the user. See `message`.
  final V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalDefaultBranchResponseMessageGroupMessage?
  message;

  /// Configuration blocks for message variations to send to the user. When variations are defined, Amazon Lex chooses the primary message or one of the variations to send to the user. See `variation`.
  final List<
    V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalDefaultBranchResponseMessageGroupVariation
  >?
  variations;

  /// Creates a new [V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalDefaultBranchResponseMessageGroup].
  /// [message] Configuration block for the primary message that Amazon Lex should send to the user. See `message`.
  /// [variations] Configuration blocks for message variations to send to the user. When variations are defined, Amazon Lex chooses the primary message or one of the variations to send to the user. See `variation`.
  V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalDefaultBranchResponseMessageGroup({
    this.message,
    this.variations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'message': ?message == null ? null : message!.toMap(),
      'variations': ?variations == null
          ? null
          : pulumi.Input.encodeList<
              V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalDefaultBranchResponseMessageGroupVariation,
              Map<String, dynamic>
            >(variations!, (value) => value.toMap()),
    };
  }

  factory V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalDefaultBranchResponseMessageGroup.fromMap(
    Map<String, dynamic> map,
  ) {
    return V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalDefaultBranchResponseMessageGroup(
      message: map['message'] == null
          ? null
          : V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalDefaultBranchResponseMessageGroupMessage.fromMap(
              (map['message'] as Map).cast<String, dynamic>(),
            ),
      variations: map['variations'] == null
          ? null
          : pulumi.Input.decodeList<
              V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalDefaultBranchResponseMessageGroupVariation
            >(
              map['variations'],
              (value) =>
                  V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalDefaultBranchResponseMessageGroupVariation.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
    );
  }
}
