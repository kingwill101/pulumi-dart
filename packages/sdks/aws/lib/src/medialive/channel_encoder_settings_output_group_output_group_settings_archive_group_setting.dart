// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_encoder_settings_output_group_output_group_settings_archive_group_setting_archive_cdn_settings.dart';
import 'channel_encoder_settings_output_group_output_group_settings_archive_group_setting_destination.dart';

class ChannelEncoderSettingsOutputGroupOutputGroupSettingsArchiveGroupSetting {
  /// Parameters that control the interactions with the CDN. See Archive CDN Settings for more details.
  final pulumi.Input<ChannelEncoderSettingsOutputGroupOutputGroupSettingsArchiveGroupSettingArchiveCdnSettings>? archiveCdnSettings;
  /// A director and base filename where archive files should be written. See Destination for more details.
  final pulumi.Input<ChannelEncoderSettingsOutputGroupOutputGroupSettingsArchiveGroupSettingDestination> destination;
  /// Number of seconds to write to archive file before closing and starting a new one.
  final pulumi.Input<int>? rolloverInterval;

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
      'archiveCdnSettings': ?pulumi.Input.mapOptionalInputValue<ChannelEncoderSettingsOutputGroupOutputGroupSettingsArchiveGroupSettingArchiveCdnSettings, Map<String, dynamic>>(archiveCdnSettings, (value) => value.toMap()),
      'destination': pulumi.Input.mapInputValue<ChannelEncoderSettingsOutputGroupOutputGroupSettingsArchiveGroupSettingDestination, Map<String, dynamic>>(destination, (value) => value.toMap()),
      'rolloverInterval': ?rolloverInterval,
    };
  }

  factory ChannelEncoderSettingsOutputGroupOutputGroupSettingsArchiveGroupSetting.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsOutputGroupOutputGroupSettingsArchiveGroupSetting(
      archiveCdnSettings: map['archiveCdnSettings'] == null ? null : ((ChannelEncoderSettingsOutputGroupOutputGroupSettingsArchiveGroupSettingArchiveCdnSettings.fromMap((map['archiveCdnSettings']! as Map).cast<String, dynamic>())).input()).input(),
      destination: (ChannelEncoderSettingsOutputGroupOutputGroupSettingsArchiveGroupSettingDestination.fromMap((map['destination']! as Map).cast<String, dynamic>())).input(),
      rolloverInterval: map['rolloverInterval'] == null ? null : ((map['rolloverInterval'] as int).input()).input(),
    );
  }
}

