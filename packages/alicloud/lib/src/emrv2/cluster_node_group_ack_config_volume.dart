// ignore_for_file: unused_element, unnecessary_cast


class ClusterNodeGroupAckConfigVolume {
  /// The name of ack cluster job pod volume mounts.
  final String name;
  /// The path of ack cluster job pod volume mounts.
  final String path;
  /// The ack cluster job pod volumes type.
  final String type;

  /// Creates a new [ClusterNodeGroupAckConfigVolume].
  /// [name] The name of ack cluster job pod volume mounts.
  /// [path] The path of ack cluster job pod volume mounts.
  /// [type] The ack cluster job pod volumes type.
  ClusterNodeGroupAckConfigVolume({
    required this.name,
    required this.path,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'path': path,
      'type': type,
    };
  }

  factory ClusterNodeGroupAckConfigVolume.fromMap(Map<String, dynamic> map) {
    return ClusterNodeGroupAckConfigVolume(
      name: map['name'] as String,
      path: map['path'] as String,
      type: map['type'] as String,
    );
  }
}

