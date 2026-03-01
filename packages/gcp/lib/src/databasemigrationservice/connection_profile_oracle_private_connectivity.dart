// ignore_for_file: unused_element, unnecessary_cast


class ConnectionProfileOraclePrivateConnectivity {
  /// Required. The resource name (URI) of the private connection.
  final String privateConnection;

  /// Creates a new [ConnectionProfileOraclePrivateConnectivity].
  /// [privateConnection] Required. The resource name (URI) of the private connection.
  ConnectionProfileOraclePrivateConnectivity({
    required this.privateConnection,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateConnection': privateConnection,
    };
  }

  factory ConnectionProfileOraclePrivateConnectivity.fromMap(Map<String, dynamic> map) {
    return ConnectionProfileOraclePrivateConnectivity(
      privateConnection: map['privateConnection'] as String,
    );
  }
}

