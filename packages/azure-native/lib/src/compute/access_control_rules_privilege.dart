// ignore_for_file: unused_element, unnecessary_cast


/// The properties of an Access Control Rule Privilege.
class AccessControlRulesPrivilege {
  /// The name of the privilege.
  final String name;
  /// The HTTP path corresponding to the privilege.
  final String path;
  /// The query parameters to match in the path.
  final Map<String, String>? queryParameters;

  /// Creates a new [AccessControlRulesPrivilege].
  /// [name] The name of the privilege.
  /// [path] The HTTP path corresponding to the privilege.
  /// [queryParameters] The query parameters to match in the path.
  AccessControlRulesPrivilege({
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
      name: map['name'] as String,
      path: map['path'] as String,
      queryParameters: map['queryParameters'] == null ? null : (map['queryParameters'] as Map).cast<String, String>(),
    );
  }
}

