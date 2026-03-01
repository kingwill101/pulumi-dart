// ignore_for_file: unused_element, unnecessary_cast

class ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSettingHlsMediaStoreSettings {
  /// Number of seconds to wait before retrying connection to the flash media server if the connection is lost.
  final int? connectionRetryInterval;
  final int? filecacheDuration;
  final String? mediaStoreStorageClass;

  /// Number of retry attempts.
  final int? numRetries;

  /// Number of seconds to wait until a restart is initiated.
  final int? restartDelay;

  /// Creates a new [ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSettingHlsMediaStoreSettings].
  /// [connectionRetryInterval] Number of seconds to wait before retrying connection to the flash media server if the connection is lost.
  /// [filecacheDuration] Optional.
  /// [mediaStoreStorageClass] Optional.
  /// [numRetries] Number of retry attempts.
  /// [restartDelay] Number of seconds to wait until a restart is initiated.
  ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSettingHlsMediaStoreSettings({
    this.connectionRetryInterval,
    this.filecacheDuration,
    this.mediaStoreStorageClass,
    this.numRetries,
    this.restartDelay,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionRetryInterval': ?connectionRetryInterval,
      'filecacheDuration': ?filecacheDuration,
      'mediaStoreStorageClass': ?mediaStoreStorageClass,
      'numRetries': ?numRetries,
      'restartDelay': ?restartDelay,
    };
  }

  factory ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSettingHlsMediaStoreSettings.fromMap(
    Map<String, dynamic> map,
  ) {
    return ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSettingHlsMediaStoreSettings(
      connectionRetryInterval: map['connectionRetryInterval'] == null
          ? null
          : map['connectionRetryInterval'] as int,
      filecacheDuration: map['filecacheDuration'] == null
          ? null
          : map['filecacheDuration'] as int,
      mediaStoreStorageClass: map['mediaStoreStorageClass'] == null
          ? null
          : map['mediaStoreStorageClass'] as String,
      numRetries: map['numRetries'] == null ? null : map['numRetries'] as int,
      restartDelay: map['restartDelay'] == null
          ? null
          : map['restartDelay'] as int,
    );
  }
}
