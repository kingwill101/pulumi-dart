// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getLocations.
class GetLocationsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Code for the locations.
  final List<String> locationCodes;
  final String region;

  /// Creates a new [GetLocationsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [locationCodes] Code for the locations.
  /// [region] Required.
  GetLocationsResult({
    required this.id,
    required this.locationCodes,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['locationCodes'] = locationCodes;
    map['region'] = region;
    return map;
  }

  factory GetLocationsResult.fromMap(Map<String, dynamic> map) {
    return GetLocationsResult(
      id: map['id'] as String,
      locationCodes: (map['locationCodes'] as List).cast<String>(),
      region: map['region'] as String,
    );
  }
}
