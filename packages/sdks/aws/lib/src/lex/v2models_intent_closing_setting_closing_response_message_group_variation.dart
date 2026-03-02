// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_intent_closing_setting_closing_response_message_group_variation_custom_payload.dart';
import 'v2models_intent_closing_setting_closing_response_message_group_variation_image_response_card.dart';
import 'v2models_intent_closing_setting_closing_response_message_group_variation_plain_text_message.dart';
import 'v2models_intent_closing_setting_closing_response_message_group_variation_ssml_message.dart';

class V2modelsIntentClosingSettingClosingResponseMessageGroupVariation {
  /// Configuration block for a message in a custom format defined by the client application. See `custom_payload`.
  final pulumi.Input<V2modelsIntentClosingSettingClosingResponseMessageGroupVariationCustomPayload>? customPayload;
  /// Configuration block for a message that defines a response card that the client application can show to the user. See `image_response_card`.
  final pulumi.Input<V2modelsIntentClosingSettingClosingResponseMessageGroupVariationImageResponseCard>? imageResponseCard;
  /// Configuration block for a message in plain text format. See `plain_text_message`.
  final pulumi.Input<V2modelsIntentClosingSettingClosingResponseMessageGroupVariationPlainTextMessage>? plainTextMessage;
  /// Configuration block for a message in Speech Synthesis Markup Language (SSML). See `ssml_message`.
  final pulumi.Input<V2modelsIntentClosingSettingClosingResponseMessageGroupVariationSsmlMessage>? ssmlMessage;

  /// Creates a new [V2modelsIntentClosingSettingClosingResponseMessageGroupVariation].
  /// [customPayload] Configuration block for a message in a custom format defined by the client application. See `custom_payload`.
  /// [imageResponseCard] Configuration block for a message that defines a response card that the client application can show to the user. See `image_response_card`.
  /// [plainTextMessage] Configuration block for a message in plain text format. See `plain_text_message`.
  /// [ssmlMessage] Configuration block for a message in Speech Synthesis Markup Language (SSML). See `ssml_message`.
  V2modelsIntentClosingSettingClosingResponseMessageGroupVariation({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customPayload': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentClosingSettingClosingResponseMessageGroupVariationCustomPayload, Map<String, dynamic>>(customPayload, (value) => value.toMap()),
      'imageResponseCard': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentClosingSettingClosingResponseMessageGroupVariationImageResponseCard, Map<String, dynamic>>(imageResponseCard, (value) => value.toMap()),
      'plainTextMessage': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentClosingSettingClosingResponseMessageGroupVariationPlainTextMessage, Map<String, dynamic>>(plainTextMessage, (value) => value.toMap()),
      'ssmlMessage': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentClosingSettingClosingResponseMessageGroupVariationSsmlMessage, Map<String, dynamic>>(ssmlMessage, (value) => value.toMap()),
    };
  }

  factory V2modelsIntentClosingSettingClosingResponseMessageGroupVariation.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentClosingSettingClosingResponseMessageGroupVariation(
      customPayload: map['customPayload'] == null ? null : ((V2modelsIntentClosingSettingClosingResponseMessageGroupVariationCustomPayload.fromMap((map['customPayload']! as Map).cast<String, dynamic>())).input()).input(),
      imageResponseCard: map['imageResponseCard'] == null ? null : ((V2modelsIntentClosingSettingClosingResponseMessageGroupVariationImageResponseCard.fromMap((map['imageResponseCard']! as Map).cast<String, dynamic>())).input()).input(),
      plainTextMessage: map['plainTextMessage'] == null ? null : ((V2modelsIntentClosingSettingClosingResponseMessageGroupVariationPlainTextMessage.fromMap((map['plainTextMessage']! as Map).cast<String, dynamic>())).input()).input(),
      ssmlMessage: map['ssmlMessage'] == null ? null : ((V2modelsIntentClosingSettingClosingResponseMessageGroupVariationSsmlMessage.fromMap((map['ssmlMessage']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

