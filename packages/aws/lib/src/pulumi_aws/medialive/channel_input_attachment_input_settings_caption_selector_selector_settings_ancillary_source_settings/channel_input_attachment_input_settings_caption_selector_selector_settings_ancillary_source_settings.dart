// ignore_for_file: unused_element, unnecessary_cast

class ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsAncillarySourceSettings {
  /// Specifies the number (1 to 4) of the captions channel you want to extract from the ancillary captions. If you plan to convert the ancillary captions to another format, complete this field. If you plan to choose Embedded as the captions destination in the output (to pass through all the channels in the ancillary captions), leave this field blank because MediaLive ignores the field.
  final int? sourceAncillaryChannelNumber;

  ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsAncillarySourceSettings({
    this.sourceAncillaryChannelNumber,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final sourceAncillaryChannelNumberValue = sourceAncillaryChannelNumber;
    if (sourceAncillaryChannelNumberValue != null) {
      map['sourceAncillaryChannelNumber'] = sourceAncillaryChannelNumberValue;
    }
    return map;
  }

  factory ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsAncillarySourceSettings.fromMap(
      Map<String, dynamic> map) {
    return ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsAncillarySourceSettings(
      sourceAncillaryChannelNumber: map['sourceAncillaryChannelNumber'] == null
          ? null
          : map['sourceAncillaryChannelNumber'] as int,
    );
  }
}
