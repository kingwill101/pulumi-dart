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
  const ChannelEncoderSettingsAudioDescriptionCodecSettingsAc3Settings({
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
      bitrate: (() { final guardedValue = map['bitrate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      bitstreamMode: (() { final guardedValue = map['bitstreamMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      codingMode: (() { final guardedValue = map['codingMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dialnorm: (() { final guardedValue = map['dialnorm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      drcProfile: (() { final guardedValue = map['drcProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lfeFilter: (() { final guardedValue = map['lfeFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadataControl: (() { final guardedValue = map['metadataControl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
