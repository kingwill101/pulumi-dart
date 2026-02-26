// ignore_for_file: unused_element, unnecessary_cast

import '../channel_encoder_settings_caption_description_destination_settings/channel_encoder_settings_caption_description_destination_settings.dart';

class ChannelEncoderSettingsCaptionDescription {
  /// Indicates whether the caption track implements accessibility features such as written descriptions of spoken dialog, music, and sounds.
  final String? accessibility;

  /// Specifies which input caption selector to use as a caption source when generating output captions. This field should match a captionSelector name.
  final String captionSelectorName;

  /// Additional settings for captions destination that depend on the destination type. See Destination Settings for more details.
  final ChannelEncoderSettingsCaptionDescriptionDestinationSettings?
      destinationSettings;

  /// ISO 639-2 three-digit code.
  final String? languageCode;

  /// Human readable information to indicate captions available for players (eg. English, or Spanish).
  final String? languageDescription;

  /// Name of the caption description. Used to associate a caption description with an output. Names must be unique within an event.
  final String name;

  ChannelEncoderSettingsCaptionDescription({
    this.accessibility,
    required this.captionSelectorName,
    this.destinationSettings,
    this.languageCode,
    this.languageDescription,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accessibilityValue = accessibility;
    if (accessibilityValue != null) {
      map['accessibility'] = accessibilityValue;
    }
    map['captionSelectorName'] = captionSelectorName;
    final destinationSettingsValue = destinationSettings;
    if (destinationSettingsValue != null) {
      map['destinationSettings'] = destinationSettingsValue.toMap();
    }
    final languageCodeValue = languageCode;
    if (languageCodeValue != null) {
      map['languageCode'] = languageCodeValue;
    }
    final languageDescriptionValue = languageDescription;
    if (languageDescriptionValue != null) {
      map['languageDescription'] = languageDescriptionValue;
    }
    map['name'] = name;
    return map;
  }

  factory ChannelEncoderSettingsCaptionDescription.fromMap(
      Map<String, dynamic> map) {
    return ChannelEncoderSettingsCaptionDescription(
      accessibility:
          map['accessibility'] == null ? null : map['accessibility'] as String,
      captionSelectorName: map['captionSelectorName'] as String,
      destinationSettings: map['destinationSettings'] == null
          ? null
          : ChannelEncoderSettingsCaptionDescriptionDestinationSettings.fromMap(
              (map['destinationSettings'] as Map).cast<String, dynamic>()),
      languageCode:
          map['languageCode'] == null ? null : map['languageCode'] as String,
      languageDescription: map['languageDescription'] == null
          ? null
          : map['languageDescription'] as String,
      name: map['name'] as String,
    );
  }
}
