// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A class representing database principal entity.
class DatabasePrincipalResponse {
  /// Application id - relevant only for application principal type.
  final pulumi.Input<String>? appId;
  /// Database principal email if exists.
  final pulumi.Input<String>? email;
  /// Database principal fully qualified name.
  final pulumi.Input<String>? fqn;
  /// Database principal name.
  final pulumi.Input<String> name;
  /// Database principal role.
  final pulumi.Input<String> role;
  /// The tenant name of the principal
  final pulumi.Input<String> tenantName;
  /// Database principal type.
  final pulumi.Input<String> type;

  /// Creates a new [DatabasePrincipalResponse].
  /// [appId] Application id - relevant only for application principal type.
  /// [email] Database principal email if exists.
  /// [fqn] Database principal fully qualified name.
  /// [name] Database principal name.
  /// [role] Database principal role.
  /// [tenantName] The tenant name of the principal
  /// [type] Database principal type.
  const DatabasePrincipalResponse({
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
      appId: (() { final guardedValue = map['appId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fqn: (() { final guardedValue = map['fqn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      role: pulumi.Input.fromValue(map['role'] as String),
      tenantName: pulumi.Input.fromValue(map['tenantName'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
