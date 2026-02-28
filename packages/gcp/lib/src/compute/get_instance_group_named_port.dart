// ignore_for_file: unused_element, unnecessary_cast


class GetInstanceGroupNamedPort {
  /// The name of the instance group. Either `name` or `self_link` must be provided.
  final String name;
  final int port;

  /// Creates a new [GetInstanceGroupNamedPort].
  /// [name] The name of the instance group. Either `name` or `self_link` must be provided.
  /// [port] Required.
  GetInstanceGroupNamedPort({
    required this.name,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'port': port,
    };
  }

  factory GetInstanceGroupNamedPort.fromMap(Map<String, dynamic> map) {
    return GetInstanceGroupNamedPort(
      name: map['name'] as String,
      port: map['port'] as int,
    );
  }
}

