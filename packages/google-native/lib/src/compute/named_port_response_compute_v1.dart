// ignore_for_file: unused_element, unnecessary_cast

/// The named port. For example: <"http", 80>.
class NamedPortResponseComputeV1 {
  /// The name for this named port. The name must be 1-63 characters long, and comply with RFC1035.
  final String name;

  /// The port number, which can be a value between 1 and 65535.
  final int port;

  /// Creates a new [NamedPortResponseComputeV1].
  /// [name] The name for this named port. The name must be 1-63 characters long, and comply with RFC1035.
  /// [port] The port number, which can be a value between 1 and 65535.
  NamedPortResponseComputeV1({
    required this.name,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['port'] = port;
    return map;
  }

  factory NamedPortResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return NamedPortResponseComputeV1(
      name: map['name'] as String,
      port: map['port'] as int,
    );
  }
}
