// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_slot_sub_slot_setting_slot_specification_value_elicitation_setting_wait_and_continue_specification_still_waiting_response_message_group_variation_image_response_card_button.dart';

class V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupVariationImageResponseCard {
  final List<V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupVariationImageResponseCardButton>? buttons;
  final String? imageUrl;
  final String? subtitle;
  final String title;

  /// Creates a new [V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupVariationImageResponseCard].
  /// [buttons] Optional.
  /// [imageUrl] Optional.
  /// [subtitle] Optional.
  /// [title] Required.
  V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupVariationImageResponseCard({
    this.buttons,
    this.imageUrl,
    this.subtitle,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buttons': ?buttons == null ? null : pulumi.Input.encodeList<V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupVariationImageResponseCardButton, Map<String, dynamic>>(buttons!, (value) => value.toMap()),
      'imageUrl': ?imageUrl,
      'subtitle': ?subtitle,
      'title': title,
    };
  }

  factory V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupVariationImageResponseCard.fromMap(Map<String, dynamic> map) {
    return V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupVariationImageResponseCard(
      buttons: map['buttons'] == null ? null : pulumi.Input.decodeList<V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupVariationImageResponseCardButton>(map['buttons'], (value) => V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupVariationImageResponseCardButton.fromMap((value as Map).cast<String, dynamic>())),
      imageUrl: map['imageUrl'] == null ? null : map['imageUrl'] as String,
      subtitle: map['subtitle'] == null ? null : map['subtitle'] as String,
      title: map['title'] as String,
    );
  }
}

