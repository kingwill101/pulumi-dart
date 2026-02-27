// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../v2models_intent_closing_setting_closing_response_message_group/v2models_intent_closing_setting_closing_response_message_group.dart';

class V2modelsIntentClosingSettingClosingResponse {
  /// Whether the user can interrupt a speech response from Amazon Lex.
  final bool? allowInterrupt;

  /// Configuration blocks for responses that Amazon Lex can send to the user. Amazon Lex chooses the actual response to send at runtime. See `message_group`.
  final List<V2modelsIntentClosingSettingClosingResponseMessageGroup>?
      messageGroups;

  V2modelsIntentClosingSettingClosingResponse({
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
          V2modelsIntentClosingSettingClosingResponseMessageGroup,
          Map<String, dynamic>>(messageGroupsValue, (value) => value.toMap());
    }
    return map;
  }

  factory V2modelsIntentClosingSettingClosingResponse.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentClosingSettingClosingResponse(
      allowInterrupt:
          map['allowInterrupt'] == null ? null : map['allowInterrupt'] as bool,
      messageGroups: map['messageGroups'] == null
          ? null
          : pulumi.Input.decodeList<
                  V2modelsIntentClosingSettingClosingResponseMessageGroup>(
              map['messageGroups'],
              (value) => V2modelsIntentClosingSettingClosingResponseMessageGroup
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
