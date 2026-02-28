// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_intent_confirmation_setting_declination_response_message_group.dart';

class V2modelsIntentConfirmationSettingDeclinationResponse {
  /// Whether the user can interrupt a speech response from Amazon Lex.
  final bool? allowInterrupt;
  /// Configuration blocks for responses that Amazon Lex can send to the user. Amazon Lex chooses the actual response to send at runtime. See `message_group`.
  final List<V2modelsIntentConfirmationSettingDeclinationResponseMessageGroup>? messageGroups;

  /// Creates a new [V2modelsIntentConfirmationSettingDeclinationResponse].
  /// [allowInterrupt] Whether the user can interrupt a speech response from Amazon Lex.
  /// [messageGroups] Configuration blocks for responses that Amazon Lex can send to the user. Amazon Lex chooses the actual response to send at runtime. See `message_group`.
  V2modelsIntentConfirmationSettingDeclinationResponse({
    this.allowInterrupt,
    this.messageGroups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowInterrupt': ?allowInterrupt,
      'messageGroups': ?messageGroups == null ? null : pulumi.Input.encodeList<V2modelsIntentConfirmationSettingDeclinationResponseMessageGroup, Map<String, dynamic>>(messageGroups!, (value) => value.toMap()),
    };
  }

  factory V2modelsIntentConfirmationSettingDeclinationResponse.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentConfirmationSettingDeclinationResponse(
      allowInterrupt: map['allowInterrupt'] == null ? null : map['allowInterrupt'] as bool,
      messageGroups: map['messageGroups'] == null ? null : pulumi.Input.decodeList<V2modelsIntentConfirmationSettingDeclinationResponseMessageGroup>(map['messageGroups'], (value) => V2modelsIntentConfirmationSettingDeclinationResponseMessageGroup.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

