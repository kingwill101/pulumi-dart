// ignore_for_file: unused_element, unnecessary_cast


class ClusterNodeGroupAckConfigVolumeMount {
  /// The name of ack cluster job pod volume mounts.
  final String name;
  /// The path of ack cluster job pod volume mounts.
  final String path;

  /// Creates a new [ClusterNodeGroupAckConfigVolumeMount].
  /// [name] The name of ack cluster job pod volume mounts.
  /// [path] The path of ack cluster job pod volume mounts.
  ClusterNodeGroupAckConfigVolumeMount({
    required this.name,
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'path': path,
    };
  }

  factory ClusterNodeGroupAckConfigVolumeMount.fromMap(Map<String, dynamic> map) {
    return ClusterNodeGroupAckConfigVolumeMount(
      name: map['name'] as String,
      path: map['path'] as String,
    );
  }
}

