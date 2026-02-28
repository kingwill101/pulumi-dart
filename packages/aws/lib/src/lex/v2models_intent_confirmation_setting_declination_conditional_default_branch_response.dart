// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_intent_confirmation_setting_declination_conditional_default_branch_response_message_group.dart';

class V2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchResponse {
  /// Whether the user can interrupt a speech response from Amazon Lex.
  final bool? allowInterrupt;

  /// Configuration blocks for responses that Amazon Lex can send to the user. Amazon Lex chooses the actual response to send at runtime. See `message_group`.
  final List<
          V2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchResponseMessageGroup>?
      messageGroups;

  /// Creates a new [V2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchResponse].
  /// [allowInterrupt] Whether the user can interrupt a speech response from Amazon Lex.
  /// [messageGroups] Configuration blocks for responses that Amazon Lex can send to the user. Amazon Lex chooses the actual response to send at runtime. See `message_group`.
  V2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchResponse({
    this.allowInterrupt,
    this.messageGroups,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowInterruptValue = allowInterrupt;
    if (allowInterruptValue != null) {
      map['allowInterrupt'] = allowInterruptValue;
    }
    final messageGroupsValue = messageGroups;
    if (messageGroupsValue != null) {
      map['messageGroups'] = pulumi.Input.encodeList<
          V2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchResponseMessageGroup,
          Map<String, dynamic>>(messageGroupsValue, (value) => value.toMap());
    }
    return map;
  }

  factory V2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchResponse.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchResponse(
      allowInterrupt:
          map['allowInterrupt'] == null ? null : map['allowInterrupt'] as bool,
      messageGroups: map['messageGroups'] == null
          ? null
          : pulumi.Input.decodeList<
                  V2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchResponseMessageGroup>(
              map['messageGroups'],
              (value) =>
                  V2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchResponseMessageGroup
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
