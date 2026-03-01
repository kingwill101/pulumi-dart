// ignore_for_file: unused_element, unnecessary_cast


/// The properties of an Access Control Rule Role.
class AccessControlRulesRole {
  /// The name of the role.
  final String name;
  /// A list of privileges needed by this role.
  final List<String> privileges;

  /// Creates a new [AccessControlRulesRole].
  /// [name] The name of the role.
  /// [privileges] A list of privileges needed by this role.
  AccessControlRulesRole({
    required this.name,
    required this.privileges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'privileges': privileges,
    };
  }

  factory AccessControlRulesRole.fromMap(Map<String, dynamic> map) {
    return AccessControlRulesRole(
      name: map['name'] as String,
      privileges: (map['privileges'] as List).cast<String>(),
    );
  }
}

