// ignore_for_file: unused_element, unnecessary_cast


/// Custom script action to run on HDI ondemand cluster once it's up.
class ScriptAction {
  /// The user provided name of the script action.
  final String name;
  /// The parameters for the script action.
  final String? parameters;
  /// The node types on which the script action should be executed.
  final dynamic roles;
  /// The URI for the script action.
  final String uri;

  /// Creates a new [ScriptAction].
  /// [name] The user provided name of the script action.
  /// [parameters] The parameters for the script action.
  /// [roles] The node types on which the script action should be executed.
  /// [uri] The URI for the script action.
  ScriptAction({
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
      name: map['name'] as String,
      parameters: map['parameters'] == null ? null : map['parameters'] as String,
      roles: map['roles'],
      uri: map['uri'] as String,
    );
  }
}

