// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsAncillarySourceSettings {
  /// Captions channel, from 1 to 4, to extract from the ancillary captions. Complete this field if you plan to convert the ancillary captions to another format. Leave blank if you plan to choose Embedded as the captions destination in the output, because MediaLive ignores the field.
  final pulumi.Input<int?>? sourceAncillaryChannelNumber;

  /// Creates a new [ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsAncillarySourceSettings].
  /// [sourceAncillaryChannelNumber] Captions channel, from 1 to 4, to extract from the ancillary captions. Complete this field if you plan to convert the ancillary captions to another format. Leave blank if you plan to choose Embedded as the captions destination in the output, because MediaLive ignores the field.
  const ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsAncillarySourceSettings({
    this.sourceAncillaryChannelNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceAncillaryChannelNumber': ?sourceAncillaryChannelNumber,
    };
  }

  factory ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsAncillarySourceSettings.fromMap(Map<String, dynamic> map) {
    return ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsAncillarySourceSettings(
      sourceAncillaryChannelNumber: (() { final guardedValue = map['sourceAncillaryChannelNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
