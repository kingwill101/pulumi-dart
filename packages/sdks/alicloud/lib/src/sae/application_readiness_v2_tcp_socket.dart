// ignore_for_file: unused_element, unnecessary_cast


class ApplicationReadinessV2TcpSocket {
  final int? port;

  /// Creates a new [ApplicationReadinessV2TcpSocket].
  /// [port] Optional.
  ApplicationReadinessV2TcpSocket({
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': ?port,
    };
  }

  factory ApplicationReadinessV2TcpSocket.fromMap(Map<String, dynamic> map) {
    return ApplicationReadinessV2TcpSocket(
      port: map['port'] == null ? null : map['port'] as int,
    );
  }
}

