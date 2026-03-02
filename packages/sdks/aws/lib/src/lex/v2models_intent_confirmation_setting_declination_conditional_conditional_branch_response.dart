// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_intent_confirmation_setting_declination_conditional_conditional_branch_response_message_group.dart';

class V2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchResponse {
  /// Whether the user can interrupt a speech response from Amazon Lex.
  final pulumi.Input<bool>? allowInterrupt;
  /// Configuration blocks for responses that Amazon Lex can send to the user. Amazon Lex chooses the actual response to send at runtime. See `message_group`.
  final pulumi.Input<List<V2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchResponseMessageGroup>>? messageGroups;

  /// Creates a new [V2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchResponse].
  /// [allowInterrupt] Whether the user can interrupt a speech response from Amazon Lex.
  /// [messageGroups] Configuration blocks for responses that Amazon Lex can send to the user. Amazon Lex chooses the actual response to send at runtime. See `message_group`.
  V2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchResponse({
    this.allowInterrupt,
    this.messageGroups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowInterrupt': ?allowInterrupt,
      'messageGroups': ?pulumi.Input.mapOptionalInputValue<List<V2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchResponseMessageGroup>, List<Map<String, dynamic>>>(messageGroups, (value) => pulumi.Input.encodeList<V2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchResponseMessageGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory V2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchResponse.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchResponse(
      allowInterrupt: map['allowInterrupt'] == null ? null : ((map['allowInterrupt'] as bool).input()).input(),
      messageGroups: map['messageGroups'] == null ? null : ((pulumi.Input.decodeList<V2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchResponseMessageGroup>(map['messageGroups']!, (value) => V2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchResponseMessageGroup.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
    );
  }
}

