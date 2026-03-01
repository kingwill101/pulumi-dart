// ignore_for_file: unused_element, unnecessary_cast


/// Data processing location.
class MapsAccountPropertiesLocations {
  /// The location name.
  final String locationName;

  /// Creates a new [MapsAccountPropertiesLocations].
  /// [locationName] The location name.
  MapsAccountPropertiesLocations({
    required this.locationName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locationName': locationName,
    };
  }

  factory MapsAccountPropertiesLocations.fromMap(Map<String, dynamic> map) {
    return MapsAccountPropertiesLocations(
      locationName: map['locationName'] as String,
    );
  }
}

