// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_intent_confirmation_setting_confirmation_conditional_conditional_branch_response_message_group.dart';

class V2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchResponse {
  /// Whether the user can interrupt a speech response from Amazon Lex.
  final bool? allowInterrupt;

  /// Configuration blocks for responses that Amazon Lex can send to the user. Amazon Lex chooses the actual response to send at runtime. See `message_group`.
  final List<
    V2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchResponseMessageGroup
  >?
  messageGroups;

  /// Creates a new [V2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchResponse].
  /// [allowInterrupt] Whether the user can interrupt a speech response from Amazon Lex.
  /// [messageGroups] Configuration blocks for responses that Amazon Lex can send to the user. Amazon Lex chooses the actual response to send at runtime. See `message_group`.
  V2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchResponse({
    this.allowInterrupt,
    this.messageGroups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowInterrupt': ?allowInterrupt,
      'messageGroups': ?messageGroups == null
          ? null
          : pulumi.Input.encodeList<
              V2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchResponseMessageGroup,
              Map<String, dynamic>
            >(messageGroups!, (value) => value.toMap()),
    };
  }

  factory V2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return V2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchResponse(
      allowInterrupt: map['allowInterrupt'] == null
          ? null
          : map['allowInterrupt'] as bool,
      messageGroups: map['messageGroups'] == null
          ? null
          : pulumi.Input.decodeList<
              V2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchResponseMessageGroup
            >(
              map['messageGroups'],
              (value) =>
                  V2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchResponseMessageGroup.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
    );
  }
}
