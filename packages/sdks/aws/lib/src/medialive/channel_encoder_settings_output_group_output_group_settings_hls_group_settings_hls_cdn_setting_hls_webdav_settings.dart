// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSettingHlsWebdavSettings {
  /// Number of seconds to wait before retrying connection to the flash media server if the connection is lost.
  final pulumi.Input<int?>? connectionRetryInterval;
  final pulumi.Input<int?>? filecacheDuration;
  final pulumi.Input<String?>? httpTransferMode;
  /// Number of retry attempts.
  final pulumi.Input<int?>? numRetries;
  /// Number of seconds to wait until a restart is initiated.
  final pulumi.Input<int?>? restartDelay;

  /// Creates a new [ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSettingHlsWebdavSettings].
  /// [connectionRetryInterval] Number of seconds to wait before retrying connection to the flash media server if the connection is lost.
  /// [filecacheDuration] Optional.
  /// [httpTransferMode] Optional.
  /// [numRetries] Number of retry attempts.
  /// [restartDelay] Number of seconds to wait until a restart is initiated.
  const ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSettingHlsWebdavSettings({
    this.connectionRetryInterval,
    this.filecacheDuration,
    this.httpTransferMode,
    this.numRetries,
    this.restartDelay,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionRetryInterval': ?connectionRetryInterval,
      'filecacheDuration': ?filecacheDuration,
      'httpTransferMode': ?httpTransferMode,
      'numRetries': ?numRetries,
      'restartDelay': ?restartDelay,
    };
  }

  factory ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSettingHlsWebdavSettings.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSettingHlsWebdavSettings(
      connectionRetryInterval: (() { final guardedValue = map['connectionRetryInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      filecacheDuration: (() { final guardedValue = map['filecacheDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      httpTransferMode: (() { final guardedValue = map['httpTransferMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      numRetries: (() { final guardedValue = map['numRetries']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      restartDelay: (() { final guardedValue = map['restartDelay']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
