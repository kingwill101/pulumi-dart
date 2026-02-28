// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_intent_confirmation_setting_failure_conditional_conditional_branch_response_message_group_message.dart';
import 'v2models_intent_confirmation_setting_failure_conditional_conditional_branch_response_message_group_variation.dart';

class V2modelsIntentConfirmationSettingFailureConditionalConditionalBranchResponseMessageGroup {
  /// Configuration block for the primary message that Amazon Lex should send to the user. See `message`.
  final V2modelsIntentConfirmationSettingFailureConditionalConditionalBranchResponseMessageGroupMessage?
      message;

  /// Configuration blocks for message variations to send to the user. When variations are defined, Amazon Lex chooses the primary message or one of the variations to send to the user. See `variation`.
  final List<
          V2modelsIntentConfirmationSettingFailureConditionalConditionalBranchResponseMessageGroupVariation>?
      variations;

  /// Creates a new [V2modelsIntentConfirmationSettingFailureConditionalConditionalBranchResponseMessageGroup].
  /// [message] Configuration block for the primary message that Amazon Lex should send to the user. See `message`.
  /// [variations] Configuration blocks for message variations to send to the user. When variations are defined, Amazon Lex chooses the primary message or one of the variations to send to the user. See `variation`.
  V2modelsIntentConfirmationSettingFailureConditionalConditionalBranchResponseMessageGroup({
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
          V2modelsIntentConfirmationSettingFailureConditionalConditionalBranchResponseMessageGroupVariation,
          Map<String, dynamic>>(variationsValue, (value) => value.toMap());
    }
    return map;
  }

  factory V2modelsIntentConfirmationSettingFailureConditionalConditionalBranchResponseMessageGroup.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentConfirmationSettingFailureConditionalConditionalBranchResponseMessageGroup(
      message: map['message'] == null
          ? null
          : V2modelsIntentConfirmationSettingFailureConditionalConditionalBranchResponseMessageGroupMessage
              .fromMap((map['message'] as Map).cast<String, dynamic>()),
      variations: map['variations'] == null
          ? null
          : pulumi.Input.decodeList<
                  V2modelsIntentConfirmationSettingFailureConditionalConditionalBranchResponseMessageGroupVariation>(
              map['variations'],
              (value) =>
                  V2modelsIntentConfirmationSettingFailureConditionalConditionalBranchResponseMessageGroupVariation
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
