// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_key_rings_key_ring.dart';

/// Result data returned by getKeyRings.
class GetKeyRingsResult {
  final String? filter;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// A list of all the retrieved key rings from the provided location. This list is influenced by the provided filter argument.
  final List<GetKeyRingsKeyRing> keyRings;
  final String location;
  final String? project;

  /// Creates a new [GetKeyRingsResult].
  /// [filter] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [keyRings] A list of all the retrieved key rings from the provided location. This list is influenced by the provided filter argument.
  /// [location] Required.
  /// [project] Optional.
  GetKeyRingsResult({
    this.filter,
    required this.id,
    required this.keyRings,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?filter,
      'id': id,
      'keyRings':
          pulumi.Input.encodeList<GetKeyRingsKeyRing, Map<String, dynamic>>(
            keyRings,
            (value) => value.toMap(),
          ),
      'location': location,
      'project': ?project,
    };
  }

  factory GetKeyRingsResult.fromMap(Map<String, dynamic> map) {
    return GetKeyRingsResult(
      filter: map['filter'] == null ? null : map['filter'] as String,
      id: map['id'] as String,
      keyRings: pulumi.Input.decodeList<GetKeyRingsKeyRing>(
        map['keyRings'],
        (value) =>
            GetKeyRingsKeyRing.fromMap((value as Map).cast<String, dynamic>()),
      ),
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
