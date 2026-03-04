// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_intent_initial_response_setting_conditional_conditional_branch_response_message_group_message.dart';
import 'v2models_intent_initial_response_setting_conditional_conditional_branch_response_message_group_variation.dart';

class V2modelsIntentInitialResponseSettingConditionalConditionalBranchResponseMessageGroup {
  /// Configuration block for the primary message that Amazon Lex should send to the user. See `message`.
  final pulumi.Input<
    V2modelsIntentInitialResponseSettingConditionalConditionalBranchResponseMessageGroupMessage
  >?
  message;

  /// Configuration blocks for message variations to send to the user. When variations are defined, Amazon Lex chooses the primary message or one of the variations to send to the user. See `variation`.
  final pulumi.Input<
    List<
      V2modelsIntentInitialResponseSettingConditionalConditionalBranchResponseMessageGroupVariation
    >
  >?
  variations;

  /// Creates a new [V2modelsIntentInitialResponseSettingConditionalConditionalBranchResponseMessageGroup].
  /// [message] Configuration block for the primary message that Amazon Lex should send to the user. See `message`.
  /// [variations] Configuration blocks for message variations to send to the user. When variations are defined, Amazon Lex chooses the primary message or one of the variations to send to the user. See `variation`.
  V2modelsIntentInitialResponseSettingConditionalConditionalBranchResponseMessageGroup({
    this.message,
    this.variations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'message':
          ?pulumi.Input.mapOptionalInputValue<
            V2modelsIntentInitialResponseSettingConditionalConditionalBranchResponseMessageGroupMessage,
            Map<String, dynamic>
          >(message, (value) => value.toMap()),
      'variations':
          ?pulumi.Input.mapOptionalInputValue<
            List<
              V2modelsIntentInitialResponseSettingConditionalConditionalBranchResponseMessageGroupVariation
            >,
            List<Map<String, dynamic>>
          >(
            variations,
            (value) =>
                pulumi.Input.encodeList<
                  V2modelsIntentInitialResponseSettingConditionalConditionalBranchResponseMessageGroupVariation,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory V2modelsIntentInitialResponseSettingConditionalConditionalBranchResponseMessageGroup.fromMap(
    Map<String, dynamic> map,
  ) {
    return V2modelsIntentInitialResponseSettingConditionalConditionalBranchResponseMessageGroup(
      message: (() {
        final guardedValue = map['message'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          V2modelsIntentInitialResponseSettingConditionalConditionalBranchResponseMessageGroupMessage.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      variations: (() {
        final guardedValue = map['variations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            V2modelsIntentInitialResponseSettingConditionalConditionalBranchResponseMessageGroupVariation
          >(
            guardedValue,
            (value) =>
                V2modelsIntentInitialResponseSettingConditionalConditionalBranchResponseMessageGroupVariation.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
    );
  }
}
