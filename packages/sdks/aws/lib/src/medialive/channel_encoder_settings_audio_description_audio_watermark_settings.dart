// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_encoder_settings_audio_description_audio_watermark_settings_nielsen_watermarks_settings.dart';

class ChannelEncoderSettingsAudioDescriptionAudioWatermarkSettings {
  final pulumi.Input<ChannelEncoderSettingsAudioDescriptionAudioWatermarkSettingsNielsenWatermarksSettings>? nielsenWatermarksSettings;

  /// Creates a new [ChannelEncoderSettingsAudioDescriptionAudioWatermarkSettings].
  /// [nielsenWatermarksSettings] Optional.
  ChannelEncoderSettingsAudioDescriptionAudioWatermarkSettings({
    this.nielsenWatermarksSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nielsenWatermarksSettings': ?pulumi.Input.mapOptionalInputValue<ChannelEncoderSettingsAudioDescriptionAudioWatermarkSettingsNielsenWatermarksSettings, Map<String, dynamic>>(nielsenWatermarksSettings, (value) => value.toMap()),
    };
  }

  factory ChannelEncoderSettingsAudioDescriptionAudioWatermarkSettings.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsAudioDescriptionAudioWatermarkSettings(
      nielsenWatermarksSettings: map['nielsenWatermarksSettings'] == null ? null : ((ChannelEncoderSettingsAudioDescriptionAudioWatermarkSettingsNielsenWatermarksSettings.fromMap((map['nielsenWatermarksSettings']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

