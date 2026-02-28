// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_intent_initial_response_setting_code_hook_post_code_hook_specification_failure_conditional_conditional_branch_response_message_group_message.dart';
import 'v2models_intent_initial_response_setting_code_hook_post_code_hook_specification_failure_conditional_conditional_branch_response_message_group_variation.dart';

class V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponseMessageGroup {
  /// Configuration block for the primary message that Amazon Lex should send to the user. See `message`.
  final V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponseMessageGroupMessage?
      message;

  /// Configuration blocks for message variations to send to the user. When variations are defined, Amazon Lex chooses the primary message or one of the variations to send to the user. See `variation`.
  final List<
          V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponseMessageGroupVariation>?
      variations;

  /// Creates a new [V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponseMessageGroup].
  /// [message] Configuration block for the primary message that Amazon Lex should send to the user. See `message`.
  /// [variations] Configuration blocks for message variations to send to the user. When variations are defined, Amazon Lex chooses the primary message or one of the variations to send to the user. See `variation`.
  V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponseMessageGroup({
    this.message,
    this.variations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final messageValue = message;
    if (messageValue != null) {
      map['message'] = messageValue.toMap();
    }
    final variationsValue = variations;
    if (variationsValue != null) {
      map['variations'] = pulumi.Input.encodeList<
          V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponseMessageGroupVariation,
          Map<String, dynamic>>(variationsValue, (value) => value.toMap());
    }
    return map;
  }

  factory V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponseMessageGroup.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponseMessageGroup(
      message: map['message'] == null
          ? null
          : V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponseMessageGroupMessage
              .fromMap((map['message'] as Map).cast<String, dynamic>()),
      variations: map['variations'] == null
          ? null
          : pulumi.Input.decodeList<
                  V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponseMessageGroupVariation>(
              map['variations'],
              (value) =>
                  V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponseMessageGroupVariation
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
