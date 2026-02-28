// ignore_for_file: unused_element, unnecessary_cast

/// An object containing information about the effective user and authenticated principal responsible for an action.
class ActorResponseCloudsupportV2beta {
  /// The name to display for the actor. If not provided, it is inferred from credentials supplied during case creation. When an email is provided, a display name must also be provided. This will be obfuscated if the user is a Google Support agent.
  final String displayName;

  /// The email address of the actor. If not provided, it is inferred from credentials supplied during case creation. If the authenticated principal does not have an email address, one must be provided. When a name is provided, an email must also be provided. This will be obfuscated if the user is a Google Support agent.
  final String email;

  /// Whether the actor is a Google support actor.
  final bool googleSupport;

  /// Creates a new [ActorResponseCloudsupportV2beta].
  /// [displayName] The name to display for the actor. If not provided, it is inferred from credentials supplied during case creation. When an email is provided, a display name must also be provided. This will be obfuscated if the user is a Google Support agent.
  /// [email] The email address of the actor. If not provided, it is inferred from credentials supplied during case creation. If the authenticated principal does not have an email address, one must be provided. When a name is provided, an email must also be provided. This will be obfuscated if the user is a Google Support agent.
  /// [googleSupport] Whether the actor is a Google support actor.
  ActorResponseCloudsupportV2beta({
    required this.displayName,
    required this.email,
    required this.googleSupport,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['displayName'] = displayName;
    map['email'] = email;
    map['googleSupport'] = googleSupport;
    return map;
  }

  factory ActorResponseCloudsupportV2beta.fromMap(Map<String, dynamic> map) {
    return ActorResponseCloudsupportV2beta(
      displayName: map['displayName'] as String,
      email: map['email'] as String,
      googleSupport: map['googleSupport'] as bool,
    );
  }
}
