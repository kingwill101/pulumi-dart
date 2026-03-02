// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The fields mapping for Relationships.
class RelationshipLinkFieldMappingResponse {
  /// The field name on the Interaction Type.
  final pulumi.Input<String> interactionFieldName;
  /// Link type.
  final pulumi.Input<String>? linkType;
  /// The field name on the Relationship metadata.
  final pulumi.Input<String> relationshipFieldName;

  /// Creates a new [RelationshipLinkFieldMappingResponse].
  /// [interactionFieldName] The field name on the Interaction Type.
  /// [linkType] Link type.
  /// [relationshipFieldName] The field name on the Relationship metadata.
  RelationshipLinkFieldMappingResponse({
    required this.interactionFieldName,
    this.linkType,
    required this.relationshipFieldName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'interactionFieldName': interactionFieldName,
      'linkType': ?linkType,
      'relationshipFieldName': relationshipFieldName,
    };
  }

  factory RelationshipLinkFieldMappingResponse.fromMap(Map<String, dynamic> map) {
    return RelationshipLinkFieldMappingResponse(
      interactionFieldName: (map['interactionFieldName'] as String).input(),
      linkType: map['linkType'] == null ? null : (map['linkType']! as String).input(),
      relationshipFieldName: (map['relationshipFieldName'] as String).input(),
    );
  }
}

