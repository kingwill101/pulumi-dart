// ignore_for_file: unused_element, unnecessary_cast


/// Relationship properties
class RelationshipPropertiesResponse {
  /// Resource name of the child entity
  final String childEntityName;
  /// Date when the relationship was (soft-)deleted
  final String deletionDate;
  /// Discovered by which discovery rule. If set, the relationship cannot be deleted manually.
  final String discoveredBy;
  /// Display name
  final String? displayName;
  /// Optional set of labels (key-value pairs)
  final Map<String, String>? labels;
  /// Resource name of the parent entity
  final String parentEntityName;
  /// The status of the last operation.
  final String provisioningState;

  /// Creates a new [RelationshipPropertiesResponse].
  /// [childEntityName] Resource name of the child entity
  /// [deletionDate] Date when the relationship was (soft-)deleted
  /// [discoveredBy] Discovered by which discovery rule. If set, the relationship cannot be deleted manually.
  /// [displayName] Display name
  /// [labels] Optional set of labels (key-value pairs)
  /// [parentEntityName] Resource name of the parent entity
  /// [provisioningState] The status of the last operation.
  RelationshipPropertiesResponse({
    required this.childEntityName,
    required this.deletionDate,
    required this.discoveredBy,
    this.displayName,
    this.labels,
    required this.parentEntityName,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'childEntityName': childEntityName,
      'deletionDate': deletionDate,
      'discoveredBy': discoveredBy,
      'displayName': ?displayName,
      'labels': ?labels,
      'parentEntityName': parentEntityName,
      'provisioningState': provisioningState,
    };
  }

  factory RelationshipPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return RelationshipPropertiesResponse(
      childEntityName: map['childEntityName'] as String,
      deletionDate: map['deletionDate'] as String,
      discoveredBy: map['discoveredBy'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      parentEntityName: map['parentEntityName'] as String,
      provisioningState: map['provisioningState'] as String,
    );
  }
}

