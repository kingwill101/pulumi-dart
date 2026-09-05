// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_intent_confirmation_setting_confirmation_conditional_default_branch_response_message_group_message.dart';
import 'v2models_intent_confirmation_setting_confirmation_conditional_default_branch_response_message_group_variation.dart';

class V2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchResponseMessageGroup {
  /// Configuration block for the primary message that Amazon Lex should send to the user. See `message`.
  final pulumi.Input<V2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchResponseMessageGroupMessage?>? message;
  /// Configuration blocks for message variations to send to the user. When variations are defined, Amazon Lex chooses the primary message or one of the variations to send to the user. See `variation`.
  final pulumi.Input<List<V2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchResponseMessageGroupVariation>?>? variations;

  /// Creates a new [V2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchResponseMessageGroup].
  /// [message] Configuration block for the primary message that Amazon Lex should send to the user. See `message`.
  /// [variations] Configuration blocks for message variations to send to the user. When variations are defined, Amazon Lex chooses the primary message or one of the variations to send to the user. See `variation`.
  const V2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchResponseMessageGroup({
    this.message,
    this.variations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'message': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchResponseMessageGroupMessage, Map<String, dynamic>>(message, (value) => value.toMap()),
      'variations': ?pulumi.Input.mapOptionalInputValue<List<V2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchResponseMessageGroupVariation>, List<Map<String, dynamic>>>(variations, (value) => pulumi.Input.encodeList<V2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchResponseMessageGroupVariation, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory V2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchResponseMessageGroup.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchResponseMessageGroup(
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchResponseMessageGroupMessage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      variations: (() { final guardedValue = map['variations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<V2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchResponseMessageGroupVariation>(guardedValue, (value) => V2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchResponseMessageGroupVariation.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
