// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelEncoderSettingsAudioDescriptionCodecSettingsAc3Settings {
  /// Average bitrate in bits/second.
  final pulumi.Input<double>? bitrate;
  /// Specifies the bitstream mode (bsmod) for the emitted AC-3 stream.
  final pulumi.Input<String>? bitstreamMode;
  /// Dolby Digital coding mode.
  final pulumi.Input<String>? codingMode;
  /// Sets the dialnorm of the output.
  final pulumi.Input<int>? dialnorm;
  /// If set to filmStandard, adds dynamic range compression signaling to the output bitstream as defined in the Dolby Digital specification.
  final pulumi.Input<String>? drcProfile;
  /// When set to enabled, applies a 120Hz lowpass filter to the LFE channel prior to encoding.
  final pulumi.Input<String>? lfeFilter;
  /// Metadata control.
  final pulumi.Input<String>? metadataControl;

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
    return <String, dynamic>{
      'bitrate': ?bitrate,
      'bitstreamMode': ?bitstreamMode,
      'codingMode': ?codingMode,
      'dialnorm': ?dialnorm,
      'drcProfile': ?drcProfile,
      'lfeFilter': ?lfeFilter,
      'metadataControl': ?metadataControl,
    };
  }

  factory ChannelEncoderSettingsAudioDescriptionCodecSettingsAc3Settings.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsAudioDescriptionCodecSettingsAc3Settings(
      bitrate: map['bitrate'] == null ? null : (map['bitrate'] as double).input(),
      bitstreamMode: map['bitstreamMode'] == null ? null : (map['bitstreamMode'] as String).input(),
      codingMode: map['codingMode'] == null ? null : (map['codingMode'] as String).input(),
      dialnorm: map['dialnorm'] == null ? null : (map['dialnorm'] as int).input(),
      drcProfile: map['drcProfile'] == null ? null : (map['drcProfile'] as String).input(),
      lfeFilter: map['lfeFilter'] == null ? null : (map['lfeFilter'] as String).input(),
      metadataControl: map['metadataControl'] == null ? null : (map['metadataControl'] as String).input(),
    );
  }
}

