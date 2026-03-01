// ignore_for_file: unused_element, unnecessary_cast

import 'v2models_intent_confirmation_setting_failure_conditional_default_branch_response_message_group_variation_custom_payload.dart';
import 'v2models_intent_confirmation_setting_failure_conditional_default_branch_response_message_group_variation_image_response_card.dart';
import 'v2models_intent_confirmation_setting_failure_conditional_default_branch_response_message_group_variation_plain_text_message.dart';
import 'v2models_intent_confirmation_setting_failure_conditional_default_branch_response_message_group_variation_ssml_message.dart';

class V2modelsIntentConfirmationSettingFailureConditionalDefaultBranchResponseMessageGroupVariation {
  /// Configuration block for a message in a custom format defined by the client application. See `custom_payload`.
  final V2modelsIntentConfirmationSettingFailureConditionalDefaultBranchResponseMessageGroupVariationCustomPayload? customPayload;
  /// Configuration block for a message that defines a response card that the client application can show to the user. See `image_response_card`.
  final V2modelsIntentConfirmationSettingFailureConditionalDefaultBranchResponseMessageGroupVariationImageResponseCard? imageResponseCard;
  /// Configuration block for a message in plain text format. See `plain_text_message`.
  final V2modelsIntentConfirmationSettingFailureConditionalDefaultBranchResponseMessageGroupVariationPlainTextMessage? plainTextMessage;
  /// Configuration block for a message in Speech Synthesis Markup Language (SSML). See `ssml_message`.
  final V2modelsIntentConfirmationSettingFailureConditionalDefaultBranchResponseMessageGroupVariationSsmlMessage? ssmlMessage;

  /// Creates a new [V2modelsIntentConfirmationSettingFailureConditionalDefaultBranchResponseMessageGroupVariation].
  /// [customPayload] Configuration block for a message in a custom format defined by the client application. See `custom_payload`.
  /// [imageResponseCard] Configuration block for a message that defines a response card that the client application can show to the user. See `image_response_card`.
  /// [plainTextMessage] Configuration block for a message in plain text format. See `plain_text_message`.
  /// [ssmlMessage] Configuration block for a message in Speech Synthesis Markup Language (SSML). See `ssml_message`.
  V2modelsIntentConfirmationSettingFailureConditionalDefaultBranchResponseMessageGroupVariation({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customPayload': ?customPayload == null ? null : customPayload!.toMap(),
      'imageResponseCard': ?imageResponseCard == null ? null : imageResponseCard!.toMap(),
      'plainTextMessage': ?plainTextMessage == null ? null : plainTextMessage!.toMap(),
      'ssmlMessage': ?ssmlMessage == null ? null : ssmlMessage!.toMap(),
    };
  }

  factory V2modelsIntentConfirmationSettingFailureConditionalDefaultBranchResponseMessageGroupVariation.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentConfirmationSettingFailureConditionalDefaultBranchResponseMessageGroupVariation(
      customPayload: map['customPayload'] == null ? null : V2modelsIntentConfirmationSettingFailureConditionalDefaultBranchResponseMessageGroupVariationCustomPayload.fromMap((map['customPayload'] as Map).cast<String, dynamic>()),
      imageResponseCard: map['imageResponseCard'] == null ? null : V2modelsIntentConfirmationSettingFailureConditionalDefaultBranchResponseMessageGroupVariationImageResponseCard.fromMap((map['imageResponseCard'] as Map).cast<String, dynamic>()),
      plainTextMessage: map['plainTextMessage'] == null ? null : V2modelsIntentConfirmationSettingFailureConditionalDefaultBranchResponseMessageGroupVariationPlainTextMessage.fromMap((map['plainTextMessage'] as Map).cast<String, dynamic>()),
      ssmlMessage: map['ssmlMessage'] == null ? null : V2modelsIntentConfirmationSettingFailureConditionalDefaultBranchResponseMessageGroupVariationSsmlMessage.fromMap((map['ssmlMessage'] as Map).cast<String, dynamic>()),
    );
  }
}

