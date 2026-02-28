// ignore_for_file: unused_element, unnecessary_cast

class DeploymentChannelProfilePersonaProperty {
  /// The persona of the channel.
  /// Possible values:
  /// UNKNOWN
  /// CONCISE
  /// CHATTY
  final String? persona;

  /// Creates a new [DeploymentChannelProfilePersonaProperty].
  /// [persona] The persona of the channel.
  DeploymentChannelProfilePersonaProperty({
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

  factory DeploymentChannelProfilePersonaProperty.fromMap(
      Map<String, dynamic> map) {
    return DeploymentChannelProfilePersonaProperty(
      persona: map['persona'] == null ? null : map['persona'] as String,
    );
  }
}
