// ignore_for_file: unused_element, unnecessary_cast

class AppDefaultChannelProfilePersonaProperty {
  /// The persona of the channel.
  /// Possible values:
  /// UNKNOWN
  /// CONCISE
  /// CHATTY
  final String? persona;

  AppDefaultChannelProfilePersonaProperty({
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

  factory AppDefaultChannelProfilePersonaProperty.fromMap(
      Map<String, dynamic> map) {
    return AppDefaultChannelProfilePersonaProperty(
      persona: map['persona'] == null ? null : map['persona'] as String,
    );
  }
}
