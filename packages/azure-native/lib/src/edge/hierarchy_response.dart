// ignore_for_file: unused_element, unnecessary_cast


/// Hierarchy, to tag Sites / Hierarchy Provider nodes with what they represent
class HierarchyResponse {
  /// Description of Hierarchy
  final String description;
  /// Name of Hierarchy
  final String name;

  /// Creates a new [HierarchyResponse].
  /// [description] Description of Hierarchy
  /// [name] Name of Hierarchy
  HierarchyResponse({
    required this.description,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'name': name,
    };
  }

  factory HierarchyResponse.fromMap(Map<String, dynamic> map) {
    return HierarchyResponse(
      description: map['description'] as String,
      name: map['name'] as String,
    );
  }
}

