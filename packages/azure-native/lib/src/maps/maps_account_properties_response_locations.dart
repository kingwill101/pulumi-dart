// ignore_for_file: unused_element, unnecessary_cast


/// Data processing location.
class MapsAccountPropertiesResponseLocations {
  /// The location name.
  final String locationName;

  /// Creates a new [MapsAccountPropertiesResponseLocations].
  /// [locationName] The location name.
  MapsAccountPropertiesResponseLocations({
    required this.locationName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locationName': locationName,
    };
  }

  factory MapsAccountPropertiesResponseLocations.fromMap(Map<String, dynamic> map) {
    return MapsAccountPropertiesResponseLocations(
      locationName: map['locationName'] as String,
    );
  }
}

