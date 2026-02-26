// ignore_for_file: unused_element, unnecessary_cast

/// Definition of a container image for starting a notebook instance with the environment installed in a container.
class ContainerImageResponse2 {
  /// The path to the container image repository. For example: `gcr.io/{project_id}/{image_name}`
  final String repository;

  /// Optional. The tag of the container image. If not specified, this defaults to the latest tag.
  final String tag;

  ContainerImageResponse2({
    required this.repository,
    required this.tag,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['repository'] = repository;
    map['tag'] = tag;
    return map;
  }

  factory ContainerImageResponse2.fromMap(Map<String, dynamic> map) {
    return ContainerImageResponse2(
      repository: map['repository'] as String,
      tag: map['tag'] as String,
    );
  }
}
