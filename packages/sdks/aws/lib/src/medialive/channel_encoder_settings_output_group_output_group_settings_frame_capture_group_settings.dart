// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_encoder_settings_output_group_output_group_settings_frame_capture_group_settings_destination.dart';
import 'channel_encoder_settings_output_group_output_group_settings_frame_capture_group_settings_frame_capture_cdn_settings.dart';

class ChannelEncoderSettingsOutputGroupOutputGroupSettingsFrameCaptureGroupSettings {
  final pulumi.Input<ChannelEncoderSettingsOutputGroupOutputGroupSettingsFrameCaptureGroupSettingsDestination> destination;
  final pulumi.Input<ChannelEncoderSettingsOutputGroupOutputGroupSettingsFrameCaptureGroupSettingsFrameCaptureCdnSettings>? frameCaptureCdnSettings;

  /// Creates a new [ChannelEncoderSettingsOutputGroupOutputGroupSettingsFrameCaptureGroupSettings].
  /// [destination] Required.
  /// [frameCaptureCdnSettings] Optional.
  ChannelEncoderSettingsOutputGroupOutputGroupSettingsFrameCaptureGroupSettings({
    required this.destination,
    this.frameCaptureCdnSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destination': pulumi.Input.mapInputValue<ChannelEncoderSettingsOutputGroupOutputGroupSettingsFrameCaptureGroupSettingsDestination, Map<String, dynamic>>(destination, (value) => value.toMap()),
      'frameCaptureCdnSettings': ?pulumi.Input.mapOptionalInputValue<ChannelEncoderSettingsOutputGroupOutputGroupSettingsFrameCaptureGroupSettingsFrameCaptureCdnSettings, Map<String, dynamic>>(frameCaptureCdnSettings, (value) => value.toMap()),
    };
  }

  factory ChannelEncoderSettingsOutputGroupOutputGroupSettingsFrameCaptureGroupSettings.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsOutputGroupOutputGroupSettingsFrameCaptureGroupSettings(
      destination: (ChannelEncoderSettingsOutputGroupOutputGroupSettingsFrameCaptureGroupSettingsDestination.fromMap((map['destination'] as Map).cast<String, dynamic>())).input(),
      frameCaptureCdnSettings: map['frameCaptureCdnSettings'] == null ? null : (ChannelEncoderSettingsOutputGroupOutputGroupSettingsFrameCaptureGroupSettingsFrameCaptureCdnSettings.fromMap((map['frameCaptureCdnSettings'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

