// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'relationship_type_field_mapping_response.dart';

/// Maps fields in Profile to their corresponding StrongIds in Related Profile.
class RelationshipTypeMappingResponse {
  /// Maps a profile property with the StrongId of related profile. This is an array to support StrongIds that are composite key as well.
  final pulumi.Input<List<RelationshipTypeFieldMappingResponse>> fieldMappings;

  /// Creates a new [RelationshipTypeMappingResponse].
  /// [fieldMappings] Maps a profile property with the StrongId of related profile. This is an array to support StrongIds that are composite key as well.
  RelationshipTypeMappingResponse({required this.fieldMappings});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fieldMappings':
          pulumi.Input.mapInputValue<
            List<RelationshipTypeFieldMappingResponse>,
            List<Map<String, dynamic>>
          >(
            fieldMappings,
            (value) =>
                pulumi.Input.encodeList<
                  RelationshipTypeFieldMappingResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory RelationshipTypeMappingResponse.fromMap(Map<String, dynamic> map) {
    return RelationshipTypeMappingResponse(
      fieldMappings: pulumi.Input.fromValue(
        pulumi.Input.decodeList<RelationshipTypeFieldMappingResponse>(
          map['fieldMappings']!,
          (value) => RelationshipTypeFieldMappingResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
