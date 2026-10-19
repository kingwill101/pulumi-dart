// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverConditionFailoverConditionSettingsVideoBlackSettings {
  /// Threshold below which MediaLive considers a pixel to be black, expressed as a decimal fraction of white. For example, `0.1` means 10% white (90% black). For the input to be considered black, every pixel in a frame must be below this threshold. The range is 0.0 to 1.0, with any number of decimal places.
  final pulumi.Input<double?>? blackDetectThreshold;
  /// Amount of time, in milliseconds, that the active input must be black before automatic input failover occurs.
  final pulumi.Input<int?>? videoBlackThresholdMsec;

  /// Creates a new [ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverConditionFailoverConditionSettingsVideoBlackSettings].
  /// [blackDetectThreshold] Threshold below which MediaLive considers a pixel to be black, expressed as a decimal fraction of white. For example, `0.1` means 10% white (90% black). For the input to be considered black, every pixel in a frame must be below this threshold. The range is 0.0 to 1.0, with any number of decimal places.
  /// [videoBlackThresholdMsec] Amount of time, in milliseconds, that the active input must be black before automatic input failover occurs.
  const ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverConditionFailoverConditionSettingsVideoBlackSettings({
    this.blackDetectThreshold,
    this.videoBlackThresholdMsec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blackDetectThreshold': ?blackDetectThreshold,
      'videoBlackThresholdMsec': ?videoBlackThresholdMsec,
    };
  }

  factory ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverConditionFailoverConditionSettingsVideoBlackSettings.fromMap(Map<String, dynamic> map) {
    return ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverConditionFailoverConditionSettingsVideoBlackSettings(
      blackDetectThreshold: (() { final guardedValue = map['blackDetectThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      videoBlackThresholdMsec: (() { final guardedValue = map['videoBlackThresholdMsec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
