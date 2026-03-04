// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetJobDefinitionEksPropertyPodPropertyVolumeHostPath {
  /// The path of the file or directory on the host to mount into containers on the pod.
  final pulumi.Input<String> path;

  /// Creates a new [GetJobDefinitionEksPropertyPodPropertyVolumeHostPath].
  /// [path] The path of the file or directory on the host to mount into containers on the pod.
  GetJobDefinitionEksPropertyPodPropertyVolumeHostPath({required this.path});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'path': path};
  }

  factory GetJobDefinitionEksPropertyPodPropertyVolumeHostPath.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetJobDefinitionEksPropertyPodPropertyVolumeHostPath(
      path: pulumi.Input.fromValue(map['path'] as String),
    );
  }
}
