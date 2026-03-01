// ignore_for_file: unused_element, unnecessary_cast

class ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioTrackSelectionTrack {
  /// 1-based integer value that maps to a specific audio track.
  final int track;

  /// Creates a new [ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioTrackSelectionTrack].
  /// [track] 1-based integer value that maps to a specific audio track.
  ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioTrackSelectionTrack({
    required this.track,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'track': track};
  }

  factory ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioTrackSelectionTrack.fromMap(
    Map<String, dynamic> map,
  ) {
    return ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioTrackSelectionTrack(
      track: map['track'] as int,
    );
  }
}
