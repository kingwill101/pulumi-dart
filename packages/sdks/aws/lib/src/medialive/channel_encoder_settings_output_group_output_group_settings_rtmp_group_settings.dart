// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelEncoderSettingsOutputGroupOutputGroupSettingsRtmpGroupSettings {
  /// List of ad markers for this output group.
  final pulumi.Input<List<String>?>? adMarkers;
  /// Authentication scheme to use when connecting with the CDN.
  final pulumi.Input<String?>? authenticationScheme;
  /// Behavior when the content cache fills up.
  final pulumi.Input<String?>? cacheFullBehavior;
  /// Cache length, in seconds, used to calculate buffer size.
  final pulumi.Input<int?>? cacheLength;
  /// Controls the types of data that pass to `onCaptionInfo` outputs.
  final pulumi.Input<String?>? captionData;
  /// Behavior of the RTMP group if the input becomes unavailable.
  final pulumi.Input<String?>? inputLossAction;
  /// Number of seconds to wait until a restart is initiated.
  final pulumi.Input<int?>? restartDelay;

  /// Creates a new [ChannelEncoderSettingsOutputGroupOutputGroupSettingsRtmpGroupSettings].
  /// [adMarkers] List of ad markers for this output group.
  /// [authenticationScheme] Authentication scheme to use when connecting with the CDN.
  /// [cacheFullBehavior] Behavior when the content cache fills up.
  /// [cacheLength] Cache length, in seconds, used to calculate buffer size.
  /// [captionData] Controls the types of data that pass to `onCaptionInfo` outputs.
  /// [inputLossAction] Behavior of the RTMP group if the input becomes unavailable.
  /// [restartDelay] Number of seconds to wait until a restart is initiated.
  const ChannelEncoderSettingsOutputGroupOutputGroupSettingsRtmpGroupSettings({
    this.adMarkers,
    this.authenticationScheme,
    this.cacheFullBehavior,
    this.cacheLength,
    this.captionData,
    this.inputLossAction,
    this.restartDelay,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adMarkers': ?adMarkers,
      'authenticationScheme': ?authenticationScheme,
      'cacheFullBehavior': ?cacheFullBehavior,
      'cacheLength': ?cacheLength,
      'captionData': ?captionData,
      'inputLossAction': ?inputLossAction,
      'restartDelay': ?restartDelay,
    };
  }

  factory ChannelEncoderSettingsOutputGroupOutputGroupSettingsRtmpGroupSettings.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsOutputGroupOutputGroupSettingsRtmpGroupSettings(
      adMarkers: (() { final guardedValue = map['adMarkers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      authenticationScheme: (() { final guardedValue = map['authenticationScheme']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cacheFullBehavior: (() { final guardedValue = map['cacheFullBehavior']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cacheLength: (() { final guardedValue = map['cacheLength']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      captionData: (() { final guardedValue = map['captionData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inputLossAction: (() { final guardedValue = map['inputLossAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      restartDelay: (() { final guardedValue = map['restartDelay']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
