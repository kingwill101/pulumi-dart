// ignore_for_file: unused_element, unnecessary_cast

class ChannelEncoderSettingsOutputGroupOutputGroupSettingsRtmpGroupSettings {
  /// The ad marker type for this output group.
  final List<String>? adMarkers;

  /// Authentication scheme to use when connecting with CDN.
  final String? authenticationScheme;

  /// Controls behavior when content cache fills up.
  final String? cacheFullBehavior;

  /// Cache length in seconds, is used to calculate buffer size.
  final int? cacheLength;

  /// Controls the types of data that passes to onCaptionInfo outputs.
  final String? captionData;

  /// Controls the behavior of the RTMP group if input becomes unavailable.
  final String? inputLossAction;

  /// Number of seconds to wait until a restart is initiated.
  final int? restartDelay;

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

  factory ChannelEncoderSettingsOutputGroupOutputGroupSettingsRtmpGroupSettings.fromMap(
    Map<String, dynamic> map,
  ) {
    return ChannelEncoderSettingsOutputGroupOutputGroupSettingsRtmpGroupSettings(
      adMarkers: map['adMarkers'] == null
          ? null
          : (map['adMarkers'] as List).cast<String>(),
      authenticationScheme: map['authenticationScheme'] == null
          ? null
          : map['authenticationScheme'] as String,
      cacheFullBehavior: map['cacheFullBehavior'] == null
          ? null
          : map['cacheFullBehavior'] as String,
      cacheLength: map['cacheLength'] == null
          ? null
          : map['cacheLength'] as int,
      captionData: map['captionData'] == null
          ? null
          : map['captionData'] as String,
      inputLossAction: map['inputLossAction'] == null
          ? null
          : map['inputLossAction'] as String,
      restartDelay: map['restartDelay'] == null
          ? null
          : map['restartDelay'] as int,
    );
  }
}
