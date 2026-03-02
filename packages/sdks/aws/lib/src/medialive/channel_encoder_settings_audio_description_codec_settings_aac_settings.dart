// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelEncoderSettingsAudioDescriptionCodecSettingsAacSettings {
  /// Average bitrate in bits/second.
  final pulumi.Input<double>? bitrate;
  /// Mono, Stereo, or 5.1 channel layout.
  final pulumi.Input<String>? codingMode;
  /// Set to "broadcasterMixedAd" when input contains pre-mixed main audio + AD (narration) as a stereo pair.
  final pulumi.Input<String>? inputType;
  /// AAC profile.
  final pulumi.Input<String>? profile;
  /// The rate control mode.
  final pulumi.Input<String>? rateControlMode;
  /// Sets LATM/LOAS AAC output for raw containers.
  final pulumi.Input<String>? rawFormat;
  /// Sample rate in Hz.
  final pulumi.Input<double>? sampleRate;
  /// Use MPEG-2 AAC audio instead of MPEG-4 AAC audio for raw or MPEG-2 Transport Stream containers.
  final pulumi.Input<String>? spec;
  /// VBR Quality Level - Only used if rateControlMode is VBR.
  final pulumi.Input<String>? vbrQuality;

  /// Creates a new [ChannelEncoderSettingsAudioDescriptionCodecSettingsAacSettings].
  /// [bitrate] Average bitrate in bits/second.
  /// [codingMode] Mono, Stereo, or 5.1 channel layout.
  /// [inputType] Set to "broadcasterMixedAd" when input contains pre-mixed main audio + AD (narration) as a stereo pair.
  /// [profile] AAC profile.
  /// [rateControlMode] The rate control mode.
  /// [rawFormat] Sets LATM/LOAS AAC output for raw containers.
  /// [sampleRate] Sample rate in Hz.
  /// [spec] Use MPEG-2 AAC audio instead of MPEG-4 AAC audio for raw or MPEG-2 Transport Stream containers.
  /// [vbrQuality] VBR Quality Level - Only used if rateControlMode is VBR.
  ChannelEncoderSettingsAudioDescriptionCodecSettingsAacSettings({
    this.bitrate,
    this.codingMode,
    this.inputType,
    this.profile,
    this.rateControlMode,
    this.rawFormat,
    this.sampleRate,
    this.spec,
    this.vbrQuality,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bitrate': ?bitrate,
      'codingMode': ?codingMode,
      'inputType': ?inputType,
      'profile': ?profile,
      'rateControlMode': ?rateControlMode,
      'rawFormat': ?rawFormat,
      'sampleRate': ?sampleRate,
      'spec': ?spec,
      'vbrQuality': ?vbrQuality,
    };
  }

  factory ChannelEncoderSettingsAudioDescriptionCodecSettingsAacSettings.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsAudioDescriptionCodecSettingsAacSettings(
      bitrate: map['bitrate'] == null ? null : (map['bitrate'] as double).input(),
      codingMode: map['codingMode'] == null ? null : (map['codingMode'] as String).input(),
      inputType: map['inputType'] == null ? null : (map['inputType'] as String).input(),
      profile: map['profile'] == null ? null : (map['profile'] as String).input(),
      rateControlMode: map['rateControlMode'] == null ? null : (map['rateControlMode'] as String).input(),
      rawFormat: map['rawFormat'] == null ? null : (map['rawFormat'] as String).input(),
      sampleRate: map['sampleRate'] == null ? null : (map['sampleRate'] as double).input(),
      spec: map['spec'] == null ? null : (map['spec'] as String).input(),
      vbrQuality: map['vbrQuality'] == null ? null : (map['vbrQuality'] as String).input(),
    );
  }
}

