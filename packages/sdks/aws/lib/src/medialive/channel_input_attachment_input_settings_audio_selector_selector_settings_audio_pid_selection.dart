// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioPidSelection {
  /// Selects a specific PID from within a source.
  final pulumi.Input<int> pid;

  /// Creates a new [ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioPidSelection].
  /// [pid] Selects a specific PID from within a source.
  ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioPidSelection({
    required this.pid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pid': pid,
    };
  }

  factory ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioPidSelection.fromMap(Map<String, dynamic> map) {
    return ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioPidSelection(
      pid: (map['pid'] as int).input(),
    );
  }
}

