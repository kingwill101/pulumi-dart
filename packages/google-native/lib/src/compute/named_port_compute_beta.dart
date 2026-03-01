// ignore_for_file: unused_element, unnecessary_cast

/// The named port. For example: <"http", 80>.
class NamedPortComputeBeta {
  /// The name for this named port. The name must be 1-63 characters long, and comply with RFC1035.
  final String? name;

  /// The port number, which can be a value between 1 and 65535.
  final int? port;

  /// Creates a new [NamedPortComputeBeta].
  /// [name] The name for this named port. The name must be 1-63 characters long, and comply with RFC1035.
  /// [port] The port number, which can be a value between 1 and 65535.
  NamedPortComputeBeta({this.name, this.port});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': ?name, 'port': ?port};
  }

  factory NamedPortComputeBeta.fromMap(Map<String, dynamic> map) {
    return NamedPortComputeBeta(
      name: map['name'] == null ? null : map['name'] as String,
      port: map['port'] == null ? null : map['port'] as int,
    );
  }
}
