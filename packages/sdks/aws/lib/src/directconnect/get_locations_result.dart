// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getLocations.
class GetLocationsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Code for the locations.
  final List<String>? locationCodes;
  final String? region;

  /// Creates a new [GetLocationsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [locationCodes] Code for the locations.
  /// [region] Optional.
  const GetLocationsResult({
    this.id,
    this.locationCodes,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'locationCodes': ?locationCodes,
      'region': ?region,
    };
  }

  factory GetLocationsResult.fromMap(Map<String, dynamic> map) {
    return GetLocationsResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      locationCodes: (() { final guardedValue = map['locationCodes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
