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
      bitrate: (() { final guardedValue = map['bitrate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      codingMode: (() { final guardedValue = map['codingMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inputType: (() { final guardedValue = map['inputType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      profile: (() { final guardedValue = map['profile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rateControlMode: (() { final guardedValue = map['rateControlMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rawFormat: (() { final guardedValue = map['rawFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sampleRate: (() { final guardedValue = map['sampleRate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      spec: (() { final guardedValue = map['spec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vbrQuality: (() { final guardedValue = map['vbrQuality']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

