// ignore_for_file: unused_element, unnecessary_cast

/// An object containing information about the effective user and authenticated principal responsible for an action.
class ActorCloudsupportV2beta {
  /// The name to display for the actor. If not provided, it is inferred from credentials supplied during case creation. When an email is provided, a display name must also be provided. This will be obfuscated if the user is a Google Support agent.
  final String? displayName;

  /// The email address of the actor. If not provided, it is inferred from credentials supplied during case creation. If the authenticated principal does not have an email address, one must be provided. When a name is provided, an email must also be provided. This will be obfuscated if the user is a Google Support agent.
  final String? email;

  /// Creates a new [ActorCloudsupportV2beta].
  /// [displayName] The name to display for the actor. If not provided, it is inferred from credentials supplied during case creation. When an email is provided, a display name must also be provided. This will be obfuscated if the user is a Google Support agent.
  /// [email] The email address of the actor. If not provided, it is inferred from credentials supplied during case creation. If the authenticated principal does not have an email address, one must be provided. When a name is provided, an email must also be provided. This will be obfuscated if the user is a Google Support agent.
  ActorCloudsupportV2beta({this.displayName, this.email});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'displayName': ?displayName, 'email': ?email};
  }

  factory ActorCloudsupportV2beta.fromMap(Map<String, dynamic> map) {
    return ActorCloudsupportV2beta(
      displayName: map['displayName'] == null
          ? null
          : map['displayName'] as String,
      email: map['email'] == null ? null : map['email'] as String,
    );
  }
}
