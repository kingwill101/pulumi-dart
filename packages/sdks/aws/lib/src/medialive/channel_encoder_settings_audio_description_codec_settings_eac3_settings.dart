// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelEncoderSettingsAudioDescriptionCodecSettingsEac3Settings {
  /// Sets the attenuation control.
  final pulumi.Input<String>? attenuationControl;

  /// Average bitrate in bits/second.
  final pulumi.Input<double>? bitrate;

  /// Specifies the bitstream mode (bsmod) for the emitted AC-3 stream.
  final pulumi.Input<String>? bitstreamMode;

  /// Dolby Digital Plus coding mode.
  final pulumi.Input<String>? codingMode;
  final pulumi.Input<String>? dcFilter;
  final pulumi.Input<int>? dialnorm;

  /// Sets the Dolby dynamic range compression profile.
  final pulumi.Input<String>? drcLine;

  /// Sets the profile for heavy Dolby dynamic range compression.
  final pulumi.Input<String>? drcRf;
  final pulumi.Input<String>? lfeControl;

  /// When set to enabled, applies a 120Hz lowpass filter to the LFE channel prior to encoding.
  final pulumi.Input<String>? lfeFilter;
  final pulumi.Input<double>? loRoCenterMixLevel;
  final pulumi.Input<double>? loRoSurroundMixLevel;
  final pulumi.Input<double>? ltRtCenterMixLevel;
  final pulumi.Input<double>? ltRtSurroundMixLevel;

  /// Metadata control.
  final pulumi.Input<String>? metadataControl;
  final pulumi.Input<String>? passthroughControl;
  final pulumi.Input<String>? phaseControl;
  final pulumi.Input<String>? stereoDownmix;
  final pulumi.Input<String>? surroundExMode;
  final pulumi.Input<String>? surroundMode;

  /// Creates a new [ChannelEncoderSettingsAudioDescriptionCodecSettingsEac3Settings].
  /// [attenuationControl] Sets the attenuation control.
  /// [bitrate] Average bitrate in bits/second.
  /// [bitstreamMode] Specifies the bitstream mode (bsmod) for the emitted AC-3 stream.
  /// [codingMode] Dolby Digital Plus coding mode.
  /// [dcFilter] Optional.
  /// [dialnorm] Optional.
  /// [drcLine] Sets the Dolby dynamic range compression profile.
  /// [drcRf] Sets the profile for heavy Dolby dynamic range compression.
  /// [lfeControl] Optional.
  /// [lfeFilter] When set to enabled, applies a 120Hz lowpass filter to the LFE channel prior to encoding.
  /// [loRoCenterMixLevel] Optional.
  /// [loRoSurroundMixLevel] Optional.
  /// [ltRtCenterMixLevel] Optional.
  /// [ltRtSurroundMixLevel] Optional.
  /// [metadataControl] Metadata control.
  /// [passthroughControl] Optional.
  /// [phaseControl] Optional.
  /// [stereoDownmix] Optional.
  /// [surroundExMode] Optional.
  /// [surroundMode] Optional.
  ChannelEncoderSettingsAudioDescriptionCodecSettingsEac3Settings({
    this.attenuationControl,
    this.bitrate,
    this.bitstreamMode,
    this.codingMode,
    this.dcFilter,
    this.dialnorm,
    this.drcLine,
    this.drcRf,
    this.lfeControl,
    this.lfeFilter,
    this.loRoCenterMixLevel,
    this.loRoSurroundMixLevel,
    this.ltRtCenterMixLevel,
    this.ltRtSurroundMixLevel,
    this.metadataControl,
    this.passthroughControl,
    this.phaseControl,
    this.stereoDownmix,
    this.surroundExMode,
    this.surroundMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attenuationControl': ?attenuationControl,
      'bitrate': ?bitrate,
      'bitstreamMode': ?bitstreamMode,
      'codingMode': ?codingMode,
      'dcFilter': ?dcFilter,
      'dialnorm': ?dialnorm,
      'drcLine': ?drcLine,
      'drcRf': ?drcRf,
      'lfeControl': ?lfeControl,
      'lfeFilter': ?lfeFilter,
      'loRoCenterMixLevel': ?loRoCenterMixLevel,
      'loRoSurroundMixLevel': ?loRoSurroundMixLevel,
      'ltRtCenterMixLevel': ?ltRtCenterMixLevel,
      'ltRtSurroundMixLevel': ?ltRtSurroundMixLevel,
      'metadataControl': ?metadataControl,
      'passthroughControl': ?passthroughControl,
      'phaseControl': ?phaseControl,
      'stereoDownmix': ?stereoDownmix,
      'surroundExMode': ?surroundExMode,
      'surroundMode': ?surroundMode,
    };
  }

  factory ChannelEncoderSettingsAudioDescriptionCodecSettingsEac3Settings.fromMap(
    Map<String, dynamic> map,
  ) {
    return ChannelEncoderSettingsAudioDescriptionCodecSettingsEac3Settings(
      attenuationControl: (() {
        final guardedValue = map['attenuationControl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      bitrate: (() {
        final guardedValue = map['bitrate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      bitstreamMode: (() {
        final guardedValue = map['bitstreamMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      codingMode: (() {
        final guardedValue = map['codingMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dcFilter: (() {
        final guardedValue = map['dcFilter'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dialnorm: (() {
        final guardedValue = map['dialnorm'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      drcLine: (() {
        final guardedValue = map['drcLine'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      drcRf: (() {
        final guardedValue = map['drcRf'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      lfeControl: (() {
        final guardedValue = map['lfeControl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      lfeFilter: (() {
        final guardedValue = map['lfeFilter'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      loRoCenterMixLevel: (() {
        final guardedValue = map['loRoCenterMixLevel'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      loRoSurroundMixLevel: (() {
        final guardedValue = map['loRoSurroundMixLevel'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      ltRtCenterMixLevel: (() {
        final guardedValue = map['ltRtCenterMixLevel'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      ltRtSurroundMixLevel: (() {
        final guardedValue = map['ltRtSurroundMixLevel'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      metadataControl: (() {
        final guardedValue = map['metadataControl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      passthroughControl: (() {
        final guardedValue = map['passthroughControl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      phaseControl: (() {
        final guardedValue = map['phaseControl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      stereoDownmix: (() {
        final guardedValue = map['stereoDownmix'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      surroundExMode: (() {
        final guardedValue = map['surroundExMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      surroundMode: (() {
        final guardedValue = map['surroundMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
