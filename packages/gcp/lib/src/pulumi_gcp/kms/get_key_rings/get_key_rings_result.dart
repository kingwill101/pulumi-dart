// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_key_rings_key_ring/get_key_rings_key_ring.dart';

/// Result data returned by getKeyRings.
class GetKeyRingsResult {
  final String? filter;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// A list of all the retrieved key rings from the provided location. This list is influenced by the provided filter argument.
  final List<GetKeyRingsKeyRing> keyRings;
  final String location;
  final String? project;

  GetKeyRingsResult({
    this.filter,
    required this.id,
    required this.keyRings,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filterValue = filter;
    if (filterValue != null) {
      map['filter'] = filterValue;
    }
    map['id'] = id;
    map['keyRings'] =
        Input.encodeList<GetKeyRingsKeyRing, Map<String, dynamic>>(
            keyRings, (value) => value.toMap());
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetKeyRingsResult.fromMap(Map<String, dynamic> map) {
    return GetKeyRingsResult(
      filter: map['filter'] == null ? null : map['filter'] as String,
      id: map['id'] as String,
      keyRings: Input.decodeList<GetKeyRingsKeyRing>(
          map['keyRings'],
          (value) => GetKeyRingsKeyRing.fromMap(
              (value as Map).cast<String, dynamic>())),
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
