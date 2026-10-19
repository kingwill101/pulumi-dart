// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_input_attachment_input_settings_audio_selector_selector_settings_audio_track_selection_dolby_edecode.dart';
import 'channel_input_attachment_input_settings_audio_selector_selector_settings_audio_track_selection_track.dart';

class ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioTrackSelection {
  /// Decoding options for Dolby E streams. These should be Dolby E frames carried in PCM streams tagged with SMPTE-337. See `dolbyEDecode` Block for details.
  final pulumi.Input<ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioTrackSelectionDolbyEDecode?>? dolbyEDecode;
  /// One or more unique audio tracks from within a source. See `tracks` Block for details.
  final pulumi.Input<List<ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioTrackSelectionTrack>> tracks;

  /// Creates a new [ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioTrackSelection].
  /// [dolbyEDecode] Decoding options for Dolby E streams. These should be Dolby E frames carried in PCM streams tagged with SMPTE-337. See `dolbyEDecode` Block for details.
  /// [tracks] One or more unique audio tracks from within a source. See `tracks` Block for details.
  const ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioTrackSelection({
    this.dolbyEDecode,
    required this.tracks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dolbyEDecode': ?pulumi.Input.mapOptionalInputValue<ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioTrackSelectionDolbyEDecode, Map<String, dynamic>>(dolbyEDecode, (value) => value.toMap()),
      'tracks': pulumi.Input.mapInputValue<List<ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioTrackSelectionTrack>, List<Map<String, dynamic>>>(tracks, (value) => pulumi.Input.encodeList<ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioTrackSelectionTrack, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioTrackSelection.fromMap(Map<String, dynamic> map) {
    return ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioTrackSelection(
      dolbyEDecode: (() { final guardedValue = map['dolbyEDecode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioTrackSelectionDolbyEDecode.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tracks: pulumi.Input.fromValue(pulumi.Input.decodeList<ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioTrackSelectionTrack>(map['tracks']!, (value) => ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioTrackSelectionTrack.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
