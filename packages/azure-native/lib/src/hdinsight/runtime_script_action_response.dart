// ignore_for_file: unused_element, unnecessary_cast


/// Describes a script action on a running cluster.
class RuntimeScriptActionResponse {
  /// The application name of the script action, if any.
  final String applicationName;
  /// The name of the script action.
  final String name;
  /// The parameters for the script
  final String? parameters;
  /// The list of roles where script will be executed.
  final List<String> roles;
  /// The URI to the script.
  final String uri;

  /// Creates a new [RuntimeScriptActionResponse].
  /// [applicationName] The application name of the script action, if any.
  /// [name] The name of the script action.
  /// [parameters] The parameters for the script
  /// [roles] The list of roles where script will be executed.
  /// [uri] The URI to the script.
  RuntimeScriptActionResponse({
    required this.applicationName,
    required this.name,
    this.parameters,
    required this.roles,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationName': applicationName,
      'name': name,
      'parameters': ?parameters,
      'roles': roles,
      'uri': uri,
    };
  }

  factory RuntimeScriptActionResponse.fromMap(Map<String, dynamic> map) {
    return RuntimeScriptActionResponse(
      applicationName: map['applicationName'] as String,
      name: map['name'] as String,
      parameters: map['parameters'] == null ? null : map['parameters'] as String,
      roles: (map['roles'] as List).cast<String>(),
      uri: map['uri'] as String,
    );
  }
}

