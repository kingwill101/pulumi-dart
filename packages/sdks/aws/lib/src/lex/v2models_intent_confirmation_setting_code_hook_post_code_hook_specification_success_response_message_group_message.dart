// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_intent_confirmation_setting_code_hook_post_code_hook_specification_success_response_message_group_message_custom_payload.dart';
import 'v2models_intent_confirmation_setting_code_hook_post_code_hook_specification_success_response_message_group_message_image_response_card.dart';
import 'v2models_intent_confirmation_setting_code_hook_post_code_hook_specification_success_response_message_group_message_plain_text_message.dart';
import 'v2models_intent_confirmation_setting_code_hook_post_code_hook_specification_success_response_message_group_message_ssml_message.dart';

class V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupMessage {
  /// Configuration block for a message in a custom format defined by the client application. See `customPayload`.
  final pulumi.Input<V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupMessageCustomPayload?>? customPayload;
  /// Configuration block for a message that defines a response card that the client application can show to the user. See `imageResponseCard`.
  final pulumi.Input<V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupMessageImageResponseCard?>? imageResponseCard;
  /// Configuration block for a message in plain text format. See `plainTextMessage`.
  final pulumi.Input<V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupMessagePlainTextMessage?>? plainTextMessage;
  /// Configuration block for a message in Speech Synthesis Markup Language (SSML). See `ssmlMessage`.
  final pulumi.Input<V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupMessageSsmlMessage?>? ssmlMessage;

  /// Creates a new [V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupMessage].
  /// [customPayload] Configuration block for a message in a custom format defined by the client application. See `customPayload`.
  /// [imageResponseCard] Configuration block for a message that defines a response card that the client application can show to the user. See `imageResponseCard`.
  /// [plainTextMessage] Configuration block for a message in plain text format. See `plainTextMessage`.
  /// [ssmlMessage] Configuration block for a message in Speech Synthesis Markup Language (SSML). See `ssmlMessage`.
  const V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupMessage({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customPayload': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupMessageCustomPayload, Map<String, dynamic>>(customPayload, (value) => value.toMap()),
      'imageResponseCard': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupMessageImageResponseCard, Map<String, dynamic>>(imageResponseCard, (value) => value.toMap()),
      'plainTextMessage': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupMessagePlainTextMessage, Map<String, dynamic>>(plainTextMessage, (value) => value.toMap()),
      'ssmlMessage': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupMessageSsmlMessage, Map<String, dynamic>>(ssmlMessage, (value) => value.toMap()),
    };
  }

  factory V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupMessage.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupMessage(
      customPayload: (() { final guardedValue = map['customPayload']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupMessageCustomPayload.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      imageResponseCard: (() { final guardedValue = map['imageResponseCard']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupMessageImageResponseCard.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      plainTextMessage: (() { final guardedValue = map['plainTextMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupMessagePlainTextMessage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ssmlMessage: (() { final guardedValue = map['ssmlMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupMessageSsmlMessage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
