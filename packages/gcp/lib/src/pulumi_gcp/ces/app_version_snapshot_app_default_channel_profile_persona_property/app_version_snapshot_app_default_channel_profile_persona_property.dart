// ignore_for_file: unused_element, unnecessary_cast

class AppVersionSnapshotAppDefaultChannelProfilePersonaProperty {
  /// (Output)
  /// The persona of the channel.
  /// Possible values:
  /// UNKNOWN
  /// CONCISE
  /// CHATTY
  final String? persona;

  AppVersionSnapshotAppDefaultChannelProfilePersonaProperty({
    this.persona,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final personaValue = persona;
    if (personaValue != null) {
      map['persona'] = personaValue;
    }
    return map;
  }

  factory AppVersionSnapshotAppDefaultChannelProfilePersonaProperty.fromMap(
      Map<String, dynamic> map) {
    return AppVersionSnapshotAppDefaultChannelProfilePersonaProperty(
      persona: map['persona'] == null ? null : map['persona'] as String,
    );
  }
}
