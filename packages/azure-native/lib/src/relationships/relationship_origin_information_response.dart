// ignore_for_file: unused_element, unnecessary_cast


/// Provides information about the origin of a relationship.
class RelationshipOriginInformationResponse {
  /// The name of the discovery engine that created the relationship.
  final String discoveryEngine;
  /// Identifies the origin type of the relationship.
  final String relationshipOriginType;

  /// Creates a new [RelationshipOriginInformationResponse].
  /// [discoveryEngine] The name of the discovery engine that created the relationship.
  /// [relationshipOriginType] Identifies the origin type of the relationship.
  RelationshipOriginInformationResponse({
    required this.discoveryEngine,
    required this.relationshipOriginType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'discoveryEngine': discoveryEngine,
      'relationshipOriginType': relationshipOriginType,
    };
  }

  factory RelationshipOriginInformationResponse.fromMap(Map<String, dynamic> map) {
    return RelationshipOriginInformationResponse(
      discoveryEngine: map['discoveryEngine'] as String,
      relationshipOriginType: map['relationshipOriginType'] as String,
    );
  }
}

