// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelEncoderSettingsAudioDescriptionAudioNormalizationSettings {
  /// Audio normalization algorithm to use. itu17701 conforms to the CALM Act specification, itu17702 to the EBU R-128 specification.
  final pulumi.Input<String>? algorithm;
  /// Algorithm control for the audio description.
  final pulumi.Input<String>? algorithmControl;
  /// Target LKFS (loudness) to adjust volume to.
  final pulumi.Input<double>? targetLkfs;

  /// Creates a new [ChannelEncoderSettingsAudioDescriptionAudioNormalizationSettings].
  /// [algorithm] Audio normalization algorithm to use. itu17701 conforms to the CALM Act specification, itu17702 to the EBU R-128 specification.
  /// [algorithmControl] Algorithm control for the audio description.
  /// [targetLkfs] Target LKFS (loudness) to adjust volume to.
  ChannelEncoderSettingsAudioDescriptionAudioNormalizationSettings({
    this.algorithm,
    this.algorithmControl,
    this.targetLkfs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithm': ?algorithm,
      'algorithmControl': ?algorithmControl,
      'targetLkfs': ?targetLkfs,
    };
  }

  factory ChannelEncoderSettingsAudioDescriptionAudioNormalizationSettings.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsAudioDescriptionAudioNormalizationSettings(
      algorithm: (() { final guardedValue = map['algorithm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      algorithmControl: (() { final guardedValue = map['algorithmControl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetLkfs: (() { final guardedValue = map['targetLkfs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}

