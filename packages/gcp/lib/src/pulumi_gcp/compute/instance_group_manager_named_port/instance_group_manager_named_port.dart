// ignore_for_file: unused_element, unnecessary_cast

class InstanceGroupManagerNamedPort {
  /// The name of the port.
  final String name;

  /// The port number.
  /// - - -
  final int port;

  InstanceGroupManagerNamedPort({
    required this.name,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['port'] = port;
    return map;
  }

  factory InstanceGroupManagerNamedPort.fromMap(Map<String, dynamic> map) {
    return InstanceGroupManagerNamedPort(
      name: map['name'] as String,
      port: map['port'] as int,
    );
  }
}
