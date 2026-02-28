// ignore_for_file: unused_element, unnecessary_cast

class ConnectionProfilePrivateConnectivity {
  /// A reference to a private connection resource. Format: `projects/{project}/locations/{location}/privateConnections/{name}`
  final String privateConnection;

  /// Creates a new [ConnectionProfilePrivateConnectivity].
  /// [privateConnection] A reference to a private connection resource. Format: `projects/{project}/locations/{location}/privateConnections/{name}`
  ConnectionProfilePrivateConnectivity({
    required this.privateConnection,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['privateConnection'] = privateConnection;
    return map;
  }

  factory ConnectionProfilePrivateConnectivity.fromMap(
      Map<String, dynamic> map) {
    return ConnectionProfilePrivateConnectivity(
      privateConnection: map['privateConnection'] as String,
    );
  }
}
