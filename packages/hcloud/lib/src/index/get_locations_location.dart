// ignore_for_file: unused_element, unnecessary_cast


class GetLocationsLocation {
  /// Name of the closest city to the Location. City name and optionally state in short form.
  final String city;
  /// Country the Location resides in. ISO 3166-1 alpha-2 code of the country.
  final String country;
  /// Description of the Location.
  final String description;
  /// ID of the Location.
  final int id;
  /// Latitude of the city closest to the Location.
  final double latitude;
  /// Longitude of the city closest to the Location.
  final double longitude;
  /// Name of the Location.
  final String name;
  /// Name of the Network Zone this Location resides in.
  final String networkZone;

  /// Creates a new [GetLocationsLocation].
  /// [city] Name of the closest city to the Location. City name and optionally state in short form.
  /// [country] Country the Location resides in. ISO 3166-1 alpha-2 code of the country.
  /// [description] Description of the Location.
  /// [id] ID of the Location.
  /// [latitude] Latitude of the city closest to the Location.
  /// [longitude] Longitude of the city closest to the Location.
  /// [name] Name of the Location.
  /// [networkZone] Name of the Network Zone this Location resides in.
  GetLocationsLocation({
    required this.city,
    required this.country,
    required this.description,
    required this.id,
    required this.latitude,
    required this.longitude,
    required this.name,
    required this.networkZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'city': city,
      'country': country,
      'description': description,
      'id': id,
      'latitude': latitude,
      'longitude': longitude,
      'name': name,
      'networkZone': networkZone,
    };
  }

  factory GetLocationsLocation.fromMap(Map<String, dynamic> map) {
    return GetLocationsLocation(
      city: map['city'] as String,
      country: map['country'] as String,
      description: map['description'] as String,
      id: map['id'] as int,
      latitude: map['latitude'] as double,
      longitude: map['longitude'] as double,
      name: map['name'] as String,
      networkZone: map['networkZone'] as String,
    );
  }
}

