// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSettingHlsAkamaiSettings {
  /// Number of seconds to wait before retrying connection to the flash media server if the connection is lost.
  final pulumi.Input<int>? connectionRetryInterval;
  final pulumi.Input<int>? filecacheDuration;
  final pulumi.Input<String>? httpTransferMode;
  /// Number of retry attempts.
  final pulumi.Input<int>? numRetries;
  /// Number of seconds to wait until a restart is initiated.
  final pulumi.Input<int>? restartDelay;
  final pulumi.Input<String>? salt;
  final pulumi.Input<String>? token;

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

  factory ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSettingHlsAkamaiSettings.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSettingHlsAkamaiSettings(
      connectionRetryInterval: map['connectionRetryInterval'] == null ? null : ((map['connectionRetryInterval'] as int).input()).input(),
      filecacheDuration: map['filecacheDuration'] == null ? null : ((map['filecacheDuration'] as int).input()).input(),
      httpTransferMode: map['httpTransferMode'] == null ? null : ((map['httpTransferMode'] as String).input()).input(),
      numRetries: map['numRetries'] == null ? null : ((map['numRetries'] as int).input()).input(),
      restartDelay: map['restartDelay'] == null ? null : ((map['restartDelay'] as int).input()).input(),
      salt: map['salt'] == null ? null : ((map['salt'] as String).input()).input(),
      token: map['token'] == null ? null : ((map['token'] as String).input()).input(),
    );
  }
}

