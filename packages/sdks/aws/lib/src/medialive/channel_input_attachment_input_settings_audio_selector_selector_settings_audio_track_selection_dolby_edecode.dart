// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioTrackSelectionDolbyEDecode {
  /// Program ID of the Dolby E program to extract from the specified track. Applies only to Dolby E. One program is extracted per audio selector. To select multiple programs, create multiple selectors with the same track and different program numbers. `All channels` ignores the program IDs and includes all the channels in this selector; useful if metadata is known to be incorrect.
  final pulumi.Input<String> programSelection;

  /// Creates a new [ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioTrackSelectionDolbyEDecode].
  /// [programSelection] Program ID of the Dolby E program to extract from the specified track. Applies only to Dolby E. One program is extracted per audio selector. To select multiple programs, create multiple selectors with the same track and different program numbers. `All channels` ignores the program IDs and includes all the channels in this selector; useful if metadata is known to be incorrect.
  const ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioTrackSelectionDolbyEDecode({
    required this.programSelection,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'programSelection': programSelection,
    };
  }

  factory ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioTrackSelectionDolbyEDecode.fromMap(Map<String, dynamic> map) {
    return ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioTrackSelectionDolbyEDecode(
      programSelection: pulumi.Input.fromValue(map['programSelection'] as String),
    );
  }
}
