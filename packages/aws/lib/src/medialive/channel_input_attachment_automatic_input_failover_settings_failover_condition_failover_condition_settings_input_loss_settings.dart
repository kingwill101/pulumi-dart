// ignore_for_file: unused_element, unnecessary_cast

class ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverConditionFailoverConditionSettingsInputLossSettings {
  /// The amount of time (in milliseconds) that no input is detected. After that time, an input failover will occur.
  final int? inputLossThresholdMsec;

  /// Creates a new [ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverConditionFailoverConditionSettingsInputLossSettings].
  /// [inputLossThresholdMsec] The amount of time (in milliseconds) that no input is detected. After that time, an input failover will occur.
  ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverConditionFailoverConditionSettingsInputLossSettings({
    this.inputLossThresholdMsec,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final inputLossThresholdMsecValue = inputLossThresholdMsec;
    if (inputLossThresholdMsecValue != null) {
      map['inputLossThresholdMsec'] = inputLossThresholdMsecValue;
    }
    return map;
  }

  factory ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverConditionFailoverConditionSettingsInputLossSettings.fromMap(
      Map<String, dynamic> map) {
    return ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverConditionFailoverConditionSettingsInputLossSettings(
      inputLossThresholdMsec: map['inputLossThresholdMsec'] == null
          ? null
          : map['inputLossThresholdMsec'] as int,
    );
  }
}
