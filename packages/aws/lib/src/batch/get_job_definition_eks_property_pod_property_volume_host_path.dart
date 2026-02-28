// ignore_for_file: unused_element, unnecessary_cast

class GetJobDefinitionEksPropertyPodPropertyVolumeHostPath {
  /// The path of the file or directory on the host to mount into containers on the pod.
  final String path;

  /// Creates a new [GetJobDefinitionEksPropertyPodPropertyVolumeHostPath].
  /// [path] The path of the file or directory on the host to mount into containers on the pod.
  GetJobDefinitionEksPropertyPodPropertyVolumeHostPath({
    required this.path,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['path'] = path;
    return map;
  }

  factory GetJobDefinitionEksPropertyPodPropertyVolumeHostPath.fromMap(
      Map<String, dynamic> map) {
    return GetJobDefinitionEksPropertyPodPropertyVolumeHostPath(
      path: map['path'] as String,
    );
  }
}
