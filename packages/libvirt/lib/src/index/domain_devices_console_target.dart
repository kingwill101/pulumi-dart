// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesConsoleTarget {
  /// Sets the port number used for the console target.
  final double? port;
  /// Specifies the type of the console target.
  final String? type;

  /// Creates a new [DomainDevicesConsoleTarget].
  /// [port] Sets the port number used for the console target.
  /// [type] Specifies the type of the console target.
  DomainDevicesConsoleTarget({
    this.port,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': ?port,
      'type': ?type,
    };
  }

  factory DomainDevicesConsoleTarget.fromMap(Map<String, dynamic> map) {
    return DomainDevicesConsoleTarget(
      port: map['port'] == null ? null : map['port'] as double,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

