// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelEncoderSettingsOutputGroupOutputGroupSettingsUdpGroupSettings {
  /// Behavior of last resort when input video is lost.
  final pulumi.Input<String?>? inputLossAction;
  /// ID3 frame that has the timecode.
  final pulumi.Input<String?>? timedMetadataId3Frame;
  /// Timed metadata interval, in seconds.
  final pulumi.Input<int?>? timedMetadataId3Period;

  /// Creates a new [ChannelEncoderSettingsOutputGroupOutputGroupSettingsUdpGroupSettings].
  /// [inputLossAction] Behavior of last resort when input video is lost.
  /// [timedMetadataId3Frame] ID3 frame that has the timecode.
  /// [timedMetadataId3Period] Timed metadata interval, in seconds.
  const ChannelEncoderSettingsOutputGroupOutputGroupSettingsUdpGroupSettings({
    this.inputLossAction,
    this.timedMetadataId3Frame,
    this.timedMetadataId3Period,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inputLossAction': ?inputLossAction,
      'timedMetadataId3Frame': ?timedMetadataId3Frame,
      'timedMetadataId3Period': ?timedMetadataId3Period,
    };
  }

  factory ChannelEncoderSettingsOutputGroupOutputGroupSettingsUdpGroupSettings.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsOutputGroupOutputGroupSettingsUdpGroupSettings(
      inputLossAction: (() { final guardedValue = map['inputLossAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timedMetadataId3Frame: (() { final guardedValue = map['timedMetadataId3Frame']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timedMetadataId3Period: (() { final guardedValue = map['timedMetadataId3Period']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
