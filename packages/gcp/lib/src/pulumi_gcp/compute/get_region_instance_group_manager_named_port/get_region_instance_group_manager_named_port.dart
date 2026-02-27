// ignore_for_file: unused_element, unnecessary_cast

class GetRegionInstanceGroupManagerNamedPort {
  /// The name of the instance group. Either `name` or `self_link` must be provided.
  final String name;

  /// The port number.
  final int port;

  GetRegionInstanceGroupManagerNamedPort({
    required this.name,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['port'] = port;
    return map;
  }

  factory GetRegionInstanceGroupManagerNamedPort.fromMap(
      Map<String, dynamic> map) {
    return GetRegionInstanceGroupManagerNamedPort(
      name: map['name'] as String,
      port: map['port'] as int,
    );
  }
}
