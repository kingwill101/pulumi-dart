// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_input_attachment_input_settings_audio_selector_selector_settings_audio_track_selection_dolby_edecode.dart';
import 'channel_input_attachment_input_settings_audio_selector_selector_settings_audio_track_selection_track.dart';

class ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioTrackSelection {
  /// Configure decoding options for Dolby E streams - these should be Dolby E frames carried in PCM streams tagged with SMPTE-337. See Dolby E Decode for more details.
  final ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioTrackSelectionDolbyEDecode?
  dolbyEDecode;

  /// Selects one or more unique audio tracks from within a source. See Audio Tracks for more details.
  final List<
    ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioTrackSelectionTrack
  >
  tracks;

  /// Creates a new [ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioTrackSelection].
  /// [dolbyEDecode] Configure decoding options for Dolby E streams - these should be Dolby E frames carried in PCM streams tagged with SMPTE-337. See Dolby E Decode for more details.
  /// [tracks] Selects one or more unique audio tracks from within a source. See Audio Tracks for more details.
  ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioTrackSelection({
    this.dolbyEDecode,
    required this.tracks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dolbyEDecode': ?dolbyEDecode == null ? null : dolbyEDecode!.toMap(),
      'tracks':
          pulumi.Input.encodeList<
            ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioTrackSelectionTrack,
            Map<String, dynamic>
          >(tracks, (value) => value.toMap()),
    };
  }

  factory ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioTrackSelection.fromMap(
    Map<String, dynamic> map,
  ) {
    return ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioTrackSelection(
      dolbyEDecode: map['dolbyEDecode'] == null
          ? null
          : ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioTrackSelectionDolbyEDecode.fromMap(
              (map['dolbyEDecode'] as Map).cast<String, dynamic>(),
            ),
      tracks:
          pulumi.Input.decodeList<
            ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioTrackSelectionTrack
          >(
            map['tracks'],
            (value) =>
                ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioTrackSelectionTrack.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
    );
  }
}
