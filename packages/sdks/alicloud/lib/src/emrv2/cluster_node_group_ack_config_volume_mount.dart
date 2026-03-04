// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNodeGroupAckConfigVolumeMount {
  /// The name of ack cluster job pod volume mounts.
  final pulumi.Input<String> name;

  /// The path of ack cluster job pod volume mounts.
  final pulumi.Input<String> path;

  /// Creates a new [ClusterNodeGroupAckConfigVolumeMount].
  /// [name] The name of ack cluster job pod volume mounts.
  /// [path] The path of ack cluster job pod volume mounts.
  ClusterNodeGroupAckConfigVolumeMount({
    required this.name,
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'path': path};
  }

  factory ClusterNodeGroupAckConfigVolumeMount.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterNodeGroupAckConfigVolumeMount(
      name: pulumi.Input.fromValue(map['name'] as String),
      path: pulumi.Input.fromValue(map['path'] as String),
    );
  }
}
