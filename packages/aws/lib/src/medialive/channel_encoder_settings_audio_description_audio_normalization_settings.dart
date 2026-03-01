// ignore_for_file: unused_element, unnecessary_cast

class ChannelEncoderSettingsAudioDescriptionAudioNormalizationSettings {
  /// Audio normalization algorithm to use. itu17701 conforms to the CALM Act specification, itu17702 to the EBU R-128 specification.
  final String? algorithm;

  /// Algorithm control for the audio description.
  final String? algorithmControl;

  /// Target LKFS (loudness) to adjust volume to.
  final double? targetLkfs;

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

  factory ChannelEncoderSettingsAudioDescriptionAudioNormalizationSettings.fromMap(
    Map<String, dynamic> map,
  ) {
    return ChannelEncoderSettingsAudioDescriptionAudioNormalizationSettings(
      algorithm: map['algorithm'] == null ? null : map['algorithm'] as String,
      algorithmControl: map['algorithmControl'] == null
          ? null
          : map['algorithmControl'] as String,
      targetLkfs: map['targetLkfs'] == null
          ? null
          : map['targetLkfs'] as double,
    );
  }
}
