// ignore_for_file: unused_element, unnecessary_cast


class ChannelEncoderSettingsOutputGroupOutputGroupSettingsArchiveGroupSettingArchiveCdnSettingsArchiveS3Settings {
  /// Specify the canned ACL to apply to each S3 request.
  final String? cannedAcl;

  /// Creates a new [ChannelEncoderSettingsOutputGroupOutputGroupSettingsArchiveGroupSettingArchiveCdnSettingsArchiveS3Settings].
  /// [cannedAcl] Specify the canned ACL to apply to each S3 request.
  ChannelEncoderSettingsOutputGroupOutputGroupSettingsArchiveGroupSettingArchiveCdnSettingsArchiveS3Settings({
    this.cannedAcl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cannedAcl': ?cannedAcl,
    };
  }

  factory ChannelEncoderSettingsOutputGroupOutputGroupSettingsArchiveGroupSettingArchiveCdnSettingsArchiveS3Settings.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsOutputGroupOutputGroupSettingsArchiveGroupSettingArchiveCdnSettingsArchiveS3Settings(
      cannedAcl: map['cannedAcl'] == null ? null : map['cannedAcl'] as String,
    );
  }
}

