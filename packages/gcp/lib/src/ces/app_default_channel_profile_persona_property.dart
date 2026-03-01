// ignore_for_file: unused_element, unnecessary_cast


class AppDefaultChannelProfilePersonaProperty {
  /// The persona of the channel.
  /// Possible values:
  /// UNKNOWN
  /// CONCISE
  /// CHATTY
  final String? persona;

  /// Creates a new [AppDefaultChannelProfilePersonaProperty].
  /// [persona] The persona of the channel.
  AppDefaultChannelProfilePersonaProperty({
    this.persona,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'persona': ?persona,
    };
  }

  factory AppDefaultChannelProfilePersonaProperty.fromMap(Map<String, dynamic> map) {
    return AppDefaultChannelProfilePersonaProperty(
      persona: map['persona'] == null ? null : map['persona'] as String,
    );
  }
}

