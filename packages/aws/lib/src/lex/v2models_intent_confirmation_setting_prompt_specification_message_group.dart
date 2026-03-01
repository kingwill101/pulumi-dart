// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_intent_confirmation_setting_prompt_specification_message_group_message.dart';
import 'v2models_intent_confirmation_setting_prompt_specification_message_group_variation.dart';

class V2modelsIntentConfirmationSettingPromptSpecificationMessageGroup {
  /// Configuration block for the primary message that Amazon Lex should send to the user. See `message`.
  final V2modelsIntentConfirmationSettingPromptSpecificationMessageGroupMessage? message;
  /// Configuration blocks for message variations to send to the user. When variations are defined, Amazon Lex chooses the primary message or one of the variations to send to the user. See `variation`.
  final List<V2modelsIntentConfirmationSettingPromptSpecificationMessageGroupVariation>? variations;

  /// Creates a new [V2modelsIntentConfirmationSettingPromptSpecificationMessageGroup].
  /// [message] Configuration block for the primary message that Amazon Lex should send to the user. See `message`.
  /// [variations] Configuration blocks for message variations to send to the user. When variations are defined, Amazon Lex chooses the primary message or one of the variations to send to the user. See `variation`.
  V2modelsIntentConfirmationSettingPromptSpecificationMessageGroup({
    this.message,
    this.variations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'message': ?message == null ? null : message!.toMap(),
      'variations': ?variations == null ? null : pulumi.Input.encodeList<V2modelsIntentConfirmationSettingPromptSpecificationMessageGroupVariation, Map<String, dynamic>>(variations!, (value) => value.toMap()),
    };
  }

  factory V2modelsIntentConfirmationSettingPromptSpecificationMessageGroup.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentConfirmationSettingPromptSpecificationMessageGroup(
      message: map['message'] == null ? null : V2modelsIntentConfirmationSettingPromptSpecificationMessageGroupMessage.fromMap((map['message'] as Map).cast<String, dynamic>()),
      variations: map['variations'] == null ? null : pulumi.Input.decodeList<V2modelsIntentConfirmationSettingPromptSpecificationMessageGroupVariation>(map['variations'], (value) => V2modelsIntentConfirmationSettingPromptSpecificationMessageGroupVariation.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

