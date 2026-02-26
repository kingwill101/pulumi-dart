// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../v2models_intent_confirmation_setting_code_hook_post_code_hook_specification_failure_response_message_group_message/v2models_intent_confirmation_setting_code_hook_post_code_hook_specification_failure_response_message_group_message.dart';
import '../v2models_intent_confirmation_setting_code_hook_post_code_hook_specification_failure_response_message_group_variation/v2models_intent_confirmation_setting_code_hook_post_code_hook_specification_failure_response_message_group_variation.dart';

class V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroup {
  /// Configuration block for the primary message that Amazon Lex should send to the user. See <span pulumi-lang-nodejs="`message`" pulumi-lang-dotnet="`Message`" pulumi-lang-go="`message`" pulumi-lang-python="`message`" pulumi-lang-yaml="`message`" pulumi-lang-java="`message`">`message`</span>.
  final V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupMessage?
      message;

  /// Configuration blocks for message variations to send to the user. When variations are defined, Amazon Lex chooses the primary message or one of the variations to send to the user. See <span pulumi-lang-nodejs="`variation`" pulumi-lang-dotnet="`Variation`" pulumi-lang-go="`variation`" pulumi-lang-python="`variation`" pulumi-lang-yaml="`variation`" pulumi-lang-java="`variation`">`variation`</span>.
  final List<
          V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupVariation>?
      variations;

  V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroup({
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
      map['variations'] = Input.encodeList<
          V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupVariation,
          Map<String, dynamic>>(variationsValue, (value) => value.toMap());
    }
    return map;
  }

  factory V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroup.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroup(
      message: map['message'] == null
          ? null
          : V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupMessage
              .fromMap((map['message'] as Map).cast<String, dynamic>()),
      variations: map['variations'] == null
          ? null
          : Input.decodeList<
                  V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupVariation>(
              map['variations'],
              (value) =>
                  V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupVariation
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
