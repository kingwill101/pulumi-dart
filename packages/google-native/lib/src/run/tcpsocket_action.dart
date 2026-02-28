// ignore_for_file: unused_element, unnecessary_cast

/// TCPSocketAction describes an action based on opening a socket
class TCPSocketAction {
  /// Not supported by Cloud Run.
  final String? host;

  /// Port number to access on the container. Number must be in the range 1 to 65535.
  final int? port;

  /// Creates a new [TCPSocketAction].
  /// [host] Not supported by Cloud Run.
  /// [port] Port number to access on the container. Number must be in the range 1 to 65535.
  TCPSocketAction({
    this.host,
    this.port,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final hostValue = host;
    if (hostValue != null) {
      map['host'] = hostValue;
    }
    final portValue = port;
    if (portValue != null) {
      map['port'] = portValue;
    }
    return map;
  }

  factory TCPSocketAction.fromMap(Map<String, dynamic> map) {
    return TCPSocketAction(
      host: map['host'] == null ? null : map['host'] as String,
      port: map['port'] == null ? null : map['port'] as int,
    );
  }
}
