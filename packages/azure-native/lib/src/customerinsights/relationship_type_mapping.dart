// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'relationship_type_field_mapping.dart';

/// Maps fields in Profile to their corresponding StrongIds in Related Profile.
class RelationshipTypeMapping {
  /// Maps a profile property with the StrongId of related profile. This is an array to support StrongIds that are composite key as well.
  final List<RelationshipTypeFieldMapping> fieldMappings;

  /// Creates a new [RelationshipTypeMapping].
  /// [fieldMappings] Maps a profile property with the StrongId of related profile. This is an array to support StrongIds that are composite key as well.
  RelationshipTypeMapping({
    required this.fieldMappings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fieldMappings': pulumi.Input.encodeList<RelationshipTypeFieldMapping, Map<String, dynamic>>(fieldMappings, (value) => value.toMap()),
    };
  }

  factory RelationshipTypeMapping.fromMap(Map<String, dynamic> map) {
    return RelationshipTypeMapping(
      fieldMappings: pulumi.Input.decodeList<RelationshipTypeFieldMapping>(map['fieldMappings'], (value) => RelationshipTypeFieldMapping.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

