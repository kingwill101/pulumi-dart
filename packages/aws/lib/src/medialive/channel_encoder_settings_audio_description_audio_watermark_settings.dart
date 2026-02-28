// ignore_for_file: unused_element, unnecessary_cast

import 'channel_encoder_settings_audio_description_audio_watermark_settings_nielsen_watermarks_settings.dart';

class ChannelEncoderSettingsAudioDescriptionAudioWatermarkSettings {
  final ChannelEncoderSettingsAudioDescriptionAudioWatermarkSettingsNielsenWatermarksSettings?
      nielsenWatermarksSettings;

  /// Creates a new [ChannelEncoderSettingsAudioDescriptionAudioWatermarkSettings].
  /// [nielsenWatermarksSettings] Optional.
  ChannelEncoderSettingsAudioDescriptionAudioWatermarkSettings({
    this.nielsenWatermarksSettings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nielsenWatermarksSettingsValue = nielsenWatermarksSettings;
    if (nielsenWatermarksSettingsValue != null) {
      map['nielsenWatermarksSettings'] = nielsenWatermarksSettingsValue.toMap();
    }
    return map;
  }

  factory ChannelEncoderSettingsAudioDescriptionAudioWatermarkSettings.fromMap(
      Map<String, dynamic> map) {
    return ChannelEncoderSettingsAudioDescriptionAudioWatermarkSettings(
      nielsenWatermarksSettings: map['nielsenWatermarksSettings'] == null
          ? null
          : ChannelEncoderSettingsAudioDescriptionAudioWatermarkSettingsNielsenWatermarksSettings
              .fromMap((map['nielsenWatermarksSettings'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
