// ignore_for_file: unused_element, unnecessary_cast


class GetContainerGroupsGroupInitContainerVolumeMount {
  /// The directory of the mounted volume. Data under this directory will be overwritten by the data in the volume.
  final String mountPath;
  /// The name of the volume. The name is the same as the volume you selected when you purchased the container.
  final String name;
  /// Default value: `false`.
  final bool readOnly;

  /// Creates a new [GetContainerGroupsGroupInitContainerVolumeMount].
  /// [mountPath] The directory of the mounted volume. Data under this directory will be overwritten by the data in the volume.
  /// [name] The name of the volume. The name is the same as the volume you selected when you purchased the container.
  /// [readOnly] Default value: `false`.
  GetContainerGroupsGroupInitContainerVolumeMount({
    required this.mountPath,
    required this.name,
    required this.readOnly,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mountPath': mountPath,
      'name': name,
      'readOnly': readOnly,
    };
  }

  factory GetContainerGroupsGroupInitContainerVolumeMount.fromMap(Map<String, dynamic> map) {
    return GetContainerGroupsGroupInitContainerVolumeMount(
      mountPath: map['mountPath'] as String,
      name: map['name'] as String,
      readOnly: map['readOnly'] as bool,
    );
  }
}

