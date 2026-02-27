// ignore_for_file: unused_element, unnecessary_cast

class GetAncestryAncestor {
  /// If it's a project, the `project_id` is exported, else the numeric folder id or organization id.
  final String id;

  /// One of `"project"`, `"folder"` or `"organization"`.
  final String type;

  GetAncestryAncestor({
    required this.id,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['type'] = type;
    return map;
  }

  factory GetAncestryAncestor.fromMap(Map<String, dynamic> map) {
    return GetAncestryAncestor(
      id: map['id'] as String,
      type: map['type'] as String,
    );
  }
}
