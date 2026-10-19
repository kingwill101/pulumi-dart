// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_encoder_settings_output_group_output_output_settings_archive_output_settings.dart';
import 'channel_encoder_settings_output_group_output_output_settings_frame_capture_output_settings.dart';
import 'channel_encoder_settings_output_group_output_output_settings_hls_output_settings.dart';
import 'channel_encoder_settings_output_group_output_output_settings_ms_smooth_output_settings.dart';
import 'channel_encoder_settings_output_group_output_output_settings_multiplex_output_settings.dart';
import 'channel_encoder_settings_output_group_output_output_settings_rtmp_output_settings.dart';
import 'channel_encoder_settings_output_group_output_output_settings_udp_output_settings.dart';

class ChannelEncoderSettingsOutputGroupOutputOutputSettings {
  /// Archive output settings. See `archiveOutputSettings` Block for details.
  final pulumi.Input<ChannelEncoderSettingsOutputGroupOutputOutputSettingsArchiveOutputSettings?>? archiveOutputSettings;
  /// Frame capture output settings. See `frameCaptureOutputSettings` Block for details.
  final pulumi.Input<ChannelEncoderSettingsOutputGroupOutputOutputSettingsFrameCaptureOutputSettings?>? frameCaptureOutputSettings;
  /// HLS output settings. See `hlsOutputSettings` Block for details.
  final pulumi.Input<ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettings?>? hlsOutputSettings;
  /// Media package output settings. Can be set as an empty block.
  final pulumi.Input<Map<String, dynamic>?>? mediaPackageOutputSettings;
  /// Microsoft Smooth output settings. See `msSmoothOutputSettings` Block for details.
  final pulumi.Input<ChannelEncoderSettingsOutputGroupOutputOutputSettingsMsSmoothOutputSettings?>? msSmoothOutputSettings;
  /// Multiplex output settings. See `multiplexOutputSettings` Block for details.
  final pulumi.Input<ChannelEncoderSettingsOutputGroupOutputOutputSettingsMultiplexOutputSettings?>? multiplexOutputSettings;
  /// RTMP output settings. See `rtmpOutputSettings` Block for details.
  final pulumi.Input<ChannelEncoderSettingsOutputGroupOutputOutputSettingsRtmpOutputSettings?>? rtmpOutputSettings;
  /// UDP output settings. See `udpOutputSettings` Block for details.
  final pulumi.Input<ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettings?>? udpOutputSettings;

  /// Creates a new [ChannelEncoderSettingsOutputGroupOutputOutputSettings].
  /// [archiveOutputSettings] Archive output settings. See `archiveOutputSettings` Block for details.
  /// [frameCaptureOutputSettings] Frame capture output settings. See `frameCaptureOutputSettings` Block for details.
  /// [hlsOutputSettings] HLS output settings. See `hlsOutputSettings` Block for details.
  /// [mediaPackageOutputSettings] Media package output settings. Can be set as an empty block.
  /// [msSmoothOutputSettings] Microsoft Smooth output settings. See `msSmoothOutputSettings` Block for details.
  /// [multiplexOutputSettings] Multiplex output settings. See `multiplexOutputSettings` Block for details.
  /// [rtmpOutputSettings] RTMP output settings. See `rtmpOutputSettings` Block for details.
  /// [udpOutputSettings] UDP output settings. See `udpOutputSettings` Block for details.
  const ChannelEncoderSettingsOutputGroupOutputOutputSettings({
    this.archiveOutputSettings,
    this.frameCaptureOutputSettings,
    this.hlsOutputSettings,
    this.mediaPackageOutputSettings,
    this.msSmoothOutputSettings,
    this.multiplexOutputSettings,
    this.rtmpOutputSettings,
    this.udpOutputSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'archiveOutputSettings': ?pulumi.Input.mapOptionalInputValue<ChannelEncoderSettingsOutputGroupOutputOutputSettingsArchiveOutputSettings, Map<String, dynamic>>(archiveOutputSettings, (value) => value.toMap()),
      'frameCaptureOutputSettings': ?pulumi.Input.mapOptionalInputValue<ChannelEncoderSettingsOutputGroupOutputOutputSettingsFrameCaptureOutputSettings, Map<String, dynamic>>(frameCaptureOutputSettings, (value) => value.toMap()),
      'hlsOutputSettings': ?pulumi.Input.mapOptionalInputValue<ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettings, Map<String, dynamic>>(hlsOutputSettings, (value) => value.toMap()),
      'mediaPackageOutputSettings': ?mediaPackageOutputSettings,
      'msSmoothOutputSettings': ?pulumi.Input.mapOptionalInputValue<ChannelEncoderSettingsOutputGroupOutputOutputSettingsMsSmoothOutputSettings, Map<String, dynamic>>(msSmoothOutputSettings, (value) => value.toMap()),
      'multiplexOutputSettings': ?pulumi.Input.mapOptionalInputValue<ChannelEncoderSettingsOutputGroupOutputOutputSettingsMultiplexOutputSettings, Map<String, dynamic>>(multiplexOutputSettings, (value) => value.toMap()),
      'rtmpOutputSettings': ?pulumi.Input.mapOptionalInputValue<ChannelEncoderSettingsOutputGroupOutputOutputSettingsRtmpOutputSettings, Map<String, dynamic>>(rtmpOutputSettings, (value) => value.toMap()),
      'udpOutputSettings': ?pulumi.Input.mapOptionalInputValue<ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettings, Map<String, dynamic>>(udpOutputSettings, (value) => value.toMap()),
    };
  }

  factory ChannelEncoderSettingsOutputGroupOutputOutputSettings.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsOutputGroupOutputOutputSettings(
      archiveOutputSettings: (() { final guardedValue = map['archiveOutputSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelEncoderSettingsOutputGroupOutputOutputSettingsArchiveOutputSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      frameCaptureOutputSettings: (() { final guardedValue = map['frameCaptureOutputSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelEncoderSettingsOutputGroupOutputOutputSettingsFrameCaptureOutputSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hlsOutputSettings: (() { final guardedValue = map['hlsOutputSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mediaPackageOutputSettings: (() { final guardedValue = map['mediaPackageOutputSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      msSmoothOutputSettings: (() { final guardedValue = map['msSmoothOutputSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelEncoderSettingsOutputGroupOutputOutputSettingsMsSmoothOutputSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      multiplexOutputSettings: (() { final guardedValue = map['multiplexOutputSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelEncoderSettingsOutputGroupOutputOutputSettingsMultiplexOutputSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rtmpOutputSettings: (() { final guardedValue = map['rtmpOutputSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelEncoderSettingsOutputGroupOutputOutputSettingsRtmpOutputSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      udpOutputSettings: (() { final guardedValue = map['udpOutputSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
