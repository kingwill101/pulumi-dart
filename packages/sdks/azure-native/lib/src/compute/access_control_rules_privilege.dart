// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of an Access Control Rule Privilege.
class AccessControlRulesPrivilege {
  /// The name of the privilege.
  final pulumi.Input<String> name;
  /// The HTTP path corresponding to the privilege.
  final pulumi.Input<String> path;
  /// The query parameters to match in the path.
  final pulumi.Input<Map<String, String>>? queryParameters;

  /// Creates a new [AccessControlRulesPrivilege].
  /// [name] The name of the privilege.
  /// [path] The HTTP path corresponding to the privilege.
  /// [queryParameters] The query parameters to match in the path.
  const AccessControlRulesPrivilege({
    required this.name,
    required this.path,
    this.queryParameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'path': path,
      'queryParameters': ?queryParameters,
    };
  }

  factory AccessControlRulesPrivilege.fromMap(Map<String, dynamic> map) {
    return AccessControlRulesPrivilege(
      name: pulumi.Input.fromValue(map['name'] as String),
      path: pulumi.Input.fromValue(map['path'] as String),
      queryParameters: (() { final guardedValue = map['queryParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
