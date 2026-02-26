// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../channel_encoder_settings_output_group_output_group_settings_archive_group_setting/channel_encoder_settings_output_group_output_group_settings_archive_group_setting.dart';
import '../channel_encoder_settings_output_group_output_group_settings_frame_capture_group_settings/channel_encoder_settings_output_group_output_group_settings_frame_capture_group_settings.dart';
import '../channel_encoder_settings_output_group_output_group_settings_hls_group_settings/channel_encoder_settings_output_group_output_group_settings_hls_group_settings.dart';
import '../channel_encoder_settings_output_group_output_group_settings_media_package_group_settings/channel_encoder_settings_output_group_output_group_settings_media_package_group_settings.dart';
import '../channel_encoder_settings_output_group_output_group_settings_ms_smooth_group_settings/channel_encoder_settings_output_group_output_group_settings_ms_smooth_group_settings.dart';
import '../channel_encoder_settings_output_group_output_group_settings_rtmp_group_settings/channel_encoder_settings_output_group_output_group_settings_rtmp_group_settings.dart';
import '../channel_encoder_settings_output_group_output_group_settings_udp_group_settings/channel_encoder_settings_output_group_output_group_settings_udp_group_settings.dart';

class ChannelEncoderSettingsOutputGroupOutputGroupSettings {
  /// Archive group settings. See Archive Group Settings for more details.
  final List<
          ChannelEncoderSettingsOutputGroupOutputGroupSettingsArchiveGroupSetting>?
      archiveGroupSettings;
  final ChannelEncoderSettingsOutputGroupOutputGroupSettingsFrameCaptureGroupSettings?
      frameCaptureGroupSettings;
  final ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettings?
      hlsGroupSettings;

  /// Media package group settings. See Media Package Group Settings for more details.
  final ChannelEncoderSettingsOutputGroupOutputGroupSettingsMediaPackageGroupSettings?
      mediaPackageGroupSettings;
  final ChannelEncoderSettingsOutputGroupOutputGroupSettingsMsSmoothGroupSettings?
      msSmoothGroupSettings;
  final Map<String, dynamic>? multiplexGroupSettings;

  /// RTMP group settings. See RTMP Group Settings for more details.
  final ChannelEncoderSettingsOutputGroupOutputGroupSettingsRtmpGroupSettings?
      rtmpGroupSettings;
  final ChannelEncoderSettingsOutputGroupOutputGroupSettingsUdpGroupSettings?
      udpGroupSettings;

  ChannelEncoderSettingsOutputGroupOutputGroupSettings({
    this.archiveGroupSettings,
    this.frameCaptureGroupSettings,
    this.hlsGroupSettings,
    this.mediaPackageGroupSettings,
    this.msSmoothGroupSettings,
    this.multiplexGroupSettings,
    this.rtmpGroupSettings,
    this.udpGroupSettings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final archiveGroupSettingsValue = archiveGroupSettings;
    if (archiveGroupSettingsValue != null) {
      map['archiveGroupSettings'] = Input.encodeList<
          ChannelEncoderSettingsOutputGroupOutputGroupSettingsArchiveGroupSetting,
          Map<String,
              dynamic>>(archiveGroupSettingsValue, (value) => value.toMap());
    }
    final frameCaptureGroupSettingsValue = frameCaptureGroupSettings;
    if (frameCaptureGroupSettingsValue != null) {
      map['frameCaptureGroupSettings'] = frameCaptureGroupSettingsValue.toMap();
    }
    final hlsGroupSettingsValue = hlsGroupSettings;
    if (hlsGroupSettingsValue != null) {
      map['hlsGroupSettings'] = hlsGroupSettingsValue.toMap();
    }
    final mediaPackageGroupSettingsValue = mediaPackageGroupSettings;
    if (mediaPackageGroupSettingsValue != null) {
      map['mediaPackageGroupSettings'] = mediaPackageGroupSettingsValue.toMap();
    }
    final msSmoothGroupSettingsValue = msSmoothGroupSettings;
    if (msSmoothGroupSettingsValue != null) {
      map['msSmoothGroupSettings'] = msSmoothGroupSettingsValue.toMap();
    }
    final multiplexGroupSettingsValue = multiplexGroupSettings;
    if (multiplexGroupSettingsValue != null) {
      map['multiplexGroupSettings'] = multiplexGroupSettingsValue;
    }
    final rtmpGroupSettingsValue = rtmpGroupSettings;
    if (rtmpGroupSettingsValue != null) {
      map['rtmpGroupSettings'] = rtmpGroupSettingsValue.toMap();
    }
    final udpGroupSettingsValue = udpGroupSettings;
    if (udpGroupSettingsValue != null) {
      map['udpGroupSettings'] = udpGroupSettingsValue.toMap();
    }
    return map;
  }

  factory ChannelEncoderSettingsOutputGroupOutputGroupSettings.fromMap(
      Map<String, dynamic> map) {
    return ChannelEncoderSettingsOutputGroupOutputGroupSettings(
      archiveGroupSettings: map['archiveGroupSettings'] == null
          ? null
          : Input.decodeList<
                  ChannelEncoderSettingsOutputGroupOutputGroupSettingsArchiveGroupSetting>(
              map['archiveGroupSettings'],
              (value) =>
                  ChannelEncoderSettingsOutputGroupOutputGroupSettingsArchiveGroupSetting
                      .fromMap((value as Map).cast<String, dynamic>())),
      frameCaptureGroupSettings: map['frameCaptureGroupSettings'] == null
          ? null
          : ChannelEncoderSettingsOutputGroupOutputGroupSettingsFrameCaptureGroupSettings
              .fromMap((map['frameCaptureGroupSettings'] as Map)
                  .cast<String, dynamic>()),
      hlsGroupSettings: map['hlsGroupSettings'] == null
          ? null
          : ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettings
              .fromMap(
                  (map['hlsGroupSettings'] as Map).cast<String, dynamic>()),
      mediaPackageGroupSettings: map['mediaPackageGroupSettings'] == null
          ? null
          : ChannelEncoderSettingsOutputGroupOutputGroupSettingsMediaPackageGroupSettings
              .fromMap((map['mediaPackageGroupSettings'] as Map)
                  .cast<String, dynamic>()),
      msSmoothGroupSettings: map['msSmoothGroupSettings'] == null
          ? null
          : ChannelEncoderSettingsOutputGroupOutputGroupSettingsMsSmoothGroupSettings
              .fromMap((map['msSmoothGroupSettings'] as Map)
                  .cast<String, dynamic>()),
      multiplexGroupSettings: map['multiplexGroupSettings'] == null
          ? null
          : (map['multiplexGroupSettings'] as Map).cast<String, dynamic>(),
      rtmpGroupSettings: map['rtmpGroupSettings'] == null
          ? null
          : ChannelEncoderSettingsOutputGroupOutputGroupSettingsRtmpGroupSettings
              .fromMap(
                  (map['rtmpGroupSettings'] as Map).cast<String, dynamic>()),
      udpGroupSettings: map['udpGroupSettings'] == null
          ? null
          : ChannelEncoderSettingsOutputGroupOutputGroupSettingsUdpGroupSettings
              .fromMap(
                  (map['udpGroupSettings'] as Map).cast<String, dynamic>()),
    );
  }
}
