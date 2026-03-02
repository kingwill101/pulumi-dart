// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Map a field of profile to its corresponding StrongId in Related Profile.
class RelationshipTypeFieldMappingResponse {
  /// Specifies the fieldName in profile.
  final pulumi.Input<String> profileFieldName;
  /// Specifies the KeyProperty (from StrongId) of the related profile.
  final pulumi.Input<String> relatedProfileKeyProperty;

  /// Creates a new [RelationshipTypeFieldMappingResponse].
  /// [profileFieldName] Specifies the fieldName in profile.
  /// [relatedProfileKeyProperty] Specifies the KeyProperty (from StrongId) of the related profile.
  RelationshipTypeFieldMappingResponse({
    required this.profileFieldName,
    required this.relatedProfileKeyProperty,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'profileFieldName': profileFieldName,
      'relatedProfileKeyProperty': relatedProfileKeyProperty,
    };
  }

  factory RelationshipTypeFieldMappingResponse.fromMap(Map<String, dynamic> map) {
    return RelationshipTypeFieldMappingResponse(
      profileFieldName: (map['profileFieldName'] as String).input(),
      relatedProfileKeyProperty: (map['relatedProfileKeyProperty'] as String).input(),
    );
  }
}

