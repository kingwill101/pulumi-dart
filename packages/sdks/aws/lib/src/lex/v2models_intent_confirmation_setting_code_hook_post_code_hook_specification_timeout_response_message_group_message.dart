// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_intent_confirmation_setting_code_hook_post_code_hook_specification_timeout_response_message_group_message_custom_payload.dart';
import 'v2models_intent_confirmation_setting_code_hook_post_code_hook_specification_timeout_response_message_group_message_image_response_card.dart';
import 'v2models_intent_confirmation_setting_code_hook_post_code_hook_specification_timeout_response_message_group_message_plain_text_message.dart';
import 'v2models_intent_confirmation_setting_code_hook_post_code_hook_specification_timeout_response_message_group_message_ssml_message.dart';

class V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupMessage {
  /// Configuration block for a message in a custom format defined by the client application. See `custom_payload`.
  final pulumi.Input<
    V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupMessageCustomPayload
  >?
  customPayload;

  /// Configuration block for a message that defines a response card that the client application can show to the user. See `image_response_card`.
  final pulumi.Input<
    V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupMessageImageResponseCard
  >?
  imageResponseCard;

  /// Configuration block for a message in plain text format. See `plain_text_message`.
  final pulumi.Input<
    V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupMessagePlainTextMessage
  >?
  plainTextMessage;

  /// Configuration block for a message in Speech Synthesis Markup Language (SSML). See `ssml_message`.
  final pulumi.Input<
    V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupMessageSsmlMessage
  >?
  ssmlMessage;

  /// Creates a new [V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupMessage].
  /// [customPayload] Configuration block for a message in a custom format defined by the client application. See `custom_payload`.
  /// [imageResponseCard] Configuration block for a message that defines a response card that the client application can show to the user. See `image_response_card`.
  /// [plainTextMessage] Configuration block for a message in plain text format. See `plain_text_message`.
  /// [ssmlMessage] Configuration block for a message in Speech Synthesis Markup Language (SSML). See `ssml_message`.
  V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupMessage({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customPayload':
          ?pulumi.Input.mapOptionalInputValue<
            V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupMessageCustomPayload,
            Map<String, dynamic>
          >(customPayload, (value) => value.toMap()),
      'imageResponseCard':
          ?pulumi.Input.mapOptionalInputValue<
            V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupMessageImageResponseCard,
            Map<String, dynamic>
          >(imageResponseCard, (value) => value.toMap()),
      'plainTextMessage':
          ?pulumi.Input.mapOptionalInputValue<
            V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupMessagePlainTextMessage,
            Map<String, dynamic>
          >(plainTextMessage, (value) => value.toMap()),
      'ssmlMessage':
          ?pulumi.Input.mapOptionalInputValue<
            V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupMessageSsmlMessage,
            Map<String, dynamic>
          >(ssmlMessage, (value) => value.toMap()),
    };
  }

  factory V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupMessage.fromMap(
    Map<String, dynamic> map,
  ) {
    return V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupMessage(
      customPayload: (() {
        final guardedValue = map['customPayload'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupMessageCustomPayload.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      imageResponseCard: (() {
        final guardedValue = map['imageResponseCard'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupMessageImageResponseCard.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      plainTextMessage: (() {
        final guardedValue = map['plainTextMessage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupMessagePlainTextMessage.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      ssmlMessage: (() {
        final guardedValue = map['ssmlMessage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupMessageSsmlMessage.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
