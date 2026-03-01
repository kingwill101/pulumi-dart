// ignore_for_file: unused_element, unnecessary_cast


/// The names of the group, the version, and the resource.
class GroupVersionResource {
  /// The name of the group.
  final String? group;
  /// The name of the resource.
  final String? resource;
  /// The name of the version.
  final String? version;

  /// Creates a new [GroupVersionResource].
  /// [group] The name of the group.
  /// [resource] The name of the resource.
  /// [version] The name of the version.
  GroupVersionResource({
    this.group,
    this.resource,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'group': ?group,
      'resource': ?resource,
      'version': ?version,
    };
  }

  factory GroupVersionResource.fromMap(Map<String, dynamic> map) {
    return GroupVersionResource(
      group: map['group'] == null ? null : map['group'] as String,
      resource: map['resource'] == null ? null : map['resource'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

