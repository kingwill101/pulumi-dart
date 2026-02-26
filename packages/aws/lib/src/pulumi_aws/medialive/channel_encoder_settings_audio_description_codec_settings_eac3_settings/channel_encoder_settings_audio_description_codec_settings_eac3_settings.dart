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
    final map = <String, dynamic>{};
    final attenuationControlValue = attenuationControl;
    if (attenuationControlValue != null) {
      map['attenuationControl'] = attenuationControlValue;
    }
    final bitrateValue = bitrate;
    if (bitrateValue != null) {
      map['bitrate'] = bitrateValue;
    }
    final bitstreamModeValue = bitstreamMode;
    if (bitstreamModeValue != null) {
      map['bitstreamMode'] = bitstreamModeValue;
    }
    final codingModeValue = codingMode;
    if (codingModeValue != null) {
      map['codingMode'] = codingModeValue;
    }
    final dcFilterValue = dcFilter;
    if (dcFilterValue != null) {
      map['dcFilter'] = dcFilterValue;
    }
    final dialnormValue = dialnorm;
    if (dialnormValue != null) {
      map['dialnorm'] = dialnormValue;
    }
    final drcLineValue = drcLine;
    if (drcLineValue != null) {
      map['drcLine'] = drcLineValue;
    }
    final drcRfValue = drcRf;
    if (drcRfValue != null) {
      map['drcRf'] = drcRfValue;
    }
    final lfeControlValue = lfeControl;
    if (lfeControlValue != null) {
      map['lfeControl'] = lfeControlValue;
    }
    final lfeFilterValue = lfeFilter;
    if (lfeFilterValue != null) {
      map['lfeFilter'] = lfeFilterValue;
    }
    final loRoCenterMixLevelValue = loRoCenterMixLevel;
    if (loRoCenterMixLevelValue != null) {
      map['loRoCenterMixLevel'] = loRoCenterMixLevelValue;
    }
    final loRoSurroundMixLevelValue = loRoSurroundMixLevel;
    if (loRoSurroundMixLevelValue != null) {
      map['loRoSurroundMixLevel'] = loRoSurroundMixLevelValue;
    }
    final ltRtCenterMixLevelValue = ltRtCenterMixLevel;
    if (ltRtCenterMixLevelValue != null) {
      map['ltRtCenterMixLevel'] = ltRtCenterMixLevelValue;
    }
    final ltRtSurroundMixLevelValue = ltRtSurroundMixLevel;
    if (ltRtSurroundMixLevelValue != null) {
      map['ltRtSurroundMixLevel'] = ltRtSurroundMixLevelValue;
    }
    final metadataControlValue = metadataControl;
    if (metadataControlValue != null) {
      map['metadataControl'] = metadataControlValue;
    }
    final passthroughControlValue = passthroughControl;
    if (passthroughControlValue != null) {
      map['passthroughControl'] = passthroughControlValue;
    }
    final phaseControlValue = phaseControl;
    if (phaseControlValue != null) {
      map['phaseControl'] = phaseControlValue;
    }
    final stereoDownmixValue = stereoDownmix;
    if (stereoDownmixValue != null) {
      map['stereoDownmix'] = stereoDownmixValue;
    }
    final surroundExModeValue = surroundExMode;
    if (surroundExModeValue != null) {
      map['surroundExMode'] = surroundExModeValue;
    }
    final surroundModeValue = surroundMode;
    if (surroundModeValue != null) {
      map['surroundMode'] = surroundModeValue;
    }
    return map;
  }

  factory ChannelEncoderSettingsAudioDescriptionCodecSettingsEac3Settings.fromMap(
      Map<String, dynamic> map) {
    return ChannelEncoderSettingsAudioDescriptionCodecSettingsEac3Settings(
      attenuationControl: map['attenuationControl'] == null
          ? null
          : map['attenuationControl'] as String,
      bitrate: map['bitrate'] == null ? null : map['bitrate'] as double,
      bitstreamMode:
          map['bitstreamMode'] == null ? null : map['bitstreamMode'] as String,
      codingMode:
          map['codingMode'] == null ? null : map['codingMode'] as String,
      dcFilter: map['dcFilter'] == null ? null : map['dcFilter'] as String,
      dialnorm: map['dialnorm'] == null ? null : map['dialnorm'] as int,
      drcLine: map['drcLine'] == null ? null : map['drcLine'] as String,
      drcRf: map['drcRf'] == null ? null : map['drcRf'] as String,
      lfeControl:
          map['lfeControl'] == null ? null : map['lfeControl'] as String,
      lfeFilter: map['lfeFilter'] == null ? null : map['lfeFilter'] as String,
      loRoCenterMixLevel: map['loRoCenterMixLevel'] == null
          ? null
          : map['loRoCenterMixLevel'] as double,
      loRoSurroundMixLevel: map['loRoSurroundMixLevel'] == null
          ? null
          : map['loRoSurroundMixLevel'] as double,
      ltRtCenterMixLevel: map['ltRtCenterMixLevel'] == null
          ? null
          : map['ltRtCenterMixLevel'] as double,
      ltRtSurroundMixLevel: map['ltRtSurroundMixLevel'] == null
          ? null
          : map['ltRtSurroundMixLevel'] as double,
      metadataControl: map['metadataControl'] == null
          ? null
          : map['metadataControl'] as String,
      passthroughControl: map['passthroughControl'] == null
          ? null
          : map['passthroughControl'] as String,
      phaseControl:
          map['phaseControl'] == null ? null : map['phaseControl'] as String,
      stereoDownmix:
          map['stereoDownmix'] == null ? null : map['stereoDownmix'] as String,
      surroundExMode: map['surroundExMode'] == null
          ? null
          : map['surroundExMode'] as String,
      surroundMode:
          map['surroundMode'] == null ? null : map['surroundMode'] as String,
    );
  }
}
