// ignore_for_file: unused_element, unnecessary_cast

import 'channel_encoder_settings_output_group_output_group_settings_archive_group_setting_archive_cdn_settings.dart';
import 'channel_encoder_settings_output_group_output_group_settings_archive_group_setting_destination.dart';

class ChannelEncoderSettingsOutputGroupOutputGroupSettingsArchiveGroupSetting {
  /// Parameters that control the interactions with the CDN. See Archive CDN Settings for more details.
  final ChannelEncoderSettingsOutputGroupOutputGroupSettingsArchiveGroupSettingArchiveCdnSettings? archiveCdnSettings;
  /// A director and base filename where archive files should be written. See Destination for more details.
  final ChannelEncoderSettingsOutputGroupOutputGroupSettingsArchiveGroupSettingDestination destination;
  /// Number of seconds to write to archive file before closing and starting a new one.
  final int? rolloverInterval;

  /// Creates a new [ChannelEncoderSettingsOutputGroupOutputGroupSettingsArchiveGroupSetting].
  /// [archiveCdnSettings] Parameters that control the interactions with the CDN. See Archive CDN Settings for more details.
  /// [destination] A director and base filename where archive files should be written. See Destination for more details.
  /// [rolloverInterval] Number of seconds to write to archive file before closing and starting a new one.
  ChannelEncoderSettingsOutputGroupOutputGroupSettingsArchiveGroupSetting({
    this.archiveCdnSettings,
    required this.destination,
    this.rolloverInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'archiveCdnSettings': ?archiveCdnSettings == null ? null : archiveCdnSettings!.toMap(),
      'destination': destination.toMap(),
      'rolloverInterval': ?rolloverInterval,
    };
  }

  factory ChannelEncoderSettingsOutputGroupOutputGroupSettingsArchiveGroupSetting.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsOutputGroupOutputGroupSettingsArchiveGroupSetting(
      archiveCdnSettings: map['archiveCdnSettings'] == null ? null : ChannelEncoderSettingsOutputGroupOutputGroupSettingsArchiveGroupSettingArchiveCdnSettings.fromMap((map['archiveCdnSettings'] as Map).cast<String, dynamic>()),
      destination: ChannelEncoderSettingsOutputGroupOutputGroupSettingsArchiveGroupSettingDestination.fromMap((map['destination'] as Map).cast<String, dynamic>()),
      rolloverInterval: map['rolloverInterval'] == null ? null : map['rolloverInterval'] as int,
    );
  }
}

