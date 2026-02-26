// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_interconnect_locations_location/get_interconnect_locations_location.dart';

/// Result data returned by getInterconnectLocations.
class GetInterconnectLocationsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// A list of interconnect locations. Each location will have the following attributes:
  final List<GetInterconnectLocationsLocation> locations;
  final String project;

  GetInterconnectLocationsResult({
    required this.id,
    required this.locations,
    required this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['locations'] = Input.encodeList<GetInterconnectLocationsLocation,
        Map<String, dynamic>>(locations, (value) => value.toMap());
    map['project'] = project;
    return map;
  }

  factory GetInterconnectLocationsResult.fromMap(Map<String, dynamic> map) {
    return GetInterconnectLocationsResult(
      id: map['id'] as String,
      locations: Input.decodeList<GetInterconnectLocationsLocation>(
          map['locations'],
          (value) => GetInterconnectLocationsLocation.fromMap(
              (value as Map).cast<String, dynamic>())),
      project: map['project'] as String,
    );
  }
}
