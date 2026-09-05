// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_intent_confirmation_setting_confirmation_response_message_group_message_image_response_card_button.dart';

class V2modelsIntentConfirmationSettingConfirmationResponseMessageGroupMessageImageResponseCard {
  /// Configuration blocks for buttons that should be displayed on the response card. The arrangement of the buttons is determined by the platform that displays the button. See `button`.
  final pulumi.Input<List<V2modelsIntentConfirmationSettingConfirmationResponseMessageGroupMessageImageResponseCardButton>?>? buttons;
  /// URL of an image to display on the response card. The image URL must be publicly available so that the platform displaying the response card has access to the image.
  final pulumi.Input<String?>? imageUrl;
  /// Subtitle to display on the response card. The format of the subtitle is determined by the platform displaying the response card.
  final pulumi.Input<String?>? subtitle;
  /// Title to display on the response card. The format of the title is determined by the platform displaying the response card.
  final pulumi.Input<String> title;

  /// Creates a new [V2modelsIntentConfirmationSettingConfirmationResponseMessageGroupMessageImageResponseCard].
  /// [buttons] Configuration blocks for buttons that should be displayed on the response card. The arrangement of the buttons is determined by the platform that displays the button. See `button`.
  /// [imageUrl] URL of an image to display on the response card. The image URL must be publicly available so that the platform displaying the response card has access to the image.
  /// [subtitle] Subtitle to display on the response card. The format of the subtitle is determined by the platform displaying the response card.
  /// [title] Title to display on the response card. The format of the title is determined by the platform displaying the response card.
  const V2modelsIntentConfirmationSettingConfirmationResponseMessageGroupMessageImageResponseCard({
    this.buttons,
    this.imageUrl,
    this.subtitle,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buttons': ?pulumi.Input.mapOptionalInputValue<List<V2modelsIntentConfirmationSettingConfirmationResponseMessageGroupMessageImageResponseCardButton>, List<Map<String, dynamic>>>(buttons, (value) => pulumi.Input.encodeList<V2modelsIntentConfirmationSettingConfirmationResponseMessageGroupMessageImageResponseCardButton, Map<String, dynamic>>(value, (value) => value.toMap())),
      'imageUrl': ?imageUrl,
      'subtitle': ?subtitle,
      'title': title,
    };
  }

  factory V2modelsIntentConfirmationSettingConfirmationResponseMessageGroupMessageImageResponseCard.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentConfirmationSettingConfirmationResponseMessageGroupMessageImageResponseCard(
      buttons: (() { final guardedValue = map['buttons']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<V2modelsIntentConfirmationSettingConfirmationResponseMessageGroupMessageImageResponseCardButton>(guardedValue, (value) => V2modelsIntentConfirmationSettingConfirmationResponseMessageGroupMessageImageResponseCardButton.fromMap((value as Map).cast<String, dynamic>()))); })(),
      imageUrl: (() { final guardedValue = map['imageUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subtitle: (() { final guardedValue = map['subtitle']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      title: pulumi.Input.fromValue(map['title'] as String),
    );
  }
}
