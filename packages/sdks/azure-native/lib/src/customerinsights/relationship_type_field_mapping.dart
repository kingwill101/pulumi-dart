// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Map a field of profile to its corresponding StrongId in Related Profile.
class RelationshipTypeFieldMapping {
  /// Specifies the fieldName in profile.
  final pulumi.Input<String> profileFieldName;
  /// Specifies the KeyProperty (from StrongId) of the related profile.
  final pulumi.Input<String> relatedProfileKeyProperty;

  /// Creates a new [RelationshipTypeFieldMapping].
  /// [profileFieldName] Specifies the fieldName in profile.
  /// [relatedProfileKeyProperty] Specifies the KeyProperty (from StrongId) of the related profile.
  const RelationshipTypeFieldMapping({
    required this.profileFieldName,
    required this.relatedProfileKeyProperty,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'profileFieldName': profileFieldName,
      'relatedProfileKeyProperty': relatedProfileKeyProperty,
    };
  }

  factory RelationshipTypeFieldMapping.fromMap(Map<String, dynamic> map) {
    return RelationshipTypeFieldMapping(
      profileFieldName: pulumi.Input.fromValue(map['profileFieldName'] as String),
      relatedProfileKeyProperty: pulumi.Input.fromValue(map['relatedProfileKeyProperty'] as String),
    );
  }
}

