// ignore_for_file: unused_element, unnecessary_cast

/// Private Connectivity.
class PrivateConnectivity {
  /// The resource name (URI) of the private connection.
  final String privateConnection;

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
