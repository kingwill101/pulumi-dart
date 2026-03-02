// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_encoder_settings_output_group_output_group_settings_archive_group_setting_archive_cdn_settings_archive_s3_settings.dart';

class ChannelEncoderSettingsOutputGroupOutputGroupSettingsArchiveGroupSettingArchiveCdnSettings {
  /// Archive S3 Settings. See Archive S3 Settings for more details.
  final pulumi.Input<ChannelEncoderSettingsOutputGroupOutputGroupSettingsArchiveGroupSettingArchiveCdnSettingsArchiveS3Settings>? archiveS3Settings;

  /// Creates a new [ChannelEncoderSettingsOutputGroupOutputGroupSettingsArchiveGroupSettingArchiveCdnSettings].
  /// [archiveS3Settings] Archive S3 Settings. See Archive S3 Settings for more details.
  ChannelEncoderSettingsOutputGroupOutputGroupSettingsArchiveGroupSettingArchiveCdnSettings({
    this.archiveS3Settings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'archiveS3Settings': ?pulumi.Input.mapOptionalInputValue<ChannelEncoderSettingsOutputGroupOutputGroupSettingsArchiveGroupSettingArchiveCdnSettingsArchiveS3Settings, Map<String, dynamic>>(archiveS3Settings, (value) => value.toMap()),
    };
  }

  factory ChannelEncoderSettingsOutputGroupOutputGroupSettingsArchiveGroupSettingArchiveCdnSettings.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsOutputGroupOutputGroupSettingsArchiveGroupSettingArchiveCdnSettings(
      archiveS3Settings: map['archiveS3Settings'] == null ? null : (ChannelEncoderSettingsOutputGroupOutputGroupSettingsArchiveGroupSettingArchiveCdnSettingsArchiveS3Settings.fromMap((map['archiveS3Settings'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

