// ignore_for_file: unused_element, unnecessary_cast


/// Static Site User ARM resource.
class StaticSiteUserARMResourceResponse {
  /// The display name for the static site user.
  final String displayName;
  /// Resource Id.
  final String id;
  /// Kind of resource.
  final String? kind;
  /// Resource Name.
  final String name;
  /// The identity provider for the static site user.
  final String provider;
  /// The roles for the static site user, in free-form string format
  final String? roles;
  /// Resource type.
  final String type;
  /// The user id for the static site user.
  final String userId;

  /// Creates a new [StaticSiteUserARMResourceResponse].
  /// [displayName] The display name for the static site user.
  /// [id] Resource Id.
  /// [kind] Kind of resource.
  /// [name] Resource Name.
  /// [provider] The identity provider for the static site user.
  /// [roles] The roles for the static site user, in free-form string format
  /// [type] Resource type.
  /// [userId] The user id for the static site user.
  StaticSiteUserARMResourceResponse({
    required this.displayName,
    required this.id,
    this.kind,
    required this.name,
    required this.provider,
    this.roles,
    required this.type,
    required this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'id': id,
      'kind': ?kind,
      'name': name,
      'provider': provider,
      'roles': ?roles,
      'type': type,
      'userId': userId,
    };
  }

  factory StaticSiteUserARMResourceResponse.fromMap(Map<String, dynamic> map) {
    return StaticSiteUserARMResourceResponse(
      displayName: map['displayName'] as String,
      id: map['id'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      name: map['name'] as String,
      provider: map['provider'] as String,
      roles: map['roles'] == null ? null : map['roles'] as String,
      type: map['type'] as String,
      userId: map['userId'] as String,
    );
  }
}

