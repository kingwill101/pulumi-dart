// ignore_for_file: unused_element, unnecessary_cast


class DbInstanceInstanceNetInfoPortList {
  /// The port that is used to connect.
  final String? port;
  /// The protocol of the port.
  final String? protocol;

  /// Creates a new [DbInstanceInstanceNetInfoPortList].
  /// [port] The port that is used to connect.
  /// [protocol] The protocol of the port.
  DbInstanceInstanceNetInfoPortList({
    this.port,
    this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': ?port,
      'protocol': ?protocol,
    };
  }

  factory DbInstanceInstanceNetInfoPortList.fromMap(Map<String, dynamic> map) {
    return DbInstanceInstanceNetInfoPortList(
      port: map['port'] == null ? null : map['port'] as String,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
    );
  }
}

