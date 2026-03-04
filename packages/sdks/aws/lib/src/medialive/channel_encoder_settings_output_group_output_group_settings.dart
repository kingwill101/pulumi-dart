// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_encoder_settings_output_group_output_group_settings_archive_group_setting.dart';
import 'channel_encoder_settings_output_group_output_group_settings_frame_capture_group_settings.dart';
import 'channel_encoder_settings_output_group_output_group_settings_hls_group_settings.dart';
import 'channel_encoder_settings_output_group_output_group_settings_media_package_group_settings.dart';
import 'channel_encoder_settings_output_group_output_group_settings_ms_smooth_group_settings.dart';
import 'channel_encoder_settings_output_group_output_group_settings_rtmp_group_settings.dart';
import 'channel_encoder_settings_output_group_output_group_settings_udp_group_settings.dart';

class ChannelEncoderSettingsOutputGroupOutputGroupSettings {
  /// Archive group settings. See Archive Group Settings for more details.
  final pulumi.Input<
    List<
      ChannelEncoderSettingsOutputGroupOutputGroupSettingsArchiveGroupSetting
    >
  >?
  archiveGroupSettings;
  final pulumi.Input<
    ChannelEncoderSettingsOutputGroupOutputGroupSettingsFrameCaptureGroupSettings
  >?
  frameCaptureGroupSettings;
  final pulumi.Input<
    ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettings
  >?
  hlsGroupSettings;

  /// Media package group settings. See Media Package Group Settings for more details.
  final pulumi.Input<
    ChannelEncoderSettingsOutputGroupOutputGroupSettingsMediaPackageGroupSettings
  >?
  mediaPackageGroupSettings;
  final pulumi.Input<
    ChannelEncoderSettingsOutputGroupOutputGroupSettingsMsSmoothGroupSettings
  >?
  msSmoothGroupSettings;
  final pulumi.Input<Map<String, dynamic>>? multiplexGroupSettings;

  /// RTMP group settings. See RTMP Group Settings for more details.
  final pulumi.Input<
    ChannelEncoderSettingsOutputGroupOutputGroupSettingsRtmpGroupSettings
  >?
  rtmpGroupSettings;
  final pulumi.Input<
    ChannelEncoderSettingsOutputGroupOutputGroupSettingsUdpGroupSettings
  >?
  udpGroupSettings;

  /// Creates a new [ChannelEncoderSettingsOutputGroupOutputGroupSettings].
  /// [archiveGroupSettings] Archive group settings. See Archive Group Settings for more details.
  /// [frameCaptureGroupSettings] Optional.
  /// [hlsGroupSettings] Optional.
  /// [mediaPackageGroupSettings] Media package group settings. See Media Package Group Settings for more details.
  /// [msSmoothGroupSettings] Optional.
  /// [multiplexGroupSettings] Optional.
  /// [rtmpGroupSettings] RTMP group settings. See RTMP Group Settings for more details.
  /// [udpGroupSettings] Optional.
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
    return <String, dynamic>{
      'archiveGroupSettings':
          ?pulumi.Input.mapOptionalInputValue<
            List<
              ChannelEncoderSettingsOutputGroupOutputGroupSettingsArchiveGroupSetting
            >,
            List<Map<String, dynamic>>
          >(
            archiveGroupSettings,
            (value) =>
                pulumi.Input.encodeList<
                  ChannelEncoderSettingsOutputGroupOutputGroupSettingsArchiveGroupSetting,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'frameCaptureGroupSettings':
          ?pulumi.Input.mapOptionalInputValue<
            ChannelEncoderSettingsOutputGroupOutputGroupSettingsFrameCaptureGroupSettings,
            Map<String, dynamic>
          >(frameCaptureGroupSettings, (value) => value.toMap()),
      'hlsGroupSettings':
          ?pulumi.Input.mapOptionalInputValue<
            ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettings,
            Map<String, dynamic>
          >(hlsGroupSettings, (value) => value.toMap()),
      'mediaPackageGroupSettings':
          ?pulumi.Input.mapOptionalInputValue<
            ChannelEncoderSettingsOutputGroupOutputGroupSettingsMediaPackageGroupSettings,
            Map<String, dynamic>
          >(mediaPackageGroupSettings, (value) => value.toMap()),
      'msSmoothGroupSettings':
          ?pulumi.Input.mapOptionalInputValue<
            ChannelEncoderSettingsOutputGroupOutputGroupSettingsMsSmoothGroupSettings,
            Map<String, dynamic>
          >(msSmoothGroupSettings, (value) => value.toMap()),
      'multiplexGroupSettings': ?multiplexGroupSettings,
      'rtmpGroupSettings':
          ?pulumi.Input.mapOptionalInputValue<
            ChannelEncoderSettingsOutputGroupOutputGroupSettingsRtmpGroupSettings,
            Map<String, dynamic>
          >(rtmpGroupSettings, (value) => value.toMap()),
      'udpGroupSettings':
          ?pulumi.Input.mapOptionalInputValue<
            ChannelEncoderSettingsOutputGroupOutputGroupSettingsUdpGroupSettings,
            Map<String, dynamic>
          >(udpGroupSettings, (value) => value.toMap()),
    };
  }

  factory ChannelEncoderSettingsOutputGroupOutputGroupSettings.fromMap(
    Map<String, dynamic> map,
  ) {
    return ChannelEncoderSettingsOutputGroupOutputGroupSettings(
      archiveGroupSettings: (() {
        final guardedValue = map['archiveGroupSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            ChannelEncoderSettingsOutputGroupOutputGroupSettingsArchiveGroupSetting
          >(
            guardedValue,
            (value) =>
                ChannelEncoderSettingsOutputGroupOutputGroupSettingsArchiveGroupSetting.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      frameCaptureGroupSettings: (() {
        final guardedValue = map['frameCaptureGroupSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ChannelEncoderSettingsOutputGroupOutputGroupSettingsFrameCaptureGroupSettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      hlsGroupSettings: (() {
        final guardedValue = map['hlsGroupSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      mediaPackageGroupSettings: (() {
        final guardedValue = map['mediaPackageGroupSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ChannelEncoderSettingsOutputGroupOutputGroupSettingsMediaPackageGroupSettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      msSmoothGroupSettings: (() {
        final guardedValue = map['msSmoothGroupSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ChannelEncoderSettingsOutputGroupOutputGroupSettingsMsSmoothGroupSettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      multiplexGroupSettings: (() {
        final guardedValue = map['multiplexGroupSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      rtmpGroupSettings: (() {
        final guardedValue = map['rtmpGroupSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ChannelEncoderSettingsOutputGroupOutputGroupSettingsRtmpGroupSettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      udpGroupSettings: (() {
        final guardedValue = map['udpGroupSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ChannelEncoderSettingsOutputGroupOutputGroupSettingsUdpGroupSettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
