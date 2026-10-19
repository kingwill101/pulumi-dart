// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSettingHlsAkamaiSettings {
  /// Number of seconds to wait before retrying a connection to the CDN if the connection is lost.
  final pulumi.Input<int?>? connectionRetryInterval;
  /// Size, in seconds, of the file cache for streaming outputs.
  final pulumi.Input<int?>? filecacheDuration;
  /// HTTP transfer mode.
  final pulumi.Input<String?>? httpTransferMode;
  /// Number of retry attempts that are made before the channel is put into an error state.
  final pulumi.Input<int?>? numRetries;
  /// Number of seconds to wait until a restart is initiated.
  final pulumi.Input<int?>? restartDelay;
  /// Salt for authenticated Akamai.
  final pulumi.Input<String?>? salt;
  /// Token parameter for authenticated Akamai.
  final pulumi.Input<String?>? token;

  /// Creates a new [ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSettingHlsAkamaiSettings].
  /// [connectionRetryInterval] Number of seconds to wait before retrying a connection to the CDN if the connection is lost.
  /// [filecacheDuration] Size, in seconds, of the file cache for streaming outputs.
  /// [httpTransferMode] HTTP transfer mode.
  /// [numRetries] Number of retry attempts that are made before the channel is put into an error state.
  /// [restartDelay] Number of seconds to wait until a restart is initiated.
  /// [salt] Salt for authenticated Akamai.
  /// [token] Token parameter for authenticated Akamai.
  const ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSettingHlsAkamaiSettings({
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
      connectionRetryInterval: (() { final guardedValue = map['connectionRetryInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      filecacheDuration: (() { final guardedValue = map['filecacheDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      httpTransferMode: (() { final guardedValue = map['httpTransferMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      numRetries: (() { final guardedValue = map['numRetries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      restartDelay: (() { final guardedValue = map['restartDelay']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      salt: (() { final guardedValue = map['salt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      token: (() { final guardedValue = map['token']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
