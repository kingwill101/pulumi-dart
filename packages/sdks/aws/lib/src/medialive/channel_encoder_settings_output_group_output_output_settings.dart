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
  /// Archive output settings. See Archive Output Settings for more details.
  final pulumi.Input<ChannelEncoderSettingsOutputGroupOutputOutputSettingsArchiveOutputSettings>? archiveOutputSettings;
  final pulumi.Input<ChannelEncoderSettingsOutputGroupOutputOutputSettingsFrameCaptureOutputSettings>? frameCaptureOutputSettings;
  final pulumi.Input<ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettings>? hlsOutputSettings;
  /// Media package output settings. This can be set as an empty block.
  final pulumi.Input<Map<String, dynamic>>? mediaPackageOutputSettings;
  final pulumi.Input<ChannelEncoderSettingsOutputGroupOutputOutputSettingsMsSmoothOutputSettings>? msSmoothOutputSettings;
  /// Multiplex output settings. See Multiplex Output Settings for more details.
  final pulumi.Input<ChannelEncoderSettingsOutputGroupOutputOutputSettingsMultiplexOutputSettings>? multiplexOutputSettings;
  /// RTMP output settings. See RTMP Output Settings for more details.
  final pulumi.Input<ChannelEncoderSettingsOutputGroupOutputOutputSettingsRtmpOutputSettings>? rtmpOutputSettings;
  /// UDP output settings. See UDP Output Settings for more details.
  final pulumi.Input<ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettings>? udpOutputSettings;

  /// Creates a new [ChannelEncoderSettingsOutputGroupOutputOutputSettings].
  /// [archiveOutputSettings] Archive output settings. See Archive Output Settings for more details.
  /// [frameCaptureOutputSettings] Optional.
  /// [hlsOutputSettings] Optional.
  /// [mediaPackageOutputSettings] Media package output settings. This can be set as an empty block.
  /// [msSmoothOutputSettings] Optional.
  /// [multiplexOutputSettings] Multiplex output settings. See Multiplex Output Settings for more details.
  /// [rtmpOutputSettings] RTMP output settings. See RTMP Output Settings for more details.
  /// [udpOutputSettings] UDP output settings. See UDP Output Settings for more details.
  ChannelEncoderSettingsOutputGroupOutputOutputSettings({
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
      archiveOutputSettings: map['archiveOutputSettings'] == null ? null : ((ChannelEncoderSettingsOutputGroupOutputOutputSettingsArchiveOutputSettings.fromMap((map['archiveOutputSettings']! as Map).cast<String, dynamic>())).input()).input(),
      frameCaptureOutputSettings: map['frameCaptureOutputSettings'] == null ? null : ((ChannelEncoderSettingsOutputGroupOutputOutputSettingsFrameCaptureOutputSettings.fromMap((map['frameCaptureOutputSettings']! as Map).cast<String, dynamic>())).input()).input(),
      hlsOutputSettings: map['hlsOutputSettings'] == null ? null : ((ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettings.fromMap((map['hlsOutputSettings']! as Map).cast<String, dynamic>())).input()).input(),
      mediaPackageOutputSettings: map['mediaPackageOutputSettings'] == null ? null : (((map['mediaPackageOutputSettings'] as Map).cast<String, dynamic>()).input()).input(),
      msSmoothOutputSettings: map['msSmoothOutputSettings'] == null ? null : ((ChannelEncoderSettingsOutputGroupOutputOutputSettingsMsSmoothOutputSettings.fromMap((map['msSmoothOutputSettings']! as Map).cast<String, dynamic>())).input()).input(),
      multiplexOutputSettings: map['multiplexOutputSettings'] == null ? null : ((ChannelEncoderSettingsOutputGroupOutputOutputSettingsMultiplexOutputSettings.fromMap((map['multiplexOutputSettings']! as Map).cast<String, dynamic>())).input()).input(),
      rtmpOutputSettings: map['rtmpOutputSettings'] == null ? null : ((ChannelEncoderSettingsOutputGroupOutputOutputSettingsRtmpOutputSettings.fromMap((map['rtmpOutputSettings']! as Map).cast<String, dynamic>())).input()).input(),
      udpOutputSettings: map['udpOutputSettings'] == null ? null : ((ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettings.fromMap((map['udpOutputSettings']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

