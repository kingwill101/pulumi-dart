// ignore_for_file: unused_element, unnecessary_cast

/// Private Connectivity
class PrivateConnectivity {
  /// A reference to a private connection resource. Format: `projects/{project}/locations/{location}/privateConnections/{name}`
  final String privateConnection;

  /// Creates a new [PrivateConnectivity].
  /// [privateConnection] A reference to a private connection resource. Format: `projects/{project}/locations/{location}/privateConnections/{name}`
  PrivateConnectivity({
    required this.privateConnection,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['privateConnection'] = privateConnection;
    return map;
  }

  factory PrivateConnectivity.fromMap(Map<String, dynamic> map) {
    return PrivateConnectivity(
      privateConnection: map['privateConnection'] as String,
    );
  }
}
