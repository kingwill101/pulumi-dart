// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsAncillarySourceSettings {
  /// Specifies the number (1 to 4) of the captions channel you want to extract from the ancillary captions. If you plan to convert the ancillary captions to another format, complete this field. If you plan to choose Embedded as the captions destination in the output (to pass through all the channels in the ancillary captions), leave this field blank because MediaLive ignores the field.
  final pulumi.Input<int>? sourceAncillaryChannelNumber;

  /// Creates a new [ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsAncillarySourceSettings].
  /// [sourceAncillaryChannelNumber] Specifies the number (1 to 4) of the captions channel you want to extract from the ancillary captions. If you plan to convert the ancillary captions to another format, complete this field. If you plan to choose Embedded as the captions destination in the output (to pass through all the channels in the ancillary captions), leave this field blank because MediaLive ignores the field.
  ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsAncillarySourceSettings({
    this.sourceAncillaryChannelNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceAncillaryChannelNumber': ?sourceAncillaryChannelNumber,
    };
  }

  factory ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsAncillarySourceSettings.fromMap(Map<String, dynamic> map) {
    return ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsAncillarySourceSettings(
      sourceAncillaryChannelNumber: map['sourceAncillaryChannelNumber'] == null ? null : ((map['sourceAncillaryChannelNumber'] as int).input()).input(),
    );
  }
}

