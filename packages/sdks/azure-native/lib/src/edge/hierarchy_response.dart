// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Hierarchy, to tag Sites / Hierarchy Provider nodes with what they represent
class HierarchyResponse {
  /// Description of Hierarchy
  final pulumi.Input<String> description;

  /// Name of Hierarchy
  final pulumi.Input<String> name;

  /// Creates a new [HierarchyResponse].
  /// [description] Description of Hierarchy
  /// [name] Name of Hierarchy
  HierarchyResponse({required this.description, required this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'description': description, 'name': name};
  }

  factory HierarchyResponse.fromMap(Map<String, dynamic> map) {
    return HierarchyResponse(
      description: pulumi.Input.fromValue(map['description'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
