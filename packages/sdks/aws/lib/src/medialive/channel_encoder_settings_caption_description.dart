// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_encoder_settings_caption_description_destination_settings.dart';

class ChannelEncoderSettingsCaptionDescription {
  /// Indicates whether the caption track implements accessibility features such as written descriptions of spoken dialog, music, and sounds.
  final pulumi.Input<String>? accessibility;
  /// Specifies which input caption selector to use as a caption source when generating output captions. This field should match a captionSelector name.
  final pulumi.Input<String> captionSelectorName;
  /// Additional settings for captions destination that depend on the destination type. See Destination Settings for more details.
  final pulumi.Input<ChannelEncoderSettingsCaptionDescriptionDestinationSettings>? destinationSettings;
  /// ISO 639-2 three-digit code.
  final pulumi.Input<String>? languageCode;
  /// Human readable information to indicate captions available for players (eg. English, or Spanish).
  final pulumi.Input<String>? languageDescription;
  /// Name of the caption description. Used to associate a caption description with an output. Names must be unique within an event.
  final pulumi.Input<String> name;

  /// Creates a new [ChannelEncoderSettingsCaptionDescription].
  /// [accessibility] Indicates whether the caption track implements accessibility features such as written descriptions of spoken dialog, music, and sounds.
  /// [captionSelectorName] Specifies which input caption selector to use as a caption source when generating output captions. This field should match a captionSelector name.
  /// [destinationSettings] Additional settings for captions destination that depend on the destination type. See Destination Settings for more details.
  /// [languageCode] ISO 639-2 three-digit code.
  /// [languageDescription] Human readable information to indicate captions available for players (eg. English, or Spanish).
  /// [name] Name of the caption description. Used to associate a caption description with an output. Names must be unique within an event.
  const ChannelEncoderSettingsCaptionDescription({
    this.accessibility,
    required this.captionSelectorName,
    this.destinationSettings,
    this.languageCode,
    this.languageDescription,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessibility': ?accessibility,
      'captionSelectorName': captionSelectorName,
      'destinationSettings': ?pulumi.Input.mapOptionalInputValue<ChannelEncoderSettingsCaptionDescriptionDestinationSettings, Map<String, dynamic>>(destinationSettings, (value) => value.toMap()),
      'languageCode': ?languageCode,
      'languageDescription': ?languageDescription,
      'name': name,
    };
  }

  factory ChannelEncoderSettingsCaptionDescription.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsCaptionDescription(
      accessibility: (() { final guardedValue = map['accessibility']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      captionSelectorName: pulumi.Input.fromValue(map['captionSelectorName'] as String),
      destinationSettings: (() { final guardedValue = map['destinationSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelEncoderSettingsCaptionDescriptionDestinationSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      languageCode: (() { final guardedValue = map['languageCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      languageDescription: (() { final guardedValue = map['languageDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
