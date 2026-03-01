// ignore_for_file: unused_element, unnecessary_cast

import 'v2models_intent_closing_setting_conditional_default_branch_response_message_group_variation_custom_payload.dart';
import 'v2models_intent_closing_setting_conditional_default_branch_response_message_group_variation_image_response_card.dart';
import 'v2models_intent_closing_setting_conditional_default_branch_response_message_group_variation_plain_text_message.dart';
import 'v2models_intent_closing_setting_conditional_default_branch_response_message_group_variation_ssml_message.dart';

class V2modelsIntentClosingSettingConditionalDefaultBranchResponseMessageGroupVariation {
  /// Configuration block for a message in a custom format defined by the client application. See `custom_payload`.
  final V2modelsIntentClosingSettingConditionalDefaultBranchResponseMessageGroupVariationCustomPayload?
  customPayload;

  /// Configuration block for a message that defines a response card that the client application can show to the user. See `image_response_card`.
  final V2modelsIntentClosingSettingConditionalDefaultBranchResponseMessageGroupVariationImageResponseCard?
  imageResponseCard;

  /// Configuration block for a message in plain text format. See `plain_text_message`.
  final V2modelsIntentClosingSettingConditionalDefaultBranchResponseMessageGroupVariationPlainTextMessage?
  plainTextMessage;

  /// Configuration block for a message in Speech Synthesis Markup Language (SSML). See `ssml_message`.
  final V2modelsIntentClosingSettingConditionalDefaultBranchResponseMessageGroupVariationSsmlMessage?
  ssmlMessage;

  /// Creates a new [V2modelsIntentClosingSettingConditionalDefaultBranchResponseMessageGroupVariation].
  /// [customPayload] Configuration block for a message in a custom format defined by the client application. See `custom_payload`.
  /// [imageResponseCard] Configuration block for a message that defines a response card that the client application can show to the user. See `image_response_card`.
  /// [plainTextMessage] Configuration block for a message in plain text format. See `plain_text_message`.
  /// [ssmlMessage] Configuration block for a message in Speech Synthesis Markup Language (SSML). See `ssml_message`.
  V2modelsIntentClosingSettingConditionalDefaultBranchResponseMessageGroupVariation({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customPayload': ?customPayload == null ? null : customPayload!.toMap(),
      'imageResponseCard': ?imageResponseCard == null
          ? null
          : imageResponseCard!.toMap(),
      'plainTextMessage': ?plainTextMessage == null
          ? null
          : plainTextMessage!.toMap(),
      'ssmlMessage': ?ssmlMessage == null ? null : ssmlMessage!.toMap(),
    };
  }

  factory V2modelsIntentClosingSettingConditionalDefaultBranchResponseMessageGroupVariation.fromMap(
    Map<String, dynamic> map,
  ) {
    return V2modelsIntentClosingSettingConditionalDefaultBranchResponseMessageGroupVariation(
      customPayload: map['customPayload'] == null
          ? null
          : V2modelsIntentClosingSettingConditionalDefaultBranchResponseMessageGroupVariationCustomPayload.fromMap(
              (map['customPayload'] as Map).cast<String, dynamic>(),
            ),
      imageResponseCard: map['imageResponseCard'] == null
          ? null
          : V2modelsIntentClosingSettingConditionalDefaultBranchResponseMessageGroupVariationImageResponseCard.fromMap(
              (map['imageResponseCard'] as Map).cast<String, dynamic>(),
            ),
      plainTextMessage: map['plainTextMessage'] == null
          ? null
          : V2modelsIntentClosingSettingConditionalDefaultBranchResponseMessageGroupVariationPlainTextMessage.fromMap(
              (map['plainTextMessage'] as Map).cast<String, dynamic>(),
            ),
      ssmlMessage: map['ssmlMessage'] == null
          ? null
          : V2modelsIntentClosingSettingConditionalDefaultBranchResponseMessageGroupVariationSsmlMessage.fromMap(
              (map['ssmlMessage'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
