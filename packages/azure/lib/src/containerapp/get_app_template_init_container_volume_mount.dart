// ignore_for_file: unused_element, unnecessary_cast


class GetAppTemplateInitContainerVolumeMount {
  /// The name of the Container App.
  final String name;
  /// The path in the container at which to mount this volume.
  final String path;
  /// The sub path of the volume to be mounted in the container.
  final String subPath;

  /// Creates a new [GetAppTemplateInitContainerVolumeMount].
  /// [name] The name of the Container App.
  /// [path] The path in the container at which to mount this volume.
  /// [subPath] The sub path of the volume to be mounted in the container.
  GetAppTemplateInitContainerVolumeMount({
    required this.name,
    required this.path,
    required this.subPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'path': path,
      'subPath': subPath,
    };
  }

  factory GetAppTemplateInitContainerVolumeMount.fromMap(Map<String, dynamic> map) {
    return GetAppTemplateInitContainerVolumeMount(
      name: map['name'] as String,
      path: map['path'] as String,
      subPath: map['subPath'] as String,
    );
  }
}

