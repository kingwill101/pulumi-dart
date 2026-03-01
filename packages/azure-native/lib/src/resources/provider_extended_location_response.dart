// ignore_for_file: unused_element, unnecessary_cast


/// The provider extended location.
class ProviderExtendedLocationResponse {
  /// The extended locations for the azure location.
  final List<String>? extendedLocations;
  /// The azure location.
  final String? location;
  /// The extended location type.
  final String? type;

  /// Creates a new [ProviderExtendedLocationResponse].
  /// [extendedLocations] The extended locations for the azure location.
  /// [location] The azure location.
  /// [type] The extended location type.
  ProviderExtendedLocationResponse({
    this.extendedLocations,
    this.location,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extendedLocations': ?extendedLocations,
      'location': ?location,
      'type': ?type,
    };
  }

  factory ProviderExtendedLocationResponse.fromMap(Map<String, dynamic> map) {
    return ProviderExtendedLocationResponse(
      extendedLocations: map['extendedLocations'] == null ? null : (map['extendedLocations'] as List).cast<String>(),
      location: map['location'] == null ? null : map['location'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

