// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverConditionFailoverConditionSettingsInputLossSettings {
  /// The amount of time (in milliseconds) that no input is detected. After that time, an input failover will occur.
  final pulumi.Input<int?>? inputLossThresholdMsec;

  /// Creates a new [ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverConditionFailoverConditionSettingsInputLossSettings].
  /// [inputLossThresholdMsec] The amount of time (in milliseconds) that no input is detected. After that time, an input failover will occur.
  const ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverConditionFailoverConditionSettingsInputLossSettings({
    this.inputLossThresholdMsec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inputLossThresholdMsec': ?inputLossThresholdMsec,
    };
  }

  factory ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverConditionFailoverConditionSettingsInputLossSettings.fromMap(Map<String, dynamic> map) {
    return ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverConditionFailoverConditionSettingsInputLossSettings(
      inputLossThresholdMsec: (() { final guardedValue = map['inputLossThresholdMsec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
