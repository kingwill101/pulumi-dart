// ignore_for_file: unused_element, unnecessary_cast


/// A class representing database principal entity.
class DatabasePrincipalResponse {
  /// Application id - relevant only for application principal type.
  final String? appId;
  /// Database principal email if exists.
  final String? email;
  /// Database principal fully qualified name.
  final String? fqn;
  /// Database principal name.
  final String name;
  /// Database principal role.
  final String role;
  /// The tenant name of the principal
  final String tenantName;
  /// Database principal type.
  final String type;

  /// Creates a new [DatabasePrincipalResponse].
  /// [appId] Application id - relevant only for application principal type.
  /// [email] Database principal email if exists.
  /// [fqn] Database principal fully qualified name.
  /// [name] Database principal name.
  /// [role] Database principal role.
  /// [tenantName] The tenant name of the principal
  /// [type] Database principal type.
  DatabasePrincipalResponse({
    this.appId,
    this.email,
    this.fqn,
    required this.name,
    required this.role,
    required this.tenantName,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': ?appId,
      'email': ?email,
      'fqn': ?fqn,
      'name': name,
      'role': role,
      'tenantName': tenantName,
      'type': type,
    };
  }

  factory DatabasePrincipalResponse.fromMap(Map<String, dynamic> map) {
    return DatabasePrincipalResponse(
      appId: map['appId'] == null ? null : map['appId'] as String,
      email: map['email'] == null ? null : map['email'] as String,
      fqn: map['fqn'] == null ? null : map['fqn'] as String,
      name: map['name'] as String,
      role: map['role'] as String,
      tenantName: map['tenantName'] as String,
      type: map['type'] as String,
    );
  }
}

