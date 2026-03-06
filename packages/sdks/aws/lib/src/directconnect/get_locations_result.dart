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
  const GetLocationsResult({
    required this.id,
    required this.locationCodes,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'locationCodes': locationCodes,
      'region': region,
    };
  }

  factory GetLocationsResult.fromMap(Map<String, dynamic> map) {
    return GetLocationsResult(
      id: map['id'] as String,
      locationCodes: (map['locationCodes'] as List).cast<String>(),
      region: map['region'] as String,
    );
  }
}

