// ignore_for_file: unused_element, unnecessary_cast


class ApplicationPvtzDiscoverySvcPortProtocol {
  final int? port;
  /// The protocol. Valid values: `TCP` and `UDP`.
  final String? protocol;

  /// Creates a new [ApplicationPvtzDiscoverySvcPortProtocol].
  /// [port] Optional.
  /// [protocol] The protocol. Valid values: `TCP` and `UDP`.
  ApplicationPvtzDiscoverySvcPortProtocol({
    this.port,
    this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': ?port,
      'protocol': ?protocol,
    };
  }

  factory ApplicationPvtzDiscoverySvcPortProtocol.fromMap(Map<String, dynamic> map) {
    return ApplicationPvtzDiscoverySvcPortProtocol(
      port: map['port'] == null ? null : map['port'] as int,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
    );
  }
}

