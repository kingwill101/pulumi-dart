// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_intent_initial_response_setting_code_hook_post_code_hook_specification_failure_response_message_group_message.dart';
import 'v2models_intent_initial_response_setting_code_hook_post_code_hook_specification_failure_response_message_group_variation.dart';

class V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroup {
  /// Configuration block for the primary message that Amazon Lex should send to the user. See `message`.
  final V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupMessage? message;
  /// Configuration blocks for message variations to send to the user. When variations are defined, Amazon Lex chooses the primary message or one of the variations to send to the user. See `variation`.
  final List<V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupVariation>? variations;

  /// Creates a new [V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroup].
  /// [message] Configuration block for the primary message that Amazon Lex should send to the user. See `message`.
  /// [variations] Configuration blocks for message variations to send to the user. When variations are defined, Amazon Lex chooses the primary message or one of the variations to send to the user. See `variation`.
  V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroup({
    this.message,
    this.variations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'message': ?message == null ? null : message!.toMap(),
      'variations': ?variations == null ? null : pulumi.Input.encodeList<V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupVariation, Map<String, dynamic>>(variations!, (value) => value.toMap()),
    };
  }

  factory V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroup.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroup(
      message: map['message'] == null ? null : V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupMessage.fromMap((map['message'] as Map).cast<String, dynamic>()),
      variations: map['variations'] == null ? null : pulumi.Input.decodeList<V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupVariation>(map['variations'], (value) => V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupVariation.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

