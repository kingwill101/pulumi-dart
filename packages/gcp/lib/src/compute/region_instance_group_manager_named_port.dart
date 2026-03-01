// ignore_for_file: unused_element, unnecessary_cast

class RegionInstanceGroupManagerNamedPort {
  /// The name of the port.
  final String name;

  /// The port number.
  /// - - -
  final int port;

  /// Creates a new [RegionInstanceGroupManagerNamedPort].
  /// [name] The name of the port.
  /// [port] The port number.
  RegionInstanceGroupManagerNamedPort({required this.name, required this.port});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'port': port};
  }

  factory RegionInstanceGroupManagerNamedPort.fromMap(
    Map<String, dynamic> map,
  ) {
    return RegionInstanceGroupManagerNamedPort(
      name: map['name'] as String,
      port: map['port'] as int,
    );
  }
}
