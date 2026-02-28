// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_slot_sub_slot_setting_slot_specification_value_elicitation_setting_prompt_specification_message_group_message_image_response_card_button.dart';

class V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationMessageGroupMessageImageResponseCard {
  final List<
          V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationMessageGroupMessageImageResponseCardButton>?
      buttons;
  final String? imageUrl;
  final String? subtitle;
  final String title;

  /// Creates a new [V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationMessageGroupMessageImageResponseCard].
  /// [buttons] Optional.
  /// [imageUrl] Optional.
  /// [subtitle] Optional.
  /// [title] Required.
  V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationMessageGroupMessageImageResponseCard({
    this.buttons,
    this.imageUrl,
    this.subtitle,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final buttonsValue = buttons;
    if (buttonsValue != null) {
      map['buttons'] = pulumi.Input.encodeList<
          V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationMessageGroupMessageImageResponseCardButton,
          Map<String, dynamic>>(buttonsValue, (value) => value.toMap());
    }
    final imageUrlValue = imageUrl;
    if (imageUrlValue != null) {
      map['imageUrl'] = imageUrlValue;
    }
    final subtitleValue = subtitle;
    if (subtitleValue != null) {
      map['subtitle'] = subtitleValue;
    }
    map['title'] = title;
    return map;
  }

  factory V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationMessageGroupMessageImageResponseCard.fromMap(
      Map<String, dynamic> map) {
    return V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationMessageGroupMessageImageResponseCard(
      buttons: map['buttons'] == null
          ? null
          : pulumi.Input.decodeList<
                  V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationMessageGroupMessageImageResponseCardButton>(
              map['buttons'],
              (value) =>
                  V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationMessageGroupMessageImageResponseCardButton
                      .fromMap((value as Map).cast<String, dynamic>())),
      imageUrl: map['imageUrl'] == null ? null : map['imageUrl'] as String,
      subtitle: map['subtitle'] == null ? null : map['subtitle'] as String,
      title: map['title'] as String,
    );
  }
}
