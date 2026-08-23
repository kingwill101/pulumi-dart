// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioTrackSelectionTrack {
  /// 1-based integer value that maps to a specific audio track.
  final pulumi.Input<int> track;

  /// Creates a new [ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioTrackSelectionTrack].
  /// [track] 1-based integer value that maps to a specific audio track.
  const ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioTrackSelectionTrack({
    required this.track,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'track': track,
    };
  }

  factory ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioTrackSelectionTrack.fromMap(Map<String, dynamic> map) {
    return ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioTrackSelectionTrack(
      track: pulumi.Input.fromValue(map['track'] as int),
    );
  }
}
