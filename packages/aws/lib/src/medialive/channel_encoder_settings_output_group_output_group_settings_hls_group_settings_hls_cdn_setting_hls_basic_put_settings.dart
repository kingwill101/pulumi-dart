// ignore_for_file: unused_element, unnecessary_cast

class ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSettingHlsBasicPutSettings {
  /// Number of seconds to wait before retrying connection to the flash media server if the connection is lost.
  final int? connectionRetryInterval;
  final int? filecacheDuration;

  /// Number of retry attempts.
  final int? numRetries;

  /// Number of seconds to wait until a restart is initiated.
  final int? restartDelay;

  /// Creates a new [ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSettingHlsBasicPutSettings].
  /// [connectionRetryInterval] Number of seconds to wait before retrying connection to the flash media server if the connection is lost.
  /// [filecacheDuration] Optional.
  /// [numRetries] Number of retry attempts.
  /// [restartDelay] Number of seconds to wait until a restart is initiated.
  ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSettingHlsBasicPutSettings({
    this.connectionRetryInterval,
    this.filecacheDuration,
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

  factory ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSettingHlsBasicPutSettings.fromMap(
      Map<String, dynamic> map) {
    return ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSettingHlsBasicPutSettings(
      connectionRetryInterval: map['connectionRetryInterval'] == null
          ? null
          : map['connectionRetryInterval'] as int,
      filecacheDuration: map['filecacheDuration'] == null
          ? null
          : map['filecacheDuration'] as int,
      numRetries: map['numRetries'] == null ? null : map['numRetries'] as int,
      restartDelay:
          map['restartDelay'] == null ? null : map['restartDelay'] as int,
    );
  }
}
