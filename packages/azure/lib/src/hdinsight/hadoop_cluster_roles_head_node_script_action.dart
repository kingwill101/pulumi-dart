// ignore_for_file: unused_element, unnecessary_cast


class HadoopClusterRolesHeadNodeScriptAction {
  /// The name of the script action.
  final String name;
  /// The parameters for the script provided.
  final String? parameters;
  /// The URI to the script.
  final String uri;

  /// Creates a new [HadoopClusterRolesHeadNodeScriptAction].
  /// [name] The name of the script action.
  /// [parameters] The parameters for the script provided.
  /// [uri] The URI to the script.
  HadoopClusterRolesHeadNodeScriptAction({
    required this.name,
    this.parameters,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': ?parameters,
      'uri': uri,
    };
  }

  factory HadoopClusterRolesHeadNodeScriptAction.fromMap(Map<String, dynamic> map) {
    return HadoopClusterRolesHeadNodeScriptAction(
      name: map['name'] as String,
      parameters: map['parameters'] == null ? null : map['parameters'] as String,
      uri: map['uri'] as String,
    );
  }
}

