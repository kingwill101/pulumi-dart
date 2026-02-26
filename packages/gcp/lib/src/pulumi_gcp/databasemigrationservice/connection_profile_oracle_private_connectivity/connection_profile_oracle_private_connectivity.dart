// ignore_for_file: unused_element, unnecessary_cast

class ConnectionProfileOraclePrivateConnectivity {
  /// Required. The resource name (URI) of the private connection.
  final String privateConnection;

  ConnectionProfileOraclePrivateConnectivity({
    required this.privateConnection,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['privateConnection'] = privateConnection;
    return map;
  }

  factory ConnectionProfileOraclePrivateConnectivity.fromMap(
      Map<String, dynamic> map) {
    return ConnectionProfileOraclePrivateConnectivity(
      privateConnection: map['privateConnection'] as String,
    );
  }
}
