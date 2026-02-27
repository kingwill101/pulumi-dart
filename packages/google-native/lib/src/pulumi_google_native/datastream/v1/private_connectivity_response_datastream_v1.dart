// ignore_for_file: unused_element, unnecessary_cast

/// Private Connectivity
class PrivateConnectivityResponseDatastreamV1 {
  /// A reference to a private connection resource. Format: `projects/{project}/locations/{location}/privateConnections/{name}`
  final String privateConnection;

  PrivateConnectivityResponseDatastreamV1({
    required this.privateConnection,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['privateConnection'] = privateConnection;
    return map;
  }

  factory PrivateConnectivityResponseDatastreamV1.fromMap(
      Map<String, dynamic> map) {
    return PrivateConnectivityResponseDatastreamV1(
      privateConnection: map['privateConnection'] as String,
    );
  }
}
