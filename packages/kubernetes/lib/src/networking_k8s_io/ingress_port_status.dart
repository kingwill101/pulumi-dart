// ignore_for_file: unused_element, unnecessary_cast


/// IngressPortStatus represents the error condition of a service port
class IngressPortStatus {
  /// error is to record the problem with the service port The format of the error shall comply with the following rules: - built-in error values shall be specified in this file and those shall use
  /// CamelCase names
  /// - cloud provider specific error values must have names that comply with the
  /// format foo.example.com/CamelCase.
  final String? error;
  /// port is the port number of the ingress port.
  final int port;
  /// protocol is the protocol of the ingress port. The supported values are: "TCP", "UDP", "SCTP"
  final String protocol;

  /// Creates a new [IngressPortStatus].
  /// [error] error is to record the problem with the service port The format of the error shall comply with the following rules: - built-in error values shall be specified in this file and those shall use
  /// [port] port is the port number of the ingress port.
  /// [protocol] protocol is the protocol of the ingress port. The supported values are: "TCP", "UDP", "SCTP"
  IngressPortStatus({
    this.error,
    required this.port,
    required this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'error': ?error,
      'port': port,
      'protocol': protocol,
    };
  }

  factory IngressPortStatus.fromMap(Map<String, dynamic> map) {
    return IngressPortStatus(
      error: map['error'] == null ? null : map['error'] as String,
      port: map['port'] as int,
      protocol: map['protocol'] as String,
    );
  }
}

