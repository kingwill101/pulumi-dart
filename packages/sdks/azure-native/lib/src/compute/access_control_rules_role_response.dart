// ignore_for_file: unused_element, unnecessary_cast


/// The properties of an Access Control Rule Role.
class AccessControlRulesRoleResponse {
  /// The name of the role.
  final String name;
  /// A list of privileges needed by this role.
  final List<String> privileges;

  /// Creates a new [AccessControlRulesRoleResponse].
  /// [name] The name of the role.
  /// [privileges] A list of privileges needed by this role.
  AccessControlRulesRoleResponse({
    required this.name,
    required this.privileges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'privileges': privileges,
    };
  }

  factory AccessControlRulesRoleResponse.fromMap(Map<String, dynamic> map) {
    return AccessControlRulesRoleResponse(
      name: map['name'] as String,
      privileges: (map['privileges'] as List).cast<String>(),
    );
  }
}

