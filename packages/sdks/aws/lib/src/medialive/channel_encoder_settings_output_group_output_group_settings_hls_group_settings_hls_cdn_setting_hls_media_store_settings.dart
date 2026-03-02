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

  factory ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSettingHlsMediaStoreSettings.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSettingHlsMediaStoreSettings(
      connectionRetryInterval: map['connectionRetryInterval'] == null ? null : ((map['connectionRetryInterval'] as int).input()).input(),
      filecacheDuration: map['filecacheDuration'] == null ? null : ((map['filecacheDuration'] as int).input()).input(),
      mediaStoreStorageClass: map['mediaStoreStorageClass'] == null ? null : ((map['mediaStoreStorageClass'] as String).input()).input(),
      numRetries: map['numRetries'] == null ? null : ((map['numRetries'] as int).input()).input(),
      restartDelay: map['restartDelay'] == null ? null : ((map['restartDelay'] as int).input()).input(),
    );
  }
}

