// ignore_for_file: unused_element, unnecessary_cast


/// The properties of an Access Control Rule Privilege.
class AccessControlRulesPrivilegeResponse {
  /// The name of the privilege.
  final String name;
  /// The HTTP path corresponding to the privilege.
  final String path;
  /// The query parameters to match in the path.
  final Map<String, String>? queryParameters;

  /// Creates a new [AccessControlRulesPrivilegeResponse].
  /// [name] The name of the privilege.
  /// [path] The HTTP path corresponding to the privilege.
  /// [queryParameters] The query parameters to match in the path.
  AccessControlRulesPrivilegeResponse({
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

  factory AccessControlRulesPrivilegeResponse.fromMap(Map<String, dynamic> map) {
    return AccessControlRulesPrivilegeResponse(
      name: map['name'] as String,
      path: map['path'] as String,
      queryParameters: map['queryParameters'] == null ? null : (map['queryParameters'] as Map).cast<String, String>(),
    );
  }
}

