// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Data processing location.
class MapsAccountPropertiesLocations {
  /// The location name.
  final pulumi.Input<String> locationName;

  /// Creates a new [MapsAccountPropertiesLocations].
  /// [locationName] The location name.
  const MapsAccountPropertiesLocations({
    required this.locationName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locationName': locationName,
    };
  }

  factory MapsAccountPropertiesLocations.fromMap(Map<String, dynamic> map) {
    return MapsAccountPropertiesLocations(
      locationName: pulumi.Input.fromValue(map['locationName'] as String),
    );
  }
}
