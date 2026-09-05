// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_intent_confirmation_setting_failure_conditional_conditional_branch_response_message_group_message_custom_payload.dart';
import 'v2models_intent_confirmation_setting_failure_conditional_conditional_branch_response_message_group_message_image_response_card.dart';
import 'v2models_intent_confirmation_setting_failure_conditional_conditional_branch_response_message_group_message_plain_text_message.dart';
import 'v2models_intent_confirmation_setting_failure_conditional_conditional_branch_response_message_group_message_ssml_message.dart';

class V2modelsIntentConfirmationSettingFailureConditionalConditionalBranchResponseMessageGroupMessage {
  /// Configuration block for a message in a custom format defined by the client application. See `customPayload`.
  final pulumi.Input<V2modelsIntentConfirmationSettingFailureConditionalConditionalBranchResponseMessageGroupMessageCustomPayload?>? customPayload;
  /// Configuration block for a message that defines a response card that the client application can show to the user. See `imageResponseCard`.
  final pulumi.Input<V2modelsIntentConfirmationSettingFailureConditionalConditionalBranchResponseMessageGroupMessageImageResponseCard?>? imageResponseCard;
  /// Configuration block for a message in plain text format. See `plainTextMessage`.
  final pulumi.Input<V2modelsIntentConfirmationSettingFailureConditionalConditionalBranchResponseMessageGroupMessagePlainTextMessage?>? plainTextMessage;
  /// Configuration block for a message in Speech Synthesis Markup Language (SSML). See `ssmlMessage`.
  final pulumi.Input<V2modelsIntentConfirmationSettingFailureConditionalConditionalBranchResponseMessageGroupMessageSsmlMessage?>? ssmlMessage;

  /// Creates a new [V2modelsIntentConfirmationSettingFailureConditionalConditionalBranchResponseMessageGroupMessage].
  /// [customPayload] Configuration block for a message in a custom format defined by the client application. See `customPayload`.
  /// [imageResponseCard] Configuration block for a message that defines a response card that the client application can show to the user. See `imageResponseCard`.
  /// [plainTextMessage] Configuration block for a message in plain text format. See `plainTextMessage`.
  /// [ssmlMessage] Configuration block for a message in Speech Synthesis Markup Language (SSML). See `ssmlMessage`.
  const V2modelsIntentConfirmationSettingFailureConditionalConditionalBranchResponseMessageGroupMessage({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customPayload': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentConfirmationSettingFailureConditionalConditionalBranchResponseMessageGroupMessageCustomPayload, Map<String, dynamic>>(customPayload, (value) => value.toMap()),
      'imageResponseCard': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentConfirmationSettingFailureConditionalConditionalBranchResponseMessageGroupMessageImageResponseCard, Map<String, dynamic>>(imageResponseCard, (value) => value.toMap()),
      'plainTextMessage': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentConfirmationSettingFailureConditionalConditionalBranchResponseMessageGroupMessagePlainTextMessage, Map<String, dynamic>>(plainTextMessage, (value) => value.toMap()),
      'ssmlMessage': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentConfirmationSettingFailureConditionalConditionalBranchResponseMessageGroupMessageSsmlMessage, Map<String, dynamic>>(ssmlMessage, (value) => value.toMap()),
    };
  }

  factory V2modelsIntentConfirmationSettingFailureConditionalConditionalBranchResponseMessageGroupMessage.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentConfirmationSettingFailureConditionalConditionalBranchResponseMessageGroupMessage(
      customPayload: (() { final guardedValue = map['customPayload']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2modelsIntentConfirmationSettingFailureConditionalConditionalBranchResponseMessageGroupMessageCustomPayload.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      imageResponseCard: (() { final guardedValue = map['imageResponseCard']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2modelsIntentConfirmationSettingFailureConditionalConditionalBranchResponseMessageGroupMessageImageResponseCard.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      plainTextMessage: (() { final guardedValue = map['plainTextMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2modelsIntentConfirmationSettingFailureConditionalConditionalBranchResponseMessageGroupMessagePlainTextMessage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ssmlMessage: (() { final guardedValue = map['ssmlMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2modelsIntentConfirmationSettingFailureConditionalConditionalBranchResponseMessageGroupMessageSsmlMessage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
