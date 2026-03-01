// ignore_for_file: unused_element, unnecessary_cast

class ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSettingHlsAkamaiSettings {
  /// Number of seconds to wait before retrying connection to the flash media server if the connection is lost.
  final int? connectionRetryInterval;
  final int? filecacheDuration;
  final String? httpTransferMode;

  /// Number of retry attempts.
  final int? numRetries;

  /// Number of seconds to wait until a restart is initiated.
  final int? restartDelay;
  final String? salt;
  final String? token;

  /// Creates a new [ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSettingHlsAkamaiSettings].
  /// [connectionRetryInterval] Number of seconds to wait before retrying connection to the flash media server if the connection is lost.
  /// [filecacheDuration] Optional.
  /// [httpTransferMode] Optional.
  /// [numRetries] Number of retry attempts.
  /// [restartDelay] Number of seconds to wait until a restart is initiated.
  /// [salt] Optional.
  /// [token] Optional.
  ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSettingHlsAkamaiSettings({
    this.connectionRetryInterval,
    this.filecacheDuration,
    this.httpTransferMode,
    this.numRetries,
    this.restartDelay,
    this.salt,
    this.token,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionRetryInterval': ?connectionRetryInterval,
      'filecacheDuration': ?filecacheDuration,
      'httpTransferMode': ?httpTransferMode,
      'numRetries': ?numRetries,
      'restartDelay': ?restartDelay,
      'salt': ?salt,
      'token': ?token,
    };
  }

  factory ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSettingHlsAkamaiSettings.fromMap(
    Map<String, dynamic> map,
  ) {
    return ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSettingHlsAkamaiSettings(
      connectionRetryInterval: map['connectionRetryInterval'] == null
          ? null
          : map['connectionRetryInterval'] as int,
      filecacheDuration: map['filecacheDuration'] == null
          ? null
          : map['filecacheDuration'] as int,
      httpTransferMode: map['httpTransferMode'] == null
          ? null
          : map['httpTransferMode'] as String,
      numRetries: map['numRetries'] == null ? null : map['numRetries'] as int,
      restartDelay: map['restartDelay'] == null
          ? null
          : map['restartDelay'] as int,
      salt: map['salt'] == null ? null : map['salt'] as String,
      token: map['token'] == null ? null : map['token'] as String,
    );
  }
}
