// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Custom script action to run on HDI ondemand cluster once it's up.
class ScriptAction {
  /// The user provided name of the script action.
  final pulumi.Input<String> name;
  /// The parameters for the script action.
  final pulumi.Input<String>? parameters;
  /// The node types on which the script action should be executed.
  final pulumi.Input<dynamic> roles;
  /// The URI for the script action.
  final pulumi.Input<String> uri;

  /// Creates a new [ScriptAction].
  /// [name] The user provided name of the script action.
  /// [parameters] The parameters for the script action.
  /// [roles] The node types on which the script action should be executed.
  /// [uri] The URI for the script action.
  const ScriptAction({
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

  factory ScriptAction.fromMap(Map<String, dynamic> map) {
    return ScriptAction(
      name: pulumi.Input.fromValue(map['name'] as String),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roles: pulumi.Input.fromValue(map['roles']),
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}

