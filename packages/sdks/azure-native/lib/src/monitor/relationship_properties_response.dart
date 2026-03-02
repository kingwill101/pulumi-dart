// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Relationship properties
class RelationshipPropertiesResponse {
  /// Resource name of the child entity
  final pulumi.Input<String> childEntityName;
  /// Date when the relationship was (soft-)deleted
  final pulumi.Input<String> deletionDate;
  /// Discovered by which discovery rule. If set, the relationship cannot be deleted manually.
  final pulumi.Input<String> discoveredBy;
  /// Display name
  final pulumi.Input<String>? displayName;
  /// Resource name of the parent entity
  final pulumi.Input<String> parentEntityName;
  /// The status of the last operation.
  final pulumi.Input<String> provisioningState;
  /// Optional set of labels (key-value pairs)
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [RelationshipPropertiesResponse].
  /// [childEntityName] Resource name of the child entity
  /// [deletionDate] Date when the relationship was (soft-)deleted
  /// [discoveredBy] Discovered by which discovery rule. If set, the relationship cannot be deleted manually.
  /// [displayName] Display name
  /// [parentEntityName] Resource name of the parent entity
  /// [provisioningState] The status of the last operation.
  /// [tags] Optional set of labels (key-value pairs)
  RelationshipPropertiesResponse({
    required this.childEntityName,
    required this.deletionDate,
    required this.discoveredBy,
    this.displayName,
    required this.parentEntityName,
    required this.provisioningState,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'childEntityName': childEntityName,
      'deletionDate': deletionDate,
      'discoveredBy': discoveredBy,
      'displayName': ?displayName,
      'parentEntityName': parentEntityName,
      'provisioningState': provisioningState,
      'tags': ?tags,
    };
  }

  factory RelationshipPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return RelationshipPropertiesResponse(
      childEntityName: (map['childEntityName'] as String).input(),
      deletionDate: (map['deletionDate'] as String).input(),
      discoveredBy: (map['discoveredBy'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      parentEntityName: (map['parentEntityName'] as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

