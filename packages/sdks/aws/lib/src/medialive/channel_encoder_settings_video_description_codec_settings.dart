// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_encoder_settings_video_description_codec_settings_frame_capture_settings.dart';
import 'channel_encoder_settings_video_description_codec_settings_h264_settings.dart';
import 'channel_encoder_settings_video_description_codec_settings_h265_settings.dart';

class ChannelEncoderSettingsVideoDescriptionCodecSettings {
  /// Frame capture settings. See Frame Capture Settings for more details.
  final pulumi.Input<ChannelEncoderSettingsVideoDescriptionCodecSettingsFrameCaptureSettings>? frameCaptureSettings;
  /// H264 settings. See H264 Settings for more details.
  final pulumi.Input<ChannelEncoderSettingsVideoDescriptionCodecSettingsH264Settings>? h264Settings;
  final pulumi.Input<ChannelEncoderSettingsVideoDescriptionCodecSettingsH265Settings>? h265Settings;

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
      'frameCaptureSettings': ?pulumi.Input.mapOptionalInputValue<ChannelEncoderSettingsVideoDescriptionCodecSettingsFrameCaptureSettings, Map<String, dynamic>>(frameCaptureSettings, (value) => value.toMap()),
      'h264Settings': ?pulumi.Input.mapOptionalInputValue<ChannelEncoderSettingsVideoDescriptionCodecSettingsH264Settings, Map<String, dynamic>>(h264Settings, (value) => value.toMap()),
      'h265Settings': ?pulumi.Input.mapOptionalInputValue<ChannelEncoderSettingsVideoDescriptionCodecSettingsH265Settings, Map<String, dynamic>>(h265Settings, (value) => value.toMap()),
    };
  }

  factory ChannelEncoderSettingsVideoDescriptionCodecSettings.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsVideoDescriptionCodecSettings(
      frameCaptureSettings: map['frameCaptureSettings'] == null ? null : ((ChannelEncoderSettingsVideoDescriptionCodecSettingsFrameCaptureSettings.fromMap((map['frameCaptureSettings']! as Map).cast<String, dynamic>())).input()).input(),
      h264Settings: map['h264Settings'] == null ? null : ((ChannelEncoderSettingsVideoDescriptionCodecSettingsH264Settings.fromMap((map['h264Settings']! as Map).cast<String, dynamic>())).input()).input(),
      h265Settings: map['h265Settings'] == null ? null : ((ChannelEncoderSettingsVideoDescriptionCodecSettingsH265Settings.fromMap((map['h265Settings']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

