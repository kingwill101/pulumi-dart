// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSettingHlsBasicPutSettings {
  /// Number of seconds to wait before retrying connection to the flash media server if the connection is lost.
  final pulumi.Input<int>? connectionRetryInterval;
  final pulumi.Input<int>? filecacheDuration;

  /// Number of retry attempts.
  final pulumi.Input<int>? numRetries;

  /// Number of seconds to wait until a restart is initiated.
  final pulumi.Input<int>? restartDelay;

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
    return <String, dynamic>{
      'connectionRetryInterval': ?connectionRetryInterval,
      'filecacheDuration': ?filecacheDuration,
      'numRetries': ?numRetries,
      'restartDelay': ?restartDelay,
    };
  }

  factory ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSettingHlsBasicPutSettings.fromMap(
    Map<String, dynamic> map,
  ) {
    return ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSettingHlsBasicPutSettings(
      connectionRetryInterval: (() {
        final guardedValue = map['connectionRetryInterval'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      filecacheDuration: (() {
        final guardedValue = map['filecacheDuration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      numRetries: (() {
        final guardedValue = map['numRetries'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      restartDelay: (() {
        final guardedValue = map['restartDelay'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
