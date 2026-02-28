// ignore_for_file: unused_element, unnecessary_cast

class ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverConditionFailoverConditionSettingsAudioSilenceSettings {
  final String audioSelectorName;

  /// The amount of time (in milliseconds) that the active input must be silent before automatic input failover occurs. Silence is defined as audio loss or audio quieter than -50 dBFS.
  final int? audioSilenceThresholdMsec;

  /// Creates a new [ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverConditionFailoverConditionSettingsAudioSilenceSettings].
  /// [audioSelectorName] Required.
  /// [audioSilenceThresholdMsec] The amount of time (in milliseconds) that the active input must be silent before automatic input failover occurs. Silence is defined as audio loss or audio quieter than -50 dBFS.
  ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverConditionFailoverConditionSettingsAudioSilenceSettings({
    required this.audioSelectorName,
    this.audioSilenceThresholdMsec,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['audioSelectorName'] = audioSelectorName;
    final audioSilenceThresholdMsecValue = audioSilenceThresholdMsec;
    if (audioSilenceThresholdMsecValue != null) {
      map['audioSilenceThresholdMsec'] = audioSilenceThresholdMsecValue;
    }
    return map;
  }

  factory ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverConditionFailoverConditionSettingsAudioSilenceSettings.fromMap(
      Map<String, dynamic> map) {
    return ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverConditionFailoverConditionSettingsAudioSilenceSettings(
      audioSelectorName: map['audioSelectorName'] as String,
      audioSilenceThresholdMsec: map['audioSilenceThresholdMsec'] == null
          ? null
          : map['audioSilenceThresholdMsec'] as int,
    );
  }
}
