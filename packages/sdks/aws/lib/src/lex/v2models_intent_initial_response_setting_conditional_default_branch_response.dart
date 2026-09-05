// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_intent_initial_response_setting_conditional_default_branch_response_message_group.dart';

class V2modelsIntentInitialResponseSettingConditionalDefaultBranchResponse {
  /// Whether the user can interrupt a speech response from Amazon Lex.
  final pulumi.Input<bool?>? allowInterrupt;
  /// Configuration blocks for responses that Amazon Lex can send to the user. Amazon Lex chooses the actual response to send at runtime. See `messageGroup`.
  final pulumi.Input<List<V2modelsIntentInitialResponseSettingConditionalDefaultBranchResponseMessageGroup>?>? messageGroups;

  /// Creates a new [V2modelsIntentInitialResponseSettingConditionalDefaultBranchResponse].
  /// [allowInterrupt] Whether the user can interrupt a speech response from Amazon Lex.
  /// [messageGroups] Configuration blocks for responses that Amazon Lex can send to the user. Amazon Lex chooses the actual response to send at runtime. See `messageGroup`.
  const V2modelsIntentInitialResponseSettingConditionalDefaultBranchResponse({
    this.allowInterrupt,
    this.messageGroups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowInterrupt': ?allowInterrupt,
      'messageGroups': ?pulumi.Input.mapOptionalInputValue<List<V2modelsIntentInitialResponseSettingConditionalDefaultBranchResponseMessageGroup>, List<Map<String, dynamic>>>(messageGroups, (value) => pulumi.Input.encodeList<V2modelsIntentInitialResponseSettingConditionalDefaultBranchResponseMessageGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory V2modelsIntentInitialResponseSettingConditionalDefaultBranchResponse.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentInitialResponseSettingConditionalDefaultBranchResponse(
      allowInterrupt: (() { final guardedValue = map['allowInterrupt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      messageGroups: (() { final guardedValue = map['messageGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<V2modelsIntentInitialResponseSettingConditionalDefaultBranchResponseMessageGroup>(guardedValue, (value) => V2modelsIntentInitialResponseSettingConditionalDefaultBranchResponseMessageGroup.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
