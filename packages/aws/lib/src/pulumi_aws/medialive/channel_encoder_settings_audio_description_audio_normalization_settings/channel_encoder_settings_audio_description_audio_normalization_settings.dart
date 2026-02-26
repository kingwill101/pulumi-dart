// ignore_for_file: unused_element, unnecessary_cast

class ChannelEncoderSettingsAudioDescriptionAudioNormalizationSettings {
  /// Audio normalization algorithm to use. itu17701 conforms to the CALM Act specification, itu17702 to the EBU R-128 specification.
  final String? algorithm;

  /// Algorithm control for the audio description.
  final String? algorithmControl;

  /// Target LKFS (loudness) to adjust volume to.
  final double? targetLkfs;

  ChannelEncoderSettingsAudioDescriptionAudioNormalizationSettings({
    this.algorithm,
    this.algorithmControl,
    this.targetLkfs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final algorithmValue = algorithm;
    if (algorithmValue != null) {
      map['algorithm'] = algorithmValue;
    }
    final algorithmControlValue = algorithmControl;
    if (algorithmControlValue != null) {
      map['algorithmControl'] = algorithmControlValue;
    }
    final targetLkfsValue = targetLkfs;
    if (targetLkfsValue != null) {
      map['targetLkfs'] = targetLkfsValue;
    }
    return map;
  }

  factory ChannelEncoderSettingsAudioDescriptionAudioNormalizationSettings.fromMap(
      Map<String, dynamic> map) {
    return ChannelEncoderSettingsAudioDescriptionAudioNormalizationSettings(
      algorithm: map['algorithm'] == null ? null : map['algorithm'] as String,
      algorithmControl: map['algorithmControl'] == null
          ? null
          : map['algorithmControl'] as String,
      targetLkfs:
          map['targetLkfs'] == null ? null : map['targetLkfs'] as double,
    );
  }
}
