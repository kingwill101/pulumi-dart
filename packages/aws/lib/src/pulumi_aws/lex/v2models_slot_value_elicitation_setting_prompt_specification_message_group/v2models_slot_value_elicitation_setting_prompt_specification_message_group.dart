// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../v2models_slot_value_elicitation_setting_prompt_specification_message_group_message/v2models_slot_value_elicitation_setting_prompt_specification_message_group_message.dart';
import '../v2models_slot_value_elicitation_setting_prompt_specification_message_group_variation/v2models_slot_value_elicitation_setting_prompt_specification_message_group_variation.dart';

class V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroup {
  /// Configuration block for the primary message that Amazon Lex should send to the user.
  /// See the `aws.lex.V2modelsIntent` resource for details on the `message` argument reference - they are identical.
  final V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupMessage?
      message;

  /// Configuration blocks for message variations to send to the user.
  /// When variations are defined, Amazon Lex chooses the primary message or one of the variations to send to the user.
  /// See the `aws.lex.V2modelsIntent` resource for details on the `variation` argument reference - they are identical.
  final List<
          V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupVariation>?
      variations;

  V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroup({
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
      map['variations'] = Input.encodeList<
          V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupVariation,
          Map<String, dynamic>>(variationsValue, (value) => value.toMap());
    }
    return map;
  }

  factory V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroup.fromMap(
      Map<String, dynamic> map) {
    return V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroup(
      message: map['message'] == null
          ? null
          : V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupMessage
              .fromMap((map['message'] as Map).cast<String, dynamic>()),
      variations: map['variations'] == null
          ? null
          : Input.decodeList<
                  V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupVariation>(
              map['variations'],
              (value) =>
                  V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupVariation
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
