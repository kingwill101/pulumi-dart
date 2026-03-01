// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_adbs_character_sets_character_set.dart';

/// Result data returned by getAdbsCharacterSets.
class GetAdbsCharacterSetsResult {
  /// A `character_sets` block as defined below.
  final List<GetAdbsCharacterSetsCharacterSet> characterSets;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String location;

  /// Creates a new [GetAdbsCharacterSetsResult].
  /// [characterSets] A `character_sets` block as defined below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Required.
  GetAdbsCharacterSetsResult({
    required this.characterSets,
    required this.id,
    required this.location,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'characterSets': pulumi.Input.encodeList<GetAdbsCharacterSetsCharacterSet, Map<String, dynamic>>(characterSets, (value) => value.toMap()),
      'id': id,
      'location': location,
    };
  }

  factory GetAdbsCharacterSetsResult.fromMap(Map<String, dynamic> map) {
    return GetAdbsCharacterSetsResult(
      characterSets: pulumi.Input.decodeList<GetAdbsCharacterSetsCharacterSet>(map['characterSets'], (value) => GetAdbsCharacterSetsCharacterSet.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      location: map['location'] as String,
    );
  }
}

