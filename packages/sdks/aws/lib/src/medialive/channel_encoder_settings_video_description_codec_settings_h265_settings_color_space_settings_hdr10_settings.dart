// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelEncoderSettingsVideoDescriptionCodecSettingsH265SettingsColorSpaceSettingsHdr10Settings {
  /// Sets the MaxCLL value for HDR10.
  final pulumi.Input<int>? maxCll;

  /// Sets the MaxFALL value for HDR10.
  final pulumi.Input<int>? maxFall;

  /// Creates a new [ChannelEncoderSettingsVideoDescriptionCodecSettingsH265SettingsColorSpaceSettingsHdr10Settings].
  /// [maxCll] Sets the MaxCLL value for HDR10.
  /// [maxFall] Sets the MaxFALL value for HDR10.
  ChannelEncoderSettingsVideoDescriptionCodecSettingsH265SettingsColorSpaceSettingsHdr10Settings({
    this.maxCll,
    this.maxFall,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'maxCll': ?maxCll, 'maxFall': ?maxFall};
  }

  factory ChannelEncoderSettingsVideoDescriptionCodecSettingsH265SettingsColorSpaceSettingsHdr10Settings.fromMap(
    Map<String, dynamic> map,
  ) {
    return ChannelEncoderSettingsVideoDescriptionCodecSettingsH265SettingsColorSpaceSettingsHdr10Settings(
      maxCll: (() {
        final guardedValue = map['maxCll'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      maxFall: (() {
        final guardedValue = map['maxFall'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
