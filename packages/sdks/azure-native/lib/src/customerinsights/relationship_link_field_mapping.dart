// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'link_types.dart';

/// The fields mapping for Relationships.
class RelationshipLinkFieldMapping {
  /// The field name on the Interaction Type.
  final pulumi.Input<String> interactionFieldName;
  /// Link type.
  final pulumi.Input<LinkTypes>? linkType;
  /// The field name on the Relationship metadata.
  final pulumi.Input<String> relationshipFieldName;

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
      'linkType': ?pulumi.Input.mapOptionalInputValue<LinkTypes, String>(linkType, (value) => value.value),
      'relationshipFieldName': relationshipFieldName,
    };
  }

  factory RelationshipLinkFieldMapping.fromMap(Map<String, dynamic> map) {
    return RelationshipLinkFieldMapping(
      interactionFieldName: (map['interactionFieldName'] as String).input(),
      linkType: map['linkType'] == null ? null : (LinkTypes.fromValue(map['linkType'] as String)).input(),
      relationshipFieldName: (map['relationshipFieldName'] as String).input(),
    );
  }
}

