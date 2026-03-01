// ignore_for_file: unused_element, unnecessary_cast


/// The port exposed on the container group.
class Port {
  /// The port number.
  final int port;
  /// The protocol associated with the port.
  final String? protocol;

  /// Creates a new [Port].
  /// [port] The port number.
  /// [protocol] The protocol associated with the port.
  Port({
    required this.port,
    this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': port,
      'protocol': ?protocol,
    };
  }

  factory Port.fromMap(Map<String, dynamic> map) {
    return Port(
      port: map['port'] as int,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
    );
  }
}

