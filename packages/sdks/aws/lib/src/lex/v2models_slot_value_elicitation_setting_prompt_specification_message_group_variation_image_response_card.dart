// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_slot_value_elicitation_setting_prompt_specification_message_group_variation_image_response_card_button.dart';

class V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupVariationImageResponseCard {
  final List<V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupVariationImageResponseCardButton>? buttons;
  final String? imageUrl;
  final String? subtitle;
  final String title;

  /// Creates a new [V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupVariationImageResponseCard].
  /// [buttons] Optional.
  /// [imageUrl] Optional.
  /// [subtitle] Optional.
  /// [title] Required.
  V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupVariationImageResponseCard({
    this.buttons,
    this.imageUrl,
    this.subtitle,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buttons': ?buttons == null ? null : pulumi.Input.encodeList<V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupVariationImageResponseCardButton, Map<String, dynamic>>(buttons!, (value) => value.toMap()),
      'imageUrl': ?imageUrl,
      'subtitle': ?subtitle,
      'title': title,
    };
  }

  factory V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupVariationImageResponseCard.fromMap(Map<String, dynamic> map) {
    return V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupVariationImageResponseCard(
      buttons: map['buttons'] == null ? null : pulumi.Input.decodeList<V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupVariationImageResponseCardButton>(map['buttons'], (value) => V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupVariationImageResponseCardButton.fromMap((value as Map).cast<String, dynamic>())),
      imageUrl: map['imageUrl'] == null ? null : map['imageUrl'] as String,
      subtitle: map['subtitle'] == null ? null : map['subtitle'] as String,
      title: map['title'] as String,
    );
  }
}

