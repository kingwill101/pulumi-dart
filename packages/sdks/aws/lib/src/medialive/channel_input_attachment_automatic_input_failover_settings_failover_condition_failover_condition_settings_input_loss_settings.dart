// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverConditionFailoverConditionSettingsInputLossSettings {
  /// Amount of time, in milliseconds, that no input is detected before an input failover occurs.
  final pulumi.Input<int?>? inputLossThresholdMsec;

  /// Creates a new [ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverConditionFailoverConditionSettingsInputLossSettings].
  /// [inputLossThresholdMsec] Amount of time, in milliseconds, that no input is detected before an input failover occurs.
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
