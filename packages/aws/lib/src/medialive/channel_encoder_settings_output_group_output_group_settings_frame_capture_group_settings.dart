// ignore_for_file: unused_element, unnecessary_cast

import 'channel_encoder_settings_output_group_output_group_settings_frame_capture_group_settings_destination.dart';
import 'channel_encoder_settings_output_group_output_group_settings_frame_capture_group_settings_frame_capture_cdn_settings.dart';

class ChannelEncoderSettingsOutputGroupOutputGroupSettingsFrameCaptureGroupSettings {
  final ChannelEncoderSettingsOutputGroupOutputGroupSettingsFrameCaptureGroupSettingsDestination destination;
  final ChannelEncoderSettingsOutputGroupOutputGroupSettingsFrameCaptureGroupSettingsFrameCaptureCdnSettings? frameCaptureCdnSettings;

  /// Creates a new [ChannelEncoderSettingsOutputGroupOutputGroupSettingsFrameCaptureGroupSettings].
  /// [destination] Required.
  /// [frameCaptureCdnSettings] Optional.
  ChannelEncoderSettingsOutputGroupOutputGroupSettingsFrameCaptureGroupSettings({
    required this.destination,
    this.frameCaptureCdnSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destination': destination.toMap(),
      'frameCaptureCdnSettings': ?frameCaptureCdnSettings == null ? null : frameCaptureCdnSettings!.toMap(),
    };
  }

  factory ChannelEncoderSettingsOutputGroupOutputGroupSettingsFrameCaptureGroupSettings.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsOutputGroupOutputGroupSettingsFrameCaptureGroupSettings(
      destination: ChannelEncoderSettingsOutputGroupOutputGroupSettingsFrameCaptureGroupSettingsDestination.fromMap((map['destination'] as Map).cast<String, dynamic>()),
      frameCaptureCdnSettings: map['frameCaptureCdnSettings'] == null ? null : ChannelEncoderSettingsOutputGroupOutputGroupSettingsFrameCaptureGroupSettingsFrameCaptureCdnSettings.fromMap((map['frameCaptureCdnSettings'] as Map).cast<String, dynamic>()),
    );
  }
}

