// ignore_for_file: unused_element, unnecessary_cast


class GetHostsHostProtocol {
  /// Host fingerprint information, it is possible to uniquely identify a host.
  final String hostFingerPrint;
  /// Host the service port of the RDS.
  final int port;
  /// The host uses the protocol name.
  final String protocolName;

  /// Creates a new [GetHostsHostProtocol].
  /// [hostFingerPrint] Host fingerprint information, it is possible to uniquely identify a host.
  /// [port] Host the service port of the RDS.
  /// [protocolName] The host uses the protocol name.
  GetHostsHostProtocol({
    required this.hostFingerPrint,
    required this.port,
    required this.protocolName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostFingerPrint': hostFingerPrint,
      'port': port,
      'protocolName': protocolName,
    };
  }

  factory GetHostsHostProtocol.fromMap(Map<String, dynamic> map) {
    return GetHostsHostProtocol(
      hostFingerPrint: map['hostFingerPrint'] as String,
      port: map['port'] as int,
      protocolName: map['protocolName'] as String,
    );
  }
}

