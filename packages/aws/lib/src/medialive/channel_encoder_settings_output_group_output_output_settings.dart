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
  final ChannelEncoderSettingsOutputGroupOutputOutputSettingsArchiveOutputSettings?
      archiveOutputSettings;
  final ChannelEncoderSettingsOutputGroupOutputOutputSettingsFrameCaptureOutputSettings?
      frameCaptureOutputSettings;
  final ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettings?
      hlsOutputSettings;

  /// Media package output settings. This can be set as an empty block.
  final Map<String, dynamic>? mediaPackageOutputSettings;
  final ChannelEncoderSettingsOutputGroupOutputOutputSettingsMsSmoothOutputSettings?
      msSmoothOutputSettings;

  /// Multiplex output settings. See Multiplex Output Settings for more details.
  final ChannelEncoderSettingsOutputGroupOutputOutputSettingsMultiplexOutputSettings?
      multiplexOutputSettings;

  /// RTMP output settings. See RTMP Output Settings for more details.
  final ChannelEncoderSettingsOutputGroupOutputOutputSettingsRtmpOutputSettings?
      rtmpOutputSettings;

  /// UDP output settings. See UDP Output Settings for more details.
  final ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettings?
      udpOutputSettings;

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
    final map = <String, dynamic>{};
    final archiveOutputSettingsValue = archiveOutputSettings;
    if (archiveOutputSettingsValue != null) {
      map['archiveOutputSettings'] = archiveOutputSettingsValue.toMap();
    }
    final frameCaptureOutputSettingsValue = frameCaptureOutputSettings;
    if (frameCaptureOutputSettingsValue != null) {
      map['frameCaptureOutputSettings'] =
          frameCaptureOutputSettingsValue.toMap();
    }
    final hlsOutputSettingsValue = hlsOutputSettings;
    if (hlsOutputSettingsValue != null) {
      map['hlsOutputSettings'] = hlsOutputSettingsValue.toMap();
    }
    final mediaPackageOutputSettingsValue = mediaPackageOutputSettings;
    if (mediaPackageOutputSettingsValue != null) {
      map['mediaPackageOutputSettings'] = mediaPackageOutputSettingsValue;
    }
    final msSmoothOutputSettingsValue = msSmoothOutputSettings;
    if (msSmoothOutputSettingsValue != null) {
      map['msSmoothOutputSettings'] = msSmoothOutputSettingsValue.toMap();
    }
    final multiplexOutputSettingsValue = multiplexOutputSettings;
    if (multiplexOutputSettingsValue != null) {
      map['multiplexOutputSettings'] = multiplexOutputSettingsValue.toMap();
    }
    final rtmpOutputSettingsValue = rtmpOutputSettings;
    if (rtmpOutputSettingsValue != null) {
      map['rtmpOutputSettings'] = rtmpOutputSettingsValue.toMap();
    }
    final udpOutputSettingsValue = udpOutputSettings;
    if (udpOutputSettingsValue != null) {
      map['udpOutputSettings'] = udpOutputSettingsValue.toMap();
    }
    return map;
  }

  factory ChannelEncoderSettingsOutputGroupOutputOutputSettings.fromMap(
      Map<String, dynamic> map) {
    return ChannelEncoderSettingsOutputGroupOutputOutputSettings(
      archiveOutputSettings: map['archiveOutputSettings'] == null
          ? null
          : ChannelEncoderSettingsOutputGroupOutputOutputSettingsArchiveOutputSettings
              .fromMap((map['archiveOutputSettings'] as Map)
                  .cast<String, dynamic>()),
      frameCaptureOutputSettings: map['frameCaptureOutputSettings'] == null
          ? null
          : ChannelEncoderSettingsOutputGroupOutputOutputSettingsFrameCaptureOutputSettings
              .fromMap((map['frameCaptureOutputSettings'] as Map)
                  .cast<String, dynamic>()),
      hlsOutputSettings: map['hlsOutputSettings'] == null
          ? null
          : ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettings
              .fromMap(
                  (map['hlsOutputSettings'] as Map).cast<String, dynamic>()),
      mediaPackageOutputSettings: map['mediaPackageOutputSettings'] == null
          ? null
          : (map['mediaPackageOutputSettings'] as Map).cast<String, dynamic>(),
      msSmoothOutputSettings: map['msSmoothOutputSettings'] == null
          ? null
          : ChannelEncoderSettingsOutputGroupOutputOutputSettingsMsSmoothOutputSettings
              .fromMap((map['msSmoothOutputSettings'] as Map)
                  .cast<String, dynamic>()),
      multiplexOutputSettings: map['multiplexOutputSettings'] == null
          ? null
          : ChannelEncoderSettingsOutputGroupOutputOutputSettingsMultiplexOutputSettings
              .fromMap((map['multiplexOutputSettings'] as Map)
                  .cast<String, dynamic>()),
      rtmpOutputSettings: map['rtmpOutputSettings'] == null
          ? null
          : ChannelEncoderSettingsOutputGroupOutputOutputSettingsRtmpOutputSettings
              .fromMap(
                  (map['rtmpOutputSettings'] as Map).cast<String, dynamic>()),
      udpOutputSettings: map['udpOutputSettings'] == null
          ? null
          : ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettings
              .fromMap(
                  (map['udpOutputSettings'] as Map).cast<String, dynamic>()),
    );
  }
}
