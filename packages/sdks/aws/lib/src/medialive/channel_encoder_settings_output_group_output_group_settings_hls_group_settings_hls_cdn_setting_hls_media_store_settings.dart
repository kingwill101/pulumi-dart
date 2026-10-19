// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSettingHlsMediaStoreSettings {
  /// Number of seconds to wait before retrying a connection to the CDN if the connection is lost.
  final pulumi.Input<int?>? connectionRetryInterval;
  /// Size, in seconds, of the file cache for streaming outputs.
  final pulumi.Input<int?>? filecacheDuration;
  /// MediaStore storage class to use.
  final pulumi.Input<String?>? mediaStoreStorageClass;
  /// Number of retry attempts that are made before the channel is put into an error state.
  final pulumi.Input<int?>? numRetries;
  /// Number of seconds to wait until a restart is initiated.
  final pulumi.Input<int?>? restartDelay;

  /// Creates a new [ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSettingHlsMediaStoreSettings].
  /// [connectionRetryInterval] Number of seconds to wait before retrying a connection to the CDN if the connection is lost.
  /// [filecacheDuration] Size, in seconds, of the file cache for streaming outputs.
  /// [mediaStoreStorageClass] MediaStore storage class to use.
  /// [numRetries] Number of retry attempts that are made before the channel is put into an error state.
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
      connectionRetryInterval: (() { final guardedValue = map['connectionRetryInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      filecacheDuration: (() { final guardedValue = map['filecacheDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      mediaStoreStorageClass: (() { final guardedValue = map['mediaStoreStorageClass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      numRetries: (() { final guardedValue = map['numRetries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      restartDelay: (() { final guardedValue = map['restartDelay']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
