// ignore_for_file: unused_element, unnecessary_cast


class GetInstanceGroupManagerNamedPort {
  /// The name of the instance group. Either `name` or `self_link` must be provided.
  final String name;
  /// The port number.
  final int port;

  /// Creates a new [GetInstanceGroupManagerNamedPort].
  /// [name] The name of the instance group. Either `name` or `self_link` must be provided.
  /// [port] The port number.
  GetInstanceGroupManagerNamedPort({
    required this.name,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'port': port,
    };
  }

  factory GetInstanceGroupManagerNamedPort.fromMap(Map<String, dynamic> map) {
    return GetInstanceGroupManagerNamedPort(
      name: map['name'] as String,
      port: map['port'] as int,
    );
  }
}

