// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Custom script action to run on HDI ondemand cluster once it's up.
class ScriptActionResponse {
  /// The user provided name of the script action.
  final pulumi.Input<String> name;
  /// The parameters for the script action.
  final pulumi.Input<String>? parameters;
  /// The node types on which the script action should be executed.
  final pulumi.Input<dynamic> roles;
  /// The URI for the script action.
  final pulumi.Input<String> uri;

  /// Creates a new [ScriptActionResponse].
  /// [name] The user provided name of the script action.
  /// [parameters] The parameters for the script action.
  /// [roles] The node types on which the script action should be executed.
  /// [uri] The URI for the script action.
  ScriptActionResponse({
    required this.name,
    this.parameters,
    required this.roles,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': ?parameters,
      'roles': roles,
      'uri': uri,
    };
  }

  factory ScriptActionResponse.fromMap(Map<String, dynamic> map) {
    return ScriptActionResponse(
      name: (map['name'] as String).input(),
      parameters: map['parameters'] == null ? null : (map['parameters']! as String).input(),
      roles: (map['roles']).input(),
      uri: (map['uri'] as String).input(),
    );
  }
}

