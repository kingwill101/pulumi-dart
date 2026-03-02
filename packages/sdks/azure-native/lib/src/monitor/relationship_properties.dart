// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Relationship properties
class RelationshipProperties {
  /// Resource name of the child entity
  final pulumi.Input<String> childEntityName;
  /// Display name
  final pulumi.Input<String>? displayName;
  /// Resource name of the parent entity
  final pulumi.Input<String> parentEntityName;
  /// Optional set of labels (key-value pairs)
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [RelationshipProperties].
  /// [childEntityName] Resource name of the child entity
  /// [displayName] Display name
  /// [parentEntityName] Resource name of the parent entity
  /// [tags] Optional set of labels (key-value pairs)
  RelationshipProperties({
    required this.childEntityName,
    this.displayName,
    required this.parentEntityName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'childEntityName': childEntityName,
      'displayName': ?displayName,
      'parentEntityName': parentEntityName,
      'tags': ?tags,
    };
  }

  factory RelationshipProperties.fromMap(Map<String, dynamic> map) {
    return RelationshipProperties(
      childEntityName: (map['childEntityName'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      parentEntityName: (map['parentEntityName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

