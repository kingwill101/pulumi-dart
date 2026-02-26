// ignore_for_file: unused_element, unnecessary_cast

import '../channel_encoder_settings_output_group_output_group_settings_frame_capture_group_settings_frame_capture_cdn_settings_frame_capture_s3_settings/channel_encoder_settings_output_group_output_group_settings_frame_capture_group_settings_frame_capture_cdn_settings_frame_capture_s3_settings.dart';

class ChannelEncoderSettingsOutputGroupOutputGroupSettingsFrameCaptureGroupSettingsFrameCaptureCdnSettings {
  final ChannelEncoderSettingsOutputGroupOutputGroupSettingsFrameCaptureGroupSettingsFrameCaptureCdnSettingsFrameCaptureS3Settings?
      frameCaptureS3Settings;

  ChannelEncoderSettingsOutputGroupOutputGroupSettingsFrameCaptureGroupSettingsFrameCaptureCdnSettings({
    this.frameCaptureS3Settings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final frameCaptureS3SettingsValue = frameCaptureS3Settings;
    if (frameCaptureS3SettingsValue != null) {
      map['frameCaptureS3Settings'] = frameCaptureS3SettingsValue.toMap();
    }
    return map;
  }

  factory ChannelEncoderSettingsOutputGroupOutputGroupSettingsFrameCaptureGroupSettingsFrameCaptureCdnSettings.fromMap(
      Map<String, dynamic> map) {
    return ChannelEncoderSettingsOutputGroupOutputGroupSettingsFrameCaptureGroupSettingsFrameCaptureCdnSettings(
      frameCaptureS3Settings: map['frameCaptureS3Settings'] == null
          ? null
          : ChannelEncoderSettingsOutputGroupOutputGroupSettingsFrameCaptureGroupSettingsFrameCaptureCdnSettingsFrameCaptureS3Settings
              .fromMap((map['frameCaptureS3Settings'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
