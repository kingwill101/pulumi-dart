// ignore_for_file: unused_element, unnecessary_cast

class ChannelEncoderSettingsVideoDescriptionCodecSettingsH265SettingsColorSpaceSettingsHdr10Settings {
  /// Sets the MaxCLL value for HDR10.
  final int? maxCll;

  /// Sets the MaxFALL value for HDR10.
  final int? maxFall;

  /// Creates a new [ChannelEncoderSettingsVideoDescriptionCodecSettingsH265SettingsColorSpaceSettingsHdr10Settings].
  /// [maxCll] Sets the MaxCLL value for HDR10.
  /// [maxFall] Sets the MaxFALL value for HDR10.
  ChannelEncoderSettingsVideoDescriptionCodecSettingsH265SettingsColorSpaceSettingsHdr10Settings({
    this.maxCll,
    this.maxFall,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final maxCllValue = maxCll;
    if (maxCllValue != null) {
      map['maxCll'] = maxCllValue;
    }
    final maxFallValue = maxFall;
    if (maxFallValue != null) {
      map['maxFall'] = maxFallValue;
    }
    return map;
  }

  factory ChannelEncoderSettingsVideoDescriptionCodecSettingsH265SettingsColorSpaceSettingsHdr10Settings.fromMap(
      Map<String, dynamic> map) {
    return ChannelEncoderSettingsVideoDescriptionCodecSettingsH265SettingsColorSpaceSettingsHdr10Settings(
      maxCll: map['maxCll'] == null ? null : map['maxCll'] as int,
      maxFall: map['maxFall'] == null ? null : map['maxFall'] as int,
    );
  }
}
