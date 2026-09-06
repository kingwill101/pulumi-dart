// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Relationship properties
class RelationshipProperties {
  /// Resource name of the child entity
  final pulumi.Input<String> childEntityName;
  /// Display name
  final pulumi.Input<String?>? displayName;
  /// Optional set of labels (key-value pairs)
  final pulumi.Input<Map<String, String>?>? labels;
  /// Resource name of the parent entity
  final pulumi.Input<String> parentEntityName;

  /// Creates a new [RelationshipProperties].
  /// [childEntityName] Resource name of the child entity
  /// [displayName] Display name
  /// [labels] Optional set of labels (key-value pairs)
  /// [parentEntityName] Resource name of the parent entity
  const RelationshipProperties({
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
      childEntityName: pulumi.Input.fromValue(map['childEntityName'] as String),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      parentEntityName: pulumi.Input.fromValue(map['parentEntityName'] as String),
    );
  }
}
