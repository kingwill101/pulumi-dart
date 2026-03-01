// ignore_for_file: unused_element, unnecessary_cast


class GetNamespacesNamespace {
  /// Boolean, when it set to true, repositories are automatically created when pushing new images. If it set to false, you create repository for images before pushing.
  final bool autoCreate;
  /// `PUBLIC` or `PRIVATE`, default repository visibility in this namespace.
  final String defaultVisibility;
  /// Name of Container Registry namespace.
  final String name;

  /// Creates a new [GetNamespacesNamespace].
  /// [autoCreate] Boolean, when it set to true, repositories are automatically created when pushing new images. If it set to false, you create repository for images before pushing.
  /// [defaultVisibility] `PUBLIC` or `PRIVATE`, default repository visibility in this namespace.
  /// [name] Name of Container Registry namespace.
  GetNamespacesNamespace({
    required this.autoCreate,
    required this.defaultVisibility,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoCreate': autoCreate,
      'defaultVisibility': defaultVisibility,
      'name': name,
    };
  }

  factory GetNamespacesNamespace.fromMap(Map<String, dynamic> map) {
    return GetNamespacesNamespace(
      autoCreate: map['autoCreate'] as bool,
      defaultVisibility: map['defaultVisibility'] as String,
      name: map['name'] as String,
    );
  }
}

