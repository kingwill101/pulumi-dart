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
    final map = <String, dynamic>{};
    final adMarkersValue = adMarkers;
    if (adMarkersValue != null) {
      map['adMarkers'] = adMarkersValue;
    }
    final authenticationSchemeValue = authenticationScheme;
    if (authenticationSchemeValue != null) {
      map['authenticationScheme'] = authenticationSchemeValue;
    }
    final cacheFullBehaviorValue = cacheFullBehavior;
    if (cacheFullBehaviorValue != null) {
      map['cacheFullBehavior'] = cacheFullBehaviorValue;
    }
    final cacheLengthValue = cacheLength;
    if (cacheLengthValue != null) {
      map['cacheLength'] = cacheLengthValue;
    }
    final captionDataValue = captionData;
    if (captionDataValue != null) {
      map['captionData'] = captionDataValue;
    }
    final inputLossActionValue = inputLossAction;
    if (inputLossActionValue != null) {
      map['inputLossAction'] = inputLossActionValue;
    }
    final restartDelayValue = restartDelay;
    if (restartDelayValue != null) {
      map['restartDelay'] = restartDelayValue;
    }
    return map;
  }

  factory ChannelEncoderSettingsOutputGroupOutputGroupSettingsRtmpGroupSettings.fromMap(
      Map<String, dynamic> map) {
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
      cacheLength:
          map['cacheLength'] == null ? null : map['cacheLength'] as int,
      captionData:
          map['captionData'] == null ? null : map['captionData'] as String,
      inputLossAction: map['inputLossAction'] == null
          ? null
          : map['inputLossAction'] as String,
      restartDelay:
          map['restartDelay'] == null ? null : map['restartDelay'] as int,
    );
  }
}
