// ignore_for_file: unused_element, unnecessary_cast

class ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioPidSelection {
  /// Selects a specific PID from within a source.
  final int pid;

  /// Creates a new [ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioPidSelection].
  /// [pid] Selects a specific PID from within a source.
  ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioPidSelection({
    required this.pid,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['pid'] = pid;
    return map;
  }

  factory ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioPidSelection.fromMap(
      Map<String, dynamic> map) {
    return ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioPidSelection(
      pid: map['pid'] as int,
    );
  }
}
