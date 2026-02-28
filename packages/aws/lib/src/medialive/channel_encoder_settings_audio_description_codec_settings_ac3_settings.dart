// ignore_for_file: unused_element, unnecessary_cast

class ChannelEncoderSettingsAudioDescriptionCodecSettingsAc3Settings {
  /// Average bitrate in bits/second.
  final double? bitrate;

  /// Specifies the bitstream mode (bsmod) for the emitted AC-3 stream.
  final String? bitstreamMode;

  /// Dolby Digital coding mode.
  final String? codingMode;

  /// Sets the dialnorm of the output.
  final int? dialnorm;

  /// If set to filmStandard, adds dynamic range compression signaling to the output bitstream as defined in the Dolby Digital specification.
  final String? drcProfile;

  /// When set to enabled, applies a 120Hz lowpass filter to the LFE channel prior to encoding.
  final String? lfeFilter;

  /// Metadata control.
  final String? metadataControl;

  /// Creates a new [ChannelEncoderSettingsAudioDescriptionCodecSettingsAc3Settings].
  /// [bitrate] Average bitrate in bits/second.
  /// [bitstreamMode] Specifies the bitstream mode (bsmod) for the emitted AC-3 stream.
  /// [codingMode] Dolby Digital coding mode.
  /// [dialnorm] Sets the dialnorm of the output.
  /// [drcProfile] If set to filmStandard, adds dynamic range compression signaling to the output bitstream as defined in the Dolby Digital specification.
  /// [lfeFilter] When set to enabled, applies a 120Hz lowpass filter to the LFE channel prior to encoding.
  /// [metadataControl] Metadata control.
  ChannelEncoderSettingsAudioDescriptionCodecSettingsAc3Settings({
    this.bitrate,
    this.bitstreamMode,
    this.codingMode,
    this.dialnorm,
    this.drcProfile,
    this.lfeFilter,
    this.metadataControl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
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
    final dialnormValue = dialnorm;
    if (dialnormValue != null) {
      map['dialnorm'] = dialnormValue;
    }
    final drcProfileValue = drcProfile;
    if (drcProfileValue != null) {
      map['drcProfile'] = drcProfileValue;
    }
    final lfeFilterValue = lfeFilter;
    if (lfeFilterValue != null) {
      map['lfeFilter'] = lfeFilterValue;
    }
    final metadataControlValue = metadataControl;
    if (metadataControlValue != null) {
      map['metadataControl'] = metadataControlValue;
    }
    return map;
  }

  factory ChannelEncoderSettingsAudioDescriptionCodecSettingsAc3Settings.fromMap(
      Map<String, dynamic> map) {
    return ChannelEncoderSettingsAudioDescriptionCodecSettingsAc3Settings(
      bitrate: map['bitrate'] == null ? null : map['bitrate'] as double,
      bitstreamMode:
          map['bitstreamMode'] == null ? null : map['bitstreamMode'] as String,
      codingMode:
          map['codingMode'] == null ? null : map['codingMode'] as String,
      dialnorm: map['dialnorm'] == null ? null : map['dialnorm'] as int,
      drcProfile:
          map['drcProfile'] == null ? null : map['drcProfile'] as String,
      lfeFilter: map['lfeFilter'] == null ? null : map['lfeFilter'] as String,
      metadataControl: map['metadataControl'] == null
          ? null
          : map['metadataControl'] as String,
    );
  }
}
