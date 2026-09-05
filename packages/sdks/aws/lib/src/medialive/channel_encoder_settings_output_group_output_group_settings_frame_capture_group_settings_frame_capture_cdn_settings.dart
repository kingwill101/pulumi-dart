// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_encoder_settings_output_group_output_group_settings_frame_capture_group_settings_frame_capture_cdn_settings_frame_capture_s3_settings.dart';

class ChannelEncoderSettingsOutputGroupOutputGroupSettingsFrameCaptureGroupSettingsFrameCaptureCdnSettings {
  final pulumi.Input<ChannelEncoderSettingsOutputGroupOutputGroupSettingsFrameCaptureGroupSettingsFrameCaptureCdnSettingsFrameCaptureS3Settings?>? frameCaptureS3Settings;

  /// Creates a new [ChannelEncoderSettingsOutputGroupOutputGroupSettingsFrameCaptureGroupSettingsFrameCaptureCdnSettings].
  /// [frameCaptureS3Settings] Optional.
  const ChannelEncoderSettingsOutputGroupOutputGroupSettingsFrameCaptureGroupSettingsFrameCaptureCdnSettings({
    this.frameCaptureS3Settings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'frameCaptureS3Settings': ?pulumi.Input.mapOptionalInputValue<ChannelEncoderSettingsOutputGroupOutputGroupSettingsFrameCaptureGroupSettingsFrameCaptureCdnSettingsFrameCaptureS3Settings, Map<String, dynamic>>(frameCaptureS3Settings, (value) => value.toMap()),
    };
  }

  factory ChannelEncoderSettingsOutputGroupOutputGroupSettingsFrameCaptureGroupSettingsFrameCaptureCdnSettings.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsOutputGroupOutputGroupSettingsFrameCaptureGroupSettingsFrameCaptureCdnSettings(
      frameCaptureS3Settings: (() { final guardedValue = map['frameCaptureS3Settings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelEncoderSettingsOutputGroupOutputGroupSettingsFrameCaptureGroupSettingsFrameCaptureCdnSettingsFrameCaptureS3Settings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
