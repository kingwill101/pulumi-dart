// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverConditionFailoverConditionSettingsAudioSilenceSettings {
  final pulumi.Input<String> audioSelectorName;
  /// The amount of time (in milliseconds) that the active input must be silent before automatic input failover occurs. Silence is defined as audio loss or audio quieter than -50 dBFS.
  final pulumi.Input<int>? audioSilenceThresholdMsec;

  /// Creates a new [ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverConditionFailoverConditionSettingsAudioSilenceSettings].
  /// [audioSelectorName] Required.
  /// [audioSilenceThresholdMsec] The amount of time (in milliseconds) that the active input must be silent before automatic input failover occurs. Silence is defined as audio loss or audio quieter than -50 dBFS.
  const ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverConditionFailoverConditionSettingsAudioSilenceSettings({
    required this.audioSelectorName,
    this.audioSilenceThresholdMsec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audioSelectorName': audioSelectorName,
      'audioSilenceThresholdMsec': ?audioSilenceThresholdMsec,
    };
  }

  factory ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverConditionFailoverConditionSettingsAudioSilenceSettings.fromMap(Map<String, dynamic> map) {
    return ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverConditionFailoverConditionSettingsAudioSilenceSettings(
      audioSelectorName: pulumi.Input.fromValue(map['audioSelectorName'] as String),
      audioSilenceThresholdMsec: (() { final guardedValue = map['audioSilenceThresholdMsec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

