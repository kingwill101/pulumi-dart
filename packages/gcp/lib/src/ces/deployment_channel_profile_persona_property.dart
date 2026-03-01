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
  DeploymentChannelProfilePersonaProperty({this.persona});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'persona': ?persona};
  }

  factory DeploymentChannelProfilePersonaProperty.fromMap(
    Map<String, dynamic> map,
  ) {
    return DeploymentChannelProfilePersonaProperty(
      persona: map['persona'] == null ? null : map['persona'] as String,
    );
  }
}
