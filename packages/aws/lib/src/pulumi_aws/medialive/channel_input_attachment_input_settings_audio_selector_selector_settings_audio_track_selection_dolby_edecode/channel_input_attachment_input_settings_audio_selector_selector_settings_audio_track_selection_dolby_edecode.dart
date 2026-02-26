// ignore_for_file: unused_element, unnecessary_cast

class ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioTrackSelectionDolbyEDecode {
  /// Applies only to Dolby E. Enter the program ID (according to the metadata in the audio) of the Dolby E program to extract from the specified track. One program extracted per audio selector. To select multiple programs, create multiple selectors with the same Track and different Program numbers. “All channels” means to ignore the program IDs and include all the channels in this selector; useful if metadata is known to be incorrect.
  final String programSelection;

  ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioTrackSelectionDolbyEDecode({
    required this.programSelection,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['programSelection'] = programSelection;
    return map;
  }

  factory ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioTrackSelectionDolbyEDecode.fromMap(
      Map<String, dynamic> map) {
    return ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioTrackSelectionDolbyEDecode(
      programSelection: map['programSelection'] as String,
    );
  }
}
