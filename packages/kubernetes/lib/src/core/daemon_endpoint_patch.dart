// ignore_for_file: unused_element, unnecessary_cast


/// DaemonEndpoint contains information about a single Daemon endpoint.
class DaemonEndpointPatch {
  /// Port number of the given endpoint.
  final int? port;

  /// Creates a new [DaemonEndpointPatch].
  /// [port] Port number of the given endpoint.
  DaemonEndpointPatch({
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'Port': ?port,
    };
  }

  factory DaemonEndpointPatch.fromMap(Map<String, dynamic> map) {
    return DaemonEndpointPatch(
      port: map['Port'] == null ? null : map['Port'] as int,
    );
  }
}

