// ignore_for_file: unused_element, unnecessary_cast

/// Fleet is the fleet configuration for the cluster.
class Fleet2 {
  /// The Fleet host project(project ID or project number) where this cluster will be registered to. This field cannot be changed after the cluster has been registered.
  final String? project;

  Fleet2({
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory Fleet2.fromMap(Map<String, dynamic> map) {
    return Fleet2(
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
