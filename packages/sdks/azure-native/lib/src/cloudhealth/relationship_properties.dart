// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Relationship properties
class RelationshipProperties {
  /// Resource name of the child entity
  final pulumi.Input<String> childEntityName;
  /// Display name
  final pulumi.Input<String>? displayName;
  /// Optional set of labels (key-value pairs)
  final pulumi.Input<Map<String, String>>? labels;
  /// Resource name of the parent entity
  final pulumi.Input<String> parentEntityName;

  /// Creates a new [RelationshipProperties].
  /// [childEntityName] Resource name of the child entity
  /// [displayName] Display name
  /// [labels] Optional set of labels (key-value pairs)
  /// [parentEntityName] Resource name of the parent entity
  RelationshipProperties({
    required this.childEntityName,
    this.displayName,
    this.labels,
    required this.parentEntityName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'childEntityName': childEntityName,
      'displayName': ?displayName,
      'labels': ?labels,
      'parentEntityName': parentEntityName,
    };
  }

  factory RelationshipProperties.fromMap(Map<String, dynamic> map) {
    return RelationshipProperties(
      childEntityName: (map['childEntityName'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      parentEntityName: (map['parentEntityName'] as String).input(),
    );
  }
}

