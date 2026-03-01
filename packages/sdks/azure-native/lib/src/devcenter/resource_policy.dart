// ignore_for_file: unused_element, unnecessary_cast


/// A resource policy.
class ResourcePolicy {
  /// Optional. When specified, this expression is used to filter the resources.
  final String? filter;
  /// Resources that are included and shared as a part of a project policy.
  final String? resources;

  /// Creates a new [ResourcePolicy].
  /// [filter] Optional. When specified, this expression is used to filter the resources.
  /// [resources] Resources that are included and shared as a part of a project policy.
  ResourcePolicy({
    this.filter,
    this.resources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?filter,
      'resources': ?resources,
    };
  }

  factory ResourcePolicy.fromMap(Map<String, dynamic> map) {
    return ResourcePolicy(
      filter: map['filter'] == null ? null : map['filter'] as String,
      resources: map['resources'] == null ? null : map['resources'] as String,
    );
  }
}

