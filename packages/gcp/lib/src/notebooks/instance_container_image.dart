// ignore_for_file: unused_element, unnecessary_cast

class InstanceContainerImage {
  /// The path to the container image repository.
  /// For example: gcr.io/{project_id}/{imageName}
  final String repository;

  /// The tag of the container image. If not specified, this defaults to the latest tag.
  final String? tag;

  /// Creates a new [InstanceContainerImage].
  /// [repository] The path to the container image repository.
  /// [tag] The tag of the container image. If not specified, this defaults to the latest tag.
  InstanceContainerImage({required this.repository, this.tag});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'repository': repository, 'tag': ?tag};
  }

  factory InstanceContainerImage.fromMap(Map<String, dynamic> map) {
    return InstanceContainerImage(
      repository: map['repository'] as String,
      tag: map['tag'] == null ? null : map['tag'] as String,
    );
  }
}
