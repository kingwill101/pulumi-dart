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
    final map = <String, dynamic>{};
    final connectionRetryIntervalValue = connectionRetryInterval;
    if (connectionRetryIntervalValue != null) {
      map['connectionRetryInterval'] = connectionRetryIntervalValue;
    }
    final filecacheDurationValue = filecacheDuration;
    if (filecacheDurationValue != null) {
      map['filecacheDuration'] = filecacheDurationValue;
    }
    final mediaStoreStorageClassValue = mediaStoreStorageClass;
    if (mediaStoreStorageClassValue != null) {
      map['mediaStoreStorageClass'] = mediaStoreStorageClassValue;
    }
    final numRetriesValue = numRetries;
    if (numRetriesValue != null) {
      map['numRetries'] = numRetriesValue;
    }
    final restartDelayValue = restartDelay;
    if (restartDelayValue != null) {
      map['restartDelay'] = restartDelayValue;
    }
    return map;
  }

  factory ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSettingHlsMediaStoreSettings.fromMap(
      Map<String, dynamic> map) {
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
      restartDelay:
          map['restartDelay'] == null ? null : map['restartDelay'] as int,
    );
  }
}
