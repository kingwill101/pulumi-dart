// ignore_for_file: unused_element, unnecessary_cast


/// A role that can be assigned to a user.
class EnvironmentRoleResponse {
  /// This is a description of the Role Assignment.
  final String description;
  /// The common name of the Role Assignment. This is a descriptive name such as 'AcrPush'.
  final String roleName;

  /// Creates a new [EnvironmentRoleResponse].
  /// [description] This is a description of the Role Assignment.
  /// [roleName] The common name of the Role Assignment. This is a descriptive name such as 'AcrPush'.
  EnvironmentRoleResponse({
    required this.description,
    required this.roleName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'roleName': roleName,
    };
  }

  factory EnvironmentRoleResponse.fromMap(Map<String, dynamic> map) {
    return EnvironmentRoleResponse(
      description: map['description'] as String,
      roleName: map['roleName'] as String,
    );
  }
}

