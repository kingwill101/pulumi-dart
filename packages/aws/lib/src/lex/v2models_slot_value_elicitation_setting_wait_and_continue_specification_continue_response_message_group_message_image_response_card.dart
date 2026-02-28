// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_slot_value_elicitation_setting_wait_and_continue_specification_continue_response_message_group_message_image_response_card_button.dart';

class V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupMessageImageResponseCard {
  final List<
          V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupMessageImageResponseCardButton>?
      buttons;
  final String? imageUrl;
  final String? subtitle;
  final String title;

  /// Creates a new [V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupMessageImageResponseCard].
  /// [buttons] Optional.
  /// [imageUrl] Optional.
  /// [subtitle] Optional.
  /// [title] Required.
  V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupMessageImageResponseCard({
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
          V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupMessageImageResponseCardButton,
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

  factory V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupMessageImageResponseCard.fromMap(
      Map<String, dynamic> map) {
    return V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupMessageImageResponseCard(
      buttons: map['buttons'] == null
          ? null
          : pulumi.Input.decodeList<
                  V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupMessageImageResponseCardButton>(
              map['buttons'],
              (value) =>
                  V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupMessageImageResponseCardButton
                      .fromMap((value as Map).cast<String, dynamic>())),
      imageUrl: map['imageUrl'] == null ? null : map['imageUrl'] as String,
      subtitle: map['subtitle'] == null ? null : map['subtitle'] as String,
      title: map['title'] as String,
    );
  }
}
