// ignore_for_file: unused_element, unnecessary_cast


/// Private Connectivity
class PrivateConnectivityResponse {
  /// A reference to a private connection resource. Format: `projects/{project}/locations/{location}/privateConnections/{name}`
  final String privateConnection;

  /// Creates a new [PrivateConnectivityResponse].
  /// [privateConnection] A reference to a private connection resource. Format: `projects/{project}/locations/{location}/privateConnections/{name}`
  PrivateConnectivityResponse({
    required this.privateConnection,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateConnection': privateConnection,
    };
  }

  factory PrivateConnectivityResponse.fromMap(Map<String, dynamic> map) {
    return PrivateConnectivityResponse(
      privateConnection: map['privateConnection'] as String,
    );
  }
}

