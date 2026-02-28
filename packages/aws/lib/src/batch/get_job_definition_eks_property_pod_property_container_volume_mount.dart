// ignore_for_file: unused_element, unnecessary_cast

class GetJobDefinitionEksPropertyPodPropertyContainerVolumeMount {
  /// The path on the container where the volume is mounted.
  final String mountPath;

  /// The name of the job definition to register. It can be up to 128 letters long. It can contain uppercase and lowercase letters, numbers, hyphens (-), and underscores (_).
  final String name;

  /// If this value is true, the container has read-only access to the volume.
  final bool readOnly;

  /// Creates a new [GetJobDefinitionEksPropertyPodPropertyContainerVolumeMount].
  /// [mountPath] The path on the container where the volume is mounted.
  /// [name] The name of the job definition to register. It can be up to 128 letters long. It can contain uppercase and lowercase letters, numbers, hyphens (-), and underscores (_).
  /// [readOnly] If this value is true, the container has read-only access to the volume.
  GetJobDefinitionEksPropertyPodPropertyContainerVolumeMount({
    required this.mountPath,
    required this.name,
    required this.readOnly,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['mountPath'] = mountPath;
    map['name'] = name;
    map['readOnly'] = readOnly;
    return map;
  }

  factory GetJobDefinitionEksPropertyPodPropertyContainerVolumeMount.fromMap(
      Map<String, dynamic> map) {
    return GetJobDefinitionEksPropertyPodPropertyContainerVolumeMount(
      mountPath: map['mountPath'] as String,
      name: map['name'] as String,
      readOnly: map['readOnly'] as bool,
    );
  }
}
