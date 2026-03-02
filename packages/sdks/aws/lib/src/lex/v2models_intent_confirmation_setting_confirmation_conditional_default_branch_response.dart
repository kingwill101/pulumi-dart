// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_intent_confirmation_setting_confirmation_conditional_default_branch_response_message_group.dart';

class V2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchResponse {
  /// Whether the user can interrupt a speech response from Amazon Lex.
  final pulumi.Input<bool>? allowInterrupt;
  /// Configuration blocks for responses that Amazon Lex can send to the user. Amazon Lex chooses the actual response to send at runtime. See `message_group`.
  final pulumi.Input<List<V2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchResponseMessageGroup>>? messageGroups;

  /// Creates a new [V2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchResponse].
  /// [allowInterrupt] Whether the user can interrupt a speech response from Amazon Lex.
  /// [messageGroups] Configuration blocks for responses that Amazon Lex can send to the user. Amazon Lex chooses the actual response to send at runtime. See `message_group`.
  V2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchResponse({
    this.allowInterrupt,
    this.messageGroups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowInterrupt': ?allowInterrupt,
      'messageGroups': ?pulumi.Input.mapOptionalInputValue<List<V2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchResponseMessageGroup>, List<Map<String, dynamic>>>(messageGroups, (value) => pulumi.Input.encodeList<V2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchResponseMessageGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory V2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchResponse.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchResponse(
      allowInterrupt: map['allowInterrupt'] == null ? null : ((map['allowInterrupt'] as bool).input()).input(),
      messageGroups: map['messageGroups'] == null ? null : ((pulumi.Input.decodeList<V2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchResponseMessageGroup>(map['messageGroups']!, (value) => V2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchResponseMessageGroup.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
    );
  }
}

