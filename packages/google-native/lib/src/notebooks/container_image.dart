// ignore_for_file: unused_element, unnecessary_cast

/// Definition of a container image for starting a notebook instance with the environment installed in a container.
class ContainerImage {
  /// The path to the container image repository. For example: `gcr.io/{project_id}/{image_name}`
  final String repository;

  /// The tag of the container image. If not specified, this defaults to the latest tag.
  final String? tag;

  /// Creates a new [ContainerImage].
  /// [repository] The path to the container image repository. For example: `gcr.io/{project_id}/{image_name}`
  /// [tag] The tag of the container image. If not specified, this defaults to the latest tag.
  ContainerImage({
    required this.repository,
    this.tag,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['repository'] = repository;
    final tagValue = tag;
    if (tagValue != null) {
      map['tag'] = tagValue;
    }
    return map;
  }

  factory ContainerImage.fromMap(Map<String, dynamic> map) {
    return ContainerImage(
      repository: map['repository'] as String,
      tag: map['tag'] == null ? null : map['tag'] as String,
    );
  }
}
