// ignore_for_file: unused_element, unnecessary_cast

class ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioHlsRenditionSelection {
  /// Specifies the GROUP-ID in the #EXT-X-MEDIA tag of the target HLS audio rendition.
  final String groupId;

  /// Specifies the NAME in the #EXT-X-MEDIA tag of the target HLS audio rendition.
  final String name;

  /// Creates a new [ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioHlsRenditionSelection].
  /// [groupId] Specifies the GROUP-ID in the #EXT-X-MEDIA tag of the target HLS audio rendition.
  /// [name] Specifies the NAME in the #EXT-X-MEDIA tag of the target HLS audio rendition.
  ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioHlsRenditionSelection({
    required this.groupId,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['groupId'] = groupId;
    map['name'] = name;
    return map;
  }

  factory ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioHlsRenditionSelection.fromMap(
      Map<String, dynamic> map) {
    return ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioHlsRenditionSelection(
      groupId: map['groupId'] as String,
      name: map['name'] as String,
    );
  }
}
