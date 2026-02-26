// ignore_for_file: unused_element, unnecessary_cast

class RuntimeSoftwareConfigKernel {
  /// The path to the container image repository.
  /// For example: gcr.io/{project_id}/{imageName}
  final String repository;

  /// The tag of the container image. If not specified, this defaults to the latest tag.
  final String? tag;

  RuntimeSoftwareConfigKernel({
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

  factory RuntimeSoftwareConfigKernel.fromMap(Map<String, dynamic> map) {
    return RuntimeSoftwareConfigKernel(
      repository: map['repository'] as String,
      tag: map['tag'] == null ? null : map['tag'] as String,
    );
  }
}
