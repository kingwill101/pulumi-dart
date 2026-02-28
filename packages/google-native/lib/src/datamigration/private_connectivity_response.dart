// ignore_for_file: unused_element, unnecessary_cast

/// Private Connectivity.
class PrivateConnectivityResponse {
  /// The resource name (URI) of the private connection.
  final String privateConnection;

  /// Creates a new [PrivateConnectivityResponse].
  /// [privateConnection] The resource name (URI) of the private connection.
  PrivateConnectivityResponse({
    required this.privateConnection,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['privateConnection'] = privateConnection;
    return map;
  }

  factory PrivateConnectivityResponse.fromMap(Map<String, dynamic> map) {
    return PrivateConnectivityResponse(
      privateConnection: map['privateConnection'] as String,
    );
  }
}
