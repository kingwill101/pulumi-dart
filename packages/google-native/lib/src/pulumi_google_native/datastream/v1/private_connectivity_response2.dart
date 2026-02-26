// ignore_for_file: unused_element, unnecessary_cast

/// Private Connectivity
class PrivateConnectivityResponse2 {
  /// A reference to a private connection resource. Format: `projects/{project}/locations/{location}/privateConnections/{name}`
  final String privateConnection;

  PrivateConnectivityResponse2({
    required this.privateConnection,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['privateConnection'] = privateConnection;
    return map;
  }

  factory PrivateConnectivityResponse2.fromMap(Map<String, dynamic> map) {
    return PrivateConnectivityResponse2(
      privateConnection: map['privateConnection'] as String,
    );
  }
}
