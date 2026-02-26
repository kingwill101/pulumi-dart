// ignore_for_file: unused_element, unnecessary_cast

class InstanceGroupNamedPort {
  /// The name which the port will be mapped to.
  final String name;

  /// The port number to map the name to.
  final int port;

  InstanceGroupNamedPort({
    required this.name,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['port'] = port;
    return map;
  }

  factory InstanceGroupNamedPort.fromMap(Map<String, dynamic> map) {
    return InstanceGroupNamedPort(
      name: map['name'] as String,
      port: map['port'] as int,
    );
  }
}
