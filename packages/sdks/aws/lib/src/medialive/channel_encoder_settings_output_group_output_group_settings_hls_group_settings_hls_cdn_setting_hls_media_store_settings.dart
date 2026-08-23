// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSettingHlsMediaStoreSettings {
  /// Number of seconds to wait before retrying connection to the flash media server if the connection is lost.
  final pulumi.Input<int>? connectionRetryInterval;
  final pulumi.Input<int>? filecacheDuration;
  final pulumi.Input<String>? mediaStoreStorageClass;
  /// Number of retry attempts.
  final pulumi.Input<int>? numRetries;
  /// Number of seconds to wait until a restart is initiated.
  final pulumi.Input<int>? restartDelay;

  /// Creates a new [ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSettingHlsMediaStoreSettings].
  /// [connectionRetryInterval] Number of seconds to wait before retrying connection to the flash media server if the connection is lost.
  /// [filecacheDuration] Optional.
  /// [mediaStoreStorageClass] Optional.
  /// [numRetries] Number of retry attempts.
  /// [restartDelay] Number of seconds to wait until a restart is initiated.
  const ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSettingHlsMediaStoreSettings({
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

  factory ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSettingHlsMediaStoreSettings.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSettingHlsMediaStoreSettings(
      connectionRetryInterval: (() { final guardedValue = map['connectionRetryInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      filecacheDuration: (() { final guardedValue = map['filecacheDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      mediaStoreStorageClass: (() { final guardedValue = map['mediaStoreStorageClass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      numRetries: (() { final guardedValue = map['numRetries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      restartDelay: (() { final guardedValue = map['restartDelay']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
