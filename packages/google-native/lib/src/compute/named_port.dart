// ignore_for_file: unused_element, unnecessary_cast

/// The named port. For example: <"http", 80>.
class NamedPort {
  /// The name for this named port. The name must be 1-63 characters long, and comply with RFC1035.
  final String? name;

  /// The port number, which can be a value between 1 and 65535.
  final int? port;

  /// Creates a new [NamedPort].
  /// [name] The name for this named port. The name must be 1-63 characters long, and comply with RFC1035.
  /// [port] The port number, which can be a value between 1 and 65535.
  NamedPort({
    this.name,
    this.port,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final portValue = port;
    if (portValue != null) {
      map['port'] = portValue;
    }
    return map;
  }

  factory NamedPort.fromMap(Map<String, dynamic> map) {
    return NamedPort(
      name: map['name'] == null ? null : map['name'] as String,
      port: map['port'] == null ? null : map['port'] as int,
    );
  }
}
