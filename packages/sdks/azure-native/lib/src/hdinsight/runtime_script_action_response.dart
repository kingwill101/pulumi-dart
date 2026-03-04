// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes a script action on a running cluster.
class RuntimeScriptActionResponse {
  /// The application name of the script action, if any.
  final pulumi.Input<String> applicationName;

  /// The name of the script action.
  final pulumi.Input<String> name;

  /// The parameters for the script
  final pulumi.Input<String>? parameters;

  /// The list of roles where script will be executed.
  final pulumi.Input<List<String>> roles;

  /// The URI to the script.
  final pulumi.Input<String> uri;

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
      applicationName: pulumi.Input.fromValue(map['applicationName'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      parameters: (() {
        final guardedValue = map['parameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      roles: pulumi.Input.fromValue((map['roles'] as List).cast<String>()),
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}
