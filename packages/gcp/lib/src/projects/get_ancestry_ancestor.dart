// ignore_for_file: unused_element, unnecessary_cast

class GetAncestryAncestor {
  /// If it's a project, the `project_id` is exported, else the numeric folder id or organization id.
  final String id;

  /// One of `"project"`, `"folder"` or `"organization"`.
  final String type;

  /// Creates a new [GetAncestryAncestor].
  /// [id] If it's a project, the `project_id` is exported, else the numeric folder id or organization id.
  /// [type] One of `"project"`, `"folder"` or `"organization"`.
  GetAncestryAncestor({required this.id, required this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': id, 'type': type};
  }

  factory GetAncestryAncestor.fromMap(Map<String, dynamic> map) {
    return GetAncestryAncestor(
      id: map['id'] as String,
      type: map['type'] as String,
    );
  }
}
