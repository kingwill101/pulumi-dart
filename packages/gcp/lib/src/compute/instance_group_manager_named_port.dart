// ignore_for_file: unused_element, unnecessary_cast


class InstanceGroupManagerNamedPort {
  /// The name of the port.
  final String name;
  /// The port number.
  /// - - -
  final int port;

  /// Creates a new [InstanceGroupManagerNamedPort].
  /// [name] The name of the port.
  /// [port] The port number.
  InstanceGroupManagerNamedPort({
    required this.name,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'port': port,
    };
  }

  factory InstanceGroupManagerNamedPort.fromMap(Map<String, dynamic> map) {
    return InstanceGroupManagerNamedPort(
      name: map['name'] as String,
      port: map['port'] as int,
    );
  }
}

