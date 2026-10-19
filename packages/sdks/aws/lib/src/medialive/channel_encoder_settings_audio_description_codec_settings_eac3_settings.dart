// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelEncoderSettingsAudioDescriptionCodecSettingsEac3Settings {
  /// Attenuation control.
  final pulumi.Input<String?>? attenuationControl;
  /// Average bitrate in bits/second.
  final pulumi.Input<double?>? bitrate;
  /// Bitstream mode (bsmod) for the emitted AC-3 stream.
  final pulumi.Input<String?>? bitstreamMode;
  /// Dolby Digital Plus coding mode.
  final pulumi.Input<String?>? codingMode;
  /// Whether to activate a DC filter for the channels.
  final pulumi.Input<String?>? dcFilter;
  /// Sets the dialnorm for the output.
  final pulumi.Input<int?>? dialnorm;
  /// Sets the Dolby dynamic range compression profile.
  final pulumi.Input<String?>? drcLine;
  /// Profile for heavy Dolby dynamic range compression.
  final pulumi.Input<String?>? drcRf;
  /// When set to `lfe`, the EAC3 output contains an LFE channel.
  final pulumi.Input<String?>? lfeControl;
  /// When set to `enabled`, applies a 120Hz lowpass filter to the LFE channel prior to encoding.
  final pulumi.Input<String?>? lfeFilter;
  /// Left total/right total center mix level.
  final pulumi.Input<double?>? loRoCenterMixLevel;
  /// Left total/right total surround mix level.
  final pulumi.Input<double?>? loRoSurroundMixLevel;
  /// Left only/right only center mix level.
  final pulumi.Input<double?>? ltRtCenterMixLevel;
  /// Left only/right only surround mix level.
  final pulumi.Input<double?>? ltRtSurroundMixLevel;
  /// Metadata control.
  final pulumi.Input<String?>? metadataControl;
  /// When set to `whenPossible`, input DD+ audio is passed through if present.
  final pulumi.Input<String?>? passthroughControl;
  /// Whether to invert the phase of the surround channels.
  final pulumi.Input<String?>? phaseControl;
  /// Stereo downmix preference.
  final pulumi.Input<String?>? stereoDownmix;
  /// Whether to encode the stream as Dolby Digital EX.
  final pulumi.Input<String?>? surroundExMode;
  /// Whether to encode the stream as a surround sound stream.
  final pulumi.Input<String?>? surroundMode;

  /// Creates a new [ChannelEncoderSettingsAudioDescriptionCodecSettingsEac3Settings].
  /// [attenuationControl] Attenuation control.
  /// [bitrate] Average bitrate in bits/second.
  /// [bitstreamMode] Bitstream mode (bsmod) for the emitted AC-3 stream.
  /// [codingMode] Dolby Digital Plus coding mode.
  /// [dcFilter] Whether to activate a DC filter for the channels.
  /// [dialnorm] Sets the dialnorm for the output.
  /// [drcLine] Sets the Dolby dynamic range compression profile.
  /// [drcRf] Profile for heavy Dolby dynamic range compression.
  /// [lfeControl] When set to `lfe`, the EAC3 output contains an LFE channel.
  /// [lfeFilter] When set to `enabled`, applies a 120Hz lowpass filter to the LFE channel prior to encoding.
  /// [loRoCenterMixLevel] Left total/right total center mix level.
  /// [loRoSurroundMixLevel] Left total/right total surround mix level.
  /// [ltRtCenterMixLevel] Left only/right only center mix level.
  /// [ltRtSurroundMixLevel] Left only/right only surround mix level.
  /// [metadataControl] Metadata control.
  /// [passthroughControl] When set to `whenPossible`, input DD+ audio is passed through if present.
  /// [phaseControl] Whether to invert the phase of the surround channels.
  /// [stereoDownmix] Stereo downmix preference.
  /// [surroundExMode] Whether to encode the stream as Dolby Digital EX.
  /// [surroundMode] Whether to encode the stream as a surround sound stream.
  const ChannelEncoderSettingsAudioDescriptionCodecSettingsEac3Settings({
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
      attenuationControl: (() { final guardedValue = map['attenuationControl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bitrate: (() { final guardedValue = map['bitrate']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      bitstreamMode: (() { final guardedValue = map['bitstreamMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      codingMode: (() { final guardedValue = map['codingMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dcFilter: (() { final guardedValue = map['dcFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dialnorm: (() { final guardedValue = map['dialnorm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      drcLine: (() { final guardedValue = map['drcLine']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      drcRf: (() { final guardedValue = map['drcRf']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lfeControl: (() { final guardedValue = map['lfeControl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lfeFilter: (() { final guardedValue = map['lfeFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loRoCenterMixLevel: (() { final guardedValue = map['loRoCenterMixLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      loRoSurroundMixLevel: (() { final guardedValue = map['loRoSurroundMixLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      ltRtCenterMixLevel: (() { final guardedValue = map['ltRtCenterMixLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      ltRtSurroundMixLevel: (() { final guardedValue = map['ltRtSurroundMixLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      metadataControl: (() { final guardedValue = map['metadataControl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      passthroughControl: (() { final guardedValue = map['passthroughControl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      phaseControl: (() { final guardedValue = map['phaseControl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stereoDownmix: (() { final guardedValue = map['stereoDownmix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      surroundExMode: (() { final guardedValue = map['surroundExMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      surroundMode: (() { final guardedValue = map['surroundMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
