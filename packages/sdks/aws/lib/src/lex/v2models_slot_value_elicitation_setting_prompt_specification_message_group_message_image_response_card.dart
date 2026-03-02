// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_slot_value_elicitation_setting_prompt_specification_message_group_message_image_response_card_button.dart';

class V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupMessageImageResponseCard {
  final pulumi.Input<List<V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupMessageImageResponseCardButton>>? buttons;
  final pulumi.Input<String>? imageUrl;
  final pulumi.Input<String>? subtitle;
  final pulumi.Input<String> title;

  /// Creates a new [V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupMessageImageResponseCard].
  /// [buttons] Optional.
  /// [imageUrl] Optional.
  /// [subtitle] Optional.
  /// [title] Required.
  V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupMessageImageResponseCard({
    this.buttons,
    this.imageUrl,
    this.subtitle,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buttons': ?pulumi.Input.mapOptionalInputValue<List<V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupMessageImageResponseCardButton>, List<Map<String, dynamic>>>(buttons, (value) => pulumi.Input.encodeList<V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupMessageImageResponseCardButton, Map<String, dynamic>>(value, (value) => value.toMap())),
      'imageUrl': ?imageUrl,
      'subtitle': ?subtitle,
      'title': title,
    };
  }

  factory V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupMessageImageResponseCard.fromMap(Map<String, dynamic> map) {
    return V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupMessageImageResponseCard(
      buttons: map['buttons'] == null ? null : ((pulumi.Input.decodeList<V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupMessageImageResponseCardButton>(map['buttons']!, (value) => V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupMessageImageResponseCardButton.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      imageUrl: map['imageUrl'] == null ? null : ((map['imageUrl'] as String).input()).input(),
      subtitle: map['subtitle'] == null ? null : ((map['subtitle'] as String).input()).input(),
      title: (map['title'] as String).input(),
    );
  }
}

