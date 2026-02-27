// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_locations_location/get_locations_location.dart';

/// Result data returned by getLocations.
class GetLocationsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Contains a list of `location`, which contains the details about a particular location.
  final List<GetLocationsLocation> locations;
  final String? project;

  GetLocationsResult({
    required this.id,
    required this.locations,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['locations'] =
        Input.encodeList<GetLocationsLocation, Map<String, dynamic>>(
            locations, (value) => value.toMap());
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetLocationsResult.fromMap(Map<String, dynamic> map) {
    return GetLocationsResult(
      id: map['id'] as String,
      locations: Input.decodeList<GetLocationsLocation>(
          map['locations'],
          (value) => GetLocationsLocation.fromMap(
              (value as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
