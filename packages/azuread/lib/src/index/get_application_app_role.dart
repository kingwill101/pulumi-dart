// ignore_for_file: unused_element, unnecessary_cast


class GetApplicationAppRole {
  /// Specifies whether this app role definition can be assigned to users and groups, or to other applications (that are accessing this application in a standalone scenario). Possible values are `User` or `Application`, or both.
  final List<String> allowedMemberTypes;
  /// Description of the app role that appears when the role is being assigned and, if the role functions as an application permissions, during the consent experiences.
  final String description;
  /// Specifies the display name of the application.
  final String displayName;
  /// Determines if the app role is enabled.
  final bool enabled;
  /// The unique identifier for an app role or OAuth2 permission scope published by the resource application.
  final String id;
  /// The value that is used for the `roles` claim in ID tokens and OAuth 2.0 access tokens that are authenticating an assigned service or user principal.
  final String value;

  /// Creates a new [GetApplicationAppRole].
  /// [allowedMemberTypes] Specifies whether this app role definition can be assigned to users and groups, or to other applications (that are accessing this application in a standalone scenario). Possible values are `User` or `Application`, or both.
  /// [description] Description of the app role that appears when the role is being assigned and, if the role functions as an application permissions, during the consent experiences.
  /// [displayName] Specifies the display name of the application.
  /// [enabled] Determines if the app role is enabled.
  /// [id] The unique identifier for an app role or OAuth2 permission scope published by the resource application.
  /// [value] The value that is used for the `roles` claim in ID tokens and OAuth 2.0 access tokens that are authenticating an assigned service or user principal.
  GetApplicationAppRole({
    required this.allowedMemberTypes,
    required this.description,
    required this.displayName,
    required this.enabled,
    required this.id,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedMemberTypes': allowedMemberTypes,
      'description': description,
      'displayName': displayName,
      'enabled': enabled,
      'id': id,
      'value': value,
    };
  }

  factory GetApplicationAppRole.fromMap(Map<String, dynamic> map) {
    return GetApplicationAppRole(
      allowedMemberTypes: (map['allowedMemberTypes'] as List).cast<String>(),
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      enabled: map['enabled'] as bool,
      id: map['id'] as String,
      value: map['value'] as String,
    );
  }
}

