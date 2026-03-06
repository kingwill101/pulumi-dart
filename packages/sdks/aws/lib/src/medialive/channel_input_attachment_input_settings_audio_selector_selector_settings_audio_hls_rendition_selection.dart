// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioHlsRenditionSelection {
  /// Specifies the GROUP-ID in the #EXT-X-MEDIA tag of the target HLS audio rendition.
  final pulumi.Input<String> groupId;
  /// Specifies the NAME in the #EXT-X-MEDIA tag of the target HLS audio rendition.
  final pulumi.Input<String> name;

  /// Creates a new [ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioHlsRenditionSelection].
  /// [groupId] Specifies the GROUP-ID in the #EXT-X-MEDIA tag of the target HLS audio rendition.
  /// [name] Specifies the NAME in the #EXT-X-MEDIA tag of the target HLS audio rendition.
  const ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioHlsRenditionSelection({
    required this.groupId,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupId': groupId,
      'name': name,
    };
  }

  factory ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioHlsRenditionSelection.fromMap(Map<String, dynamic> map) {
    return ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioHlsRenditionSelection(
      groupId: pulumi.Input.fromValue(map['groupId'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

