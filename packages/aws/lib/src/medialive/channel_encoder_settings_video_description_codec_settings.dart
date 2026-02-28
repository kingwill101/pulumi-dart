// ignore_for_file: unused_element, unnecessary_cast

import 'channel_encoder_settings_video_description_codec_settings_frame_capture_settings.dart';
import 'channel_encoder_settings_video_description_codec_settings_h264_settings.dart';
import 'channel_encoder_settings_video_description_codec_settings_h265_settings.dart';

class ChannelEncoderSettingsVideoDescriptionCodecSettings {
  /// Frame capture settings. See Frame Capture Settings for more details.
  final ChannelEncoderSettingsVideoDescriptionCodecSettingsFrameCaptureSettings? frameCaptureSettings;
  /// H264 settings. See H264 Settings for more details.
  final ChannelEncoderSettingsVideoDescriptionCodecSettingsH264Settings? h264Settings;
  final ChannelEncoderSettingsVideoDescriptionCodecSettingsH265Settings? h265Settings;

  /// Creates a new [ChannelEncoderSettingsVideoDescriptionCodecSettings].
  /// [frameCaptureSettings] Frame capture settings. See Frame Capture Settings for more details.
  /// [h264Settings] H264 settings. See H264 Settings for more details.
  /// [h265Settings] Optional.
  ChannelEncoderSettingsVideoDescriptionCodecSettings({
    this.frameCaptureSettings,
    this.h264Settings,
    this.h265Settings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'frameCaptureSettings': ?frameCaptureSettings == null ? null : frameCaptureSettings!.toMap(),
      'h264Settings': ?h264Settings == null ? null : h264Settings!.toMap(),
      'h265Settings': ?h265Settings == null ? null : h265Settings!.toMap(),
    };
  }

  factory ChannelEncoderSettingsVideoDescriptionCodecSettings.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsVideoDescriptionCodecSettings(
      frameCaptureSettings: map['frameCaptureSettings'] == null ? null : ChannelEncoderSettingsVideoDescriptionCodecSettingsFrameCaptureSettings.fromMap((map['frameCaptureSettings'] as Map).cast<String, dynamic>()),
      h264Settings: map['h264Settings'] == null ? null : ChannelEncoderSettingsVideoDescriptionCodecSettingsH264Settings.fromMap((map['h264Settings'] as Map).cast<String, dynamic>()),
      h265Settings: map['h265Settings'] == null ? null : ChannelEncoderSettingsVideoDescriptionCodecSettingsH265Settings.fromMap((map['h265Settings'] as Map).cast<String, dynamic>()),
    );
  }
}

