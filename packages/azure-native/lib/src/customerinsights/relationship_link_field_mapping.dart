// ignore_for_file: unused_element, unnecessary_cast

import 'link_types.dart';

/// The fields mapping for Relationships.
class RelationshipLinkFieldMapping {
  /// The field name on the Interaction Type.
  final String interactionFieldName;
  /// Link type.
  final LinkTypes? linkType;
  /// The field name on the Relationship metadata.
  final String relationshipFieldName;

  /// Creates a new [RelationshipLinkFieldMapping].
  /// [interactionFieldName] The field name on the Interaction Type.
  /// [linkType] Link type.
  /// [relationshipFieldName] The field name on the Relationship metadata.
  RelationshipLinkFieldMapping({
    required this.interactionFieldName,
    this.linkType,
    required this.relationshipFieldName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'interactionFieldName': interactionFieldName,
      'linkType': ?linkType == null ? null : linkType!.value,
      'relationshipFieldName': relationshipFieldName,
    };
  }

  factory RelationshipLinkFieldMapping.fromMap(Map<String, dynamic> map) {
    return RelationshipLinkFieldMapping(
      interactionFieldName: map['interactionFieldName'] as String,
      linkType: map['linkType'] == null ? null : LinkTypes.fromValue(map['linkType'] as String),
      relationshipFieldName: map['relationshipFieldName'] as String,
    );
  }
}

