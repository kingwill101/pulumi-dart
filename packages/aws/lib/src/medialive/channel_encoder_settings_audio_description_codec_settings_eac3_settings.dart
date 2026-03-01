// ignore_for_file: unused_element, unnecessary_cast


class ChannelEncoderSettingsAudioDescriptionCodecSettingsEac3Settings {
  /// Sets the attenuation control.
  final String? attenuationControl;
  /// Average bitrate in bits/second.
  final double? bitrate;
  /// Specifies the bitstream mode (bsmod) for the emitted AC-3 stream.
  final String? bitstreamMode;
  /// Dolby Digital Plus coding mode.
  final String? codingMode;
  final String? dcFilter;
  final int? dialnorm;
  /// Sets the Dolby dynamic range compression profile.
  final String? drcLine;
  /// Sets the profile for heavy Dolby dynamic range compression.
  final String? drcRf;
  final String? lfeControl;
  /// When set to enabled, applies a 120Hz lowpass filter to the LFE channel prior to encoding.
  final String? lfeFilter;
  final double? loRoCenterMixLevel;
  final double? loRoSurroundMixLevel;
  final double? ltRtCenterMixLevel;
  final double? ltRtSurroundMixLevel;
  /// Metadata control.
  final String? metadataControl;
  final String? passthroughControl;
  final String? phaseControl;
  final String? stereoDownmix;
  final String? surroundExMode;
  final String? surroundMode;

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
      attenuationControl: map['attenuationControl'] == null ? null : map['attenuationControl'] as String,
      bitrate: map['bitrate'] == null ? null : map['bitrate'] as double,
      bitstreamMode: map['bitstreamMode'] == null ? null : map['bitstreamMode'] as String,
      codingMode: map['codingMode'] == null ? null : map['codingMode'] as String,
      dcFilter: map['dcFilter'] == null ? null : map['dcFilter'] as String,
      dialnorm: map['dialnorm'] == null ? null : map['dialnorm'] as int,
      drcLine: map['drcLine'] == null ? null : map['drcLine'] as String,
      drcRf: map['drcRf'] == null ? null : map['drcRf'] as String,
      lfeControl: map['lfeControl'] == null ? null : map['lfeControl'] as String,
      lfeFilter: map['lfeFilter'] == null ? null : map['lfeFilter'] as String,
      loRoCenterMixLevel: map['loRoCenterMixLevel'] == null ? null : map['loRoCenterMixLevel'] as double,
      loRoSurroundMixLevel: map['loRoSurroundMixLevel'] == null ? null : map['loRoSurroundMixLevel'] as double,
      ltRtCenterMixLevel: map['ltRtCenterMixLevel'] == null ? null : map['ltRtCenterMixLevel'] as double,
      ltRtSurroundMixLevel: map['ltRtSurroundMixLevel'] == null ? null : map['ltRtSurroundMixLevel'] as double,
      metadataControl: map['metadataControl'] == null ? null : map['metadataControl'] as String,
      passthroughControl: map['passthroughControl'] == null ? null : map['passthroughControl'] as String,
      phaseControl: map['phaseControl'] == null ? null : map['phaseControl'] as String,
      stereoDownmix: map['stereoDownmix'] == null ? null : map['stereoDownmix'] as String,
      surroundExMode: map['surroundExMode'] == null ? null : map['surroundExMode'] as String,
      surroundMode: map['surroundMode'] == null ? null : map['surroundMode'] as String,
    );
  }
}

