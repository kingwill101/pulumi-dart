// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_intent_confirmation_setting_failure_conditional_default_branch_response_message_group_message.dart';
import 'v2models_intent_confirmation_setting_failure_conditional_default_branch_response_message_group_variation.dart';

class V2modelsIntentConfirmationSettingFailureConditionalDefaultBranchResponseMessageGroup {
  /// Configuration block for the primary message that Amazon Lex should send to the user. See `message`.
  final pulumi.Input<V2modelsIntentConfirmationSettingFailureConditionalDefaultBranchResponseMessageGroupMessage?>? message;
  /// Configuration blocks for message variations to send to the user. When variations are defined, Amazon Lex chooses the primary message or one of the variations to send to the user. See `variation`.
  final pulumi.Input<List<V2modelsIntentConfirmationSettingFailureConditionalDefaultBranchResponseMessageGroupVariation>?>? variations;

  /// Creates a new [V2modelsIntentConfirmationSettingFailureConditionalDefaultBranchResponseMessageGroup].
  /// [message] Configuration block for the primary message that Amazon Lex should send to the user. See `message`.
  /// [variations] Configuration blocks for message variations to send to the user. When variations are defined, Amazon Lex chooses the primary message or one of the variations to send to the user. See `variation`.
  const V2modelsIntentConfirmationSettingFailureConditionalDefaultBranchResponseMessageGroup({
    this.message,
    this.variations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'message': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentConfirmationSettingFailureConditionalDefaultBranchResponseMessageGroupMessage, Map<String, dynamic>>(message, (value) => value.toMap()),
      'variations': ?pulumi.Input.mapOptionalInputValue<List<V2modelsIntentConfirmationSettingFailureConditionalDefaultBranchResponseMessageGroupVariation>, List<Map<String, dynamic>>>(variations, (value) => pulumi.Input.encodeList<V2modelsIntentConfirmationSettingFailureConditionalDefaultBranchResponseMessageGroupVariation, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory V2modelsIntentConfirmationSettingFailureConditionalDefaultBranchResponseMessageGroup.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentConfirmationSettingFailureConditionalDefaultBranchResponseMessageGroup(
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2modelsIntentConfirmationSettingFailureConditionalDefaultBranchResponseMessageGroupMessage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      variations: (() { final guardedValue = map['variations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<V2modelsIntentConfirmationSettingFailureConditionalDefaultBranchResponseMessageGroupVariation>(guardedValue, (value) => V2modelsIntentConfirmationSettingFailureConditionalDefaultBranchResponseMessageGroupVariation.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
