// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_intent_closing_setting_closing_response_message_group.dart';

class V2modelsIntentClosingSettingClosingResponse {
  /// Whether the user can interrupt a speech response from Amazon Lex.
  final pulumi.Input<bool>? allowInterrupt;
  /// Configuration blocks for responses that Amazon Lex can send to the user. Amazon Lex chooses the actual response to send at runtime. See `message_group`.
  final pulumi.Input<List<V2modelsIntentClosingSettingClosingResponseMessageGroup>>? messageGroups;

  /// Creates a new [V2modelsIntentClosingSettingClosingResponse].
  /// [allowInterrupt] Whether the user can interrupt a speech response from Amazon Lex.
  /// [messageGroups] Configuration blocks for responses that Amazon Lex can send to the user. Amazon Lex chooses the actual response to send at runtime. See `message_group`.
  V2modelsIntentClosingSettingClosingResponse({
    this.allowInterrupt,
    this.messageGroups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowInterrupt': ?allowInterrupt,
      'messageGroups': ?pulumi.Input.mapOptionalInputValue<List<V2modelsIntentClosingSettingClosingResponseMessageGroup>, List<Map<String, dynamic>>>(messageGroups, (value) => pulumi.Input.encodeList<V2modelsIntentClosingSettingClosingResponseMessageGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory V2modelsIntentClosingSettingClosingResponse.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentClosingSettingClosingResponse(
      allowInterrupt: map['allowInterrupt'] == null ? null : (map['allowInterrupt'] as bool).input(),
      messageGroups: map['messageGroups'] == null ? null : (pulumi.Input.decodeList<V2modelsIntentClosingSettingClosingResponseMessageGroup>(map['messageGroups'], (value) => V2modelsIntentClosingSettingClosingResponseMessageGroup.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

