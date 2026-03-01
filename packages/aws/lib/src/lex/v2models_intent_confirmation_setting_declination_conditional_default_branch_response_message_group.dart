// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_intent_confirmation_setting_declination_conditional_default_branch_response_message_group_message.dart';
import 'v2models_intent_confirmation_setting_declination_conditional_default_branch_response_message_group_variation.dart';

class V2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchResponseMessageGroup {
  /// Configuration block for the primary message that Amazon Lex should send to the user. See `message`.
  final V2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchResponseMessageGroupMessage? message;
  /// Configuration blocks for message variations to send to the user. When variations are defined, Amazon Lex chooses the primary message or one of the variations to send to the user. See `variation`.
  final List<V2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchResponseMessageGroupVariation>? variations;

  /// Creates a new [V2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchResponseMessageGroup].
  /// [message] Configuration block for the primary message that Amazon Lex should send to the user. See `message`.
  /// [variations] Configuration blocks for message variations to send to the user. When variations are defined, Amazon Lex chooses the primary message or one of the variations to send to the user. See `variation`.
  V2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchResponseMessageGroup({
    this.message,
    this.variations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'message': ?message == null ? null : message!.toMap(),
      'variations': ?variations == null ? null : pulumi.Input.encodeList<V2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchResponseMessageGroupVariation, Map<String, dynamic>>(variations!, (value) => value.toMap()),
    };
  }

  factory V2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchResponseMessageGroup.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchResponseMessageGroup(
      message: map['message'] == null ? null : V2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchResponseMessageGroupMessage.fromMap((map['message'] as Map).cast<String, dynamic>()),
      variations: map['variations'] == null ? null : pulumi.Input.decodeList<V2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchResponseMessageGroupVariation>(map['variations'], (value) => V2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchResponseMessageGroupVariation.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

