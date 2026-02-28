// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_slot_value_elicitation_setting_prompt_specification_message_group_message.dart';
import 'v2models_slot_value_elicitation_setting_prompt_specification_message_group_variation.dart';

class V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroup {
  /// Configuration block for the primary message that Amazon Lex should send to the user.
  /// See the `aws.lex.V2modelsIntent` resource for details on the `message` argument reference - they are identical.
  final V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupMessage? message;
  /// Configuration blocks for message variations to send to the user.
  /// When variations are defined, Amazon Lex chooses the primary message or one of the variations to send to the user.
  /// See the `aws.lex.V2modelsIntent` resource for details on the `variation` argument reference - they are identical.
  final List<V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupVariation>? variations;

  /// Creates a new [V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroup].
  /// [message] Configuration block for the primary message that Amazon Lex should send to the user.
  /// [variations] Configuration blocks for message variations to send to the user.
  V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroup({
    this.message,
    this.variations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'message': ?message == null ? null : message!.toMap(),
      'variations': ?variations == null ? null : pulumi.Input.encodeList<V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupVariation, Map<String, dynamic>>(variations!, (value) => value.toMap()),
    };
  }

  factory V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroup.fromMap(Map<String, dynamic> map) {
    return V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroup(
      message: map['message'] == null ? null : V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupMessage.fromMap((map['message'] as Map).cast<String, dynamic>()),
      variations: map['variations'] == null ? null : pulumi.Input.decodeList<V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupVariation>(map['variations'], (value) => V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupVariation.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

