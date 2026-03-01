// ignore_for_file: unused_element, unnecessary_cast

import 'channel_encoder_settings_output_group_output_output_settings_archive_output_settings.dart';
import 'channel_encoder_settings_output_group_output_output_settings_frame_capture_output_settings.dart';
import 'channel_encoder_settings_output_group_output_output_settings_hls_output_settings.dart';
import 'channel_encoder_settings_output_group_output_output_settings_ms_smooth_output_settings.dart';
import 'channel_encoder_settings_output_group_output_output_settings_multiplex_output_settings.dart';
import 'channel_encoder_settings_output_group_output_output_settings_rtmp_output_settings.dart';
import 'channel_encoder_settings_output_group_output_output_settings_udp_output_settings.dart';

class ChannelEncoderSettingsOutputGroupOutputOutputSettings {
  /// Archive output settings. See Archive Output Settings for more details.
  final ChannelEncoderSettingsOutputGroupOutputOutputSettingsArchiveOutputSettings? archiveOutputSettings;
  final ChannelEncoderSettingsOutputGroupOutputOutputSettingsFrameCaptureOutputSettings? frameCaptureOutputSettings;
  final ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettings? hlsOutputSettings;
  /// Media package output settings. This can be set as an empty block.
  final Map<String, dynamic>? mediaPackageOutputSettings;
  final ChannelEncoderSettingsOutputGroupOutputOutputSettingsMsSmoothOutputSettings? msSmoothOutputSettings;
  /// Multiplex output settings. See Multiplex Output Settings for more details.
  final ChannelEncoderSettingsOutputGroupOutputOutputSettingsMultiplexOutputSettings? multiplexOutputSettings;
  /// RTMP output settings. See RTMP Output Settings for more details.
  final ChannelEncoderSettingsOutputGroupOutputOutputSettingsRtmpOutputSettings? rtmpOutputSettings;
  /// UDP output settings. See UDP Output Settings for more details.
  final ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettings? udpOutputSettings;

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
      'archiveOutputSettings': ?archiveOutputSettings == null ? null : archiveOutputSettings!.toMap(),
      'frameCaptureOutputSettings': ?frameCaptureOutputSettings == null ? null : frameCaptureOutputSettings!.toMap(),
      'hlsOutputSettings': ?hlsOutputSettings == null ? null : hlsOutputSettings!.toMap(),
      'mediaPackageOutputSettings': ?mediaPackageOutputSettings,
      'msSmoothOutputSettings': ?msSmoothOutputSettings == null ? null : msSmoothOutputSettings!.toMap(),
      'multiplexOutputSettings': ?multiplexOutputSettings == null ? null : multiplexOutputSettings!.toMap(),
      'rtmpOutputSettings': ?rtmpOutputSettings == null ? null : rtmpOutputSettings!.toMap(),
      'udpOutputSettings': ?udpOutputSettings == null ? null : udpOutputSettings!.toMap(),
    };
  }

  factory ChannelEncoderSettingsOutputGroupOutputOutputSettings.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsOutputGroupOutputOutputSettings(
      archiveOutputSettings: map['archiveOutputSettings'] == null ? null : ChannelEncoderSettingsOutputGroupOutputOutputSettingsArchiveOutputSettings.fromMap((map['archiveOutputSettings'] as Map).cast<String, dynamic>()),
      frameCaptureOutputSettings: map['frameCaptureOutputSettings'] == null ? null : ChannelEncoderSettingsOutputGroupOutputOutputSettingsFrameCaptureOutputSettings.fromMap((map['frameCaptureOutputSettings'] as Map).cast<String, dynamic>()),
      hlsOutputSettings: map['hlsOutputSettings'] == null ? null : ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettings.fromMap((map['hlsOutputSettings'] as Map).cast<String, dynamic>()),
      mediaPackageOutputSettings: map['mediaPackageOutputSettings'] == null ? null : (map['mediaPackageOutputSettings'] as Map).cast<String, dynamic>(),
      msSmoothOutputSettings: map['msSmoothOutputSettings'] == null ? null : ChannelEncoderSettingsOutputGroupOutputOutputSettingsMsSmoothOutputSettings.fromMap((map['msSmoothOutputSettings'] as Map).cast<String, dynamic>()),
      multiplexOutputSettings: map['multiplexOutputSettings'] == null ? null : ChannelEncoderSettingsOutputGroupOutputOutputSettingsMultiplexOutputSettings.fromMap((map['multiplexOutputSettings'] as Map).cast<String, dynamic>()),
      rtmpOutputSettings: map['rtmpOutputSettings'] == null ? null : ChannelEncoderSettingsOutputGroupOutputOutputSettingsRtmpOutputSettings.fromMap((map['rtmpOutputSettings'] as Map).cast<String, dynamic>()),
      udpOutputSettings: map['udpOutputSettings'] == null ? null : ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettings.fromMap((map['udpOutputSettings'] as Map).cast<String, dynamic>()),
    );
  }
}

