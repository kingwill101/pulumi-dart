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
  const RelationshipLinkFieldMapping({
    required this.interactionFieldName,
    this.linkType,
    required this.relationshipFieldName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'interactionFieldName': interactionFieldName,
      'linkType': ?pulumi.Input.mapOptionalInputValue<LinkTypes, String>(linkType, (value) => value.wireValue),
      'relationshipFieldName': relationshipFieldName,
    };
  }

  factory RelationshipLinkFieldMapping.fromMap(Map<String, dynamic> map) {
    return RelationshipLinkFieldMapping(
      interactionFieldName: pulumi.Input.fromValue(map['interactionFieldName'] as String),
      linkType: (() { final guardedValue = map['linkType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LinkTypes.fromValue(guardedValue as String)); })(),
      relationshipFieldName: pulumi.Input.fromValue(map['relationshipFieldName'] as String),
    );
  }
}
