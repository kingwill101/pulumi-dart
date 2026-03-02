// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelEncoderSettingsOutputGroupOutputGroupSettingsRtmpGroupSettings {
  /// The ad marker type for this output group.
  final pulumi.Input<List<String>>? adMarkers;
  /// Authentication scheme to use when connecting with CDN.
  final pulumi.Input<String>? authenticationScheme;
  /// Controls behavior when content cache fills up.
  final pulumi.Input<String>? cacheFullBehavior;
  /// Cache length in seconds, is used to calculate buffer size.
  final pulumi.Input<int>? cacheLength;
  /// Controls the types of data that passes to onCaptionInfo outputs.
  final pulumi.Input<String>? captionData;
  /// Controls the behavior of the RTMP group if input becomes unavailable.
  final pulumi.Input<String>? inputLossAction;
  /// Number of seconds to wait until a restart is initiated.
  final pulumi.Input<int>? restartDelay;

  /// Creates a new [ChannelEncoderSettingsOutputGroupOutputGroupSettingsRtmpGroupSettings].
  /// [adMarkers] The ad marker type for this output group.
  /// [authenticationScheme] Authentication scheme to use when connecting with CDN.
  /// [cacheFullBehavior] Controls behavior when content cache fills up.
  /// [cacheLength] Cache length in seconds, is used to calculate buffer size.
  /// [captionData] Controls the types of data that passes to onCaptionInfo outputs.
  /// [inputLossAction] Controls the behavior of the RTMP group if input becomes unavailable.
  /// [restartDelay] Number of seconds to wait until a restart is initiated.
  ChannelEncoderSettingsOutputGroupOutputGroupSettingsRtmpGroupSettings({
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
      adMarkers: map['adMarkers'] == null ? null : ((map['adMarkers'] as List).cast<String>()).input(),
      authenticationScheme: map['authenticationScheme'] == null ? null : (map['authenticationScheme'] as String).input(),
      cacheFullBehavior: map['cacheFullBehavior'] == null ? null : (map['cacheFullBehavior'] as String).input(),
      cacheLength: map['cacheLength'] == null ? null : (map['cacheLength'] as int).input(),
      captionData: map['captionData'] == null ? null : (map['captionData'] as String).input(),
      inputLossAction: map['inputLossAction'] == null ? null : (map['inputLossAction'] as String).input(),
      restartDelay: map['restartDelay'] == null ? null : (map['restartDelay'] as int).input(),
    );
  }
}

