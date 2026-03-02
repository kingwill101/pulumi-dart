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
  ChannelEncoderSettingsCaptionDescription({
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
      accessibility: map['accessibility'] == null ? null : ((map['accessibility'] as String).input()).input(),
      captionSelectorName: (map['captionSelectorName'] as String).input(),
      destinationSettings: map['destinationSettings'] == null ? null : ((ChannelEncoderSettingsCaptionDescriptionDestinationSettings.fromMap((map['destinationSettings']! as Map).cast<String, dynamic>())).input()).input(),
      languageCode: map['languageCode'] == null ? null : ((map['languageCode'] as String).input()).input(),
      languageDescription: map['languageDescription'] == null ? null : ((map['languageDescription'] as String).input()).input(),
      name: (map['name'] as String).input(),
    );
  }
}

