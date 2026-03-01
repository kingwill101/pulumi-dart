// ignore_for_file: unused_element, unnecessary_cast

/// TCPSocketAction describes an action based on opening a socket
class TCPSocketActionResponse {
  /// Not supported by Cloud Run.
  final String host;

  /// Port number to access on the container. Number must be in the range 1 to 65535.
  final int port;

  /// Creates a new [TCPSocketActionResponse].
  /// [host] Not supported by Cloud Run.
  /// [port] Port number to access on the container. Number must be in the range 1 to 65535.
  TCPSocketActionResponse({required this.host, required this.port});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'host': host, 'port': port};
  }

  factory TCPSocketActionResponse.fromMap(Map<String, dynamic> map) {
    return TCPSocketActionResponse(
      host: map['host'] as String,
      port: map['port'] as int,
    );
  }
}
