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

  factory ChannelEncoderSettingsAudioDescriptionCodecSettingsEac3Settings.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsAudioDescriptionCodecSettingsEac3Settings(
      attenuationControl: map['attenuationControl'] == null ? null : (map['attenuationControl'] as String).input(),
      bitrate: map['bitrate'] == null ? null : (map['bitrate'] as double).input(),
      bitstreamMode: map['bitstreamMode'] == null ? null : (map['bitstreamMode'] as String).input(),
      codingMode: map['codingMode'] == null ? null : (map['codingMode'] as String).input(),
      dcFilter: map['dcFilter'] == null ? null : (map['dcFilter'] as String).input(),
      dialnorm: map['dialnorm'] == null ? null : (map['dialnorm'] as int).input(),
      drcLine: map['drcLine'] == null ? null : (map['drcLine'] as String).input(),
      drcRf: map['drcRf'] == null ? null : (map['drcRf'] as String).input(),
      lfeControl: map['lfeControl'] == null ? null : (map['lfeControl'] as String).input(),
      lfeFilter: map['lfeFilter'] == null ? null : (map['lfeFilter'] as String).input(),
      loRoCenterMixLevel: map['loRoCenterMixLevel'] == null ? null : (map['loRoCenterMixLevel'] as double).input(),
      loRoSurroundMixLevel: map['loRoSurroundMixLevel'] == null ? null : (map['loRoSurroundMixLevel'] as double).input(),
      ltRtCenterMixLevel: map['ltRtCenterMixLevel'] == null ? null : (map['ltRtCenterMixLevel'] as double).input(),
      ltRtSurroundMixLevel: map['ltRtSurroundMixLevel'] == null ? null : (map['ltRtSurroundMixLevel'] as double).input(),
      metadataControl: map['metadataControl'] == null ? null : (map['metadataControl'] as String).input(),
      passthroughControl: map['passthroughControl'] == null ? null : (map['passthroughControl'] as String).input(),
      phaseControl: map['phaseControl'] == null ? null : (map['phaseControl'] as String).input(),
      stereoDownmix: map['stereoDownmix'] == null ? null : (map['stereoDownmix'] as String).input(),
      surroundExMode: map['surroundExMode'] == null ? null : (map['surroundExMode'] as String).input(),
      surroundMode: map['surroundMode'] == null ? null : (map['surroundMode'] as String).input(),
    );
  }
}

