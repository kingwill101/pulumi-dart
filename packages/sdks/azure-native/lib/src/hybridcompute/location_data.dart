// ignore_for_file: unused_element, unnecessary_cast


/// Metadata pertaining to the geographic location of the resource.
class LocationData {
  /// The city or locality where the resource is located.
  final String? city;
  /// The country or region where the resource is located
  final String? countryOrRegion;
  /// The district, state, or province where the resource is located.
  final String? district;
  /// A canonical name for the geographic or physical location.
  final String name;

  /// Creates a new [LocationData].
  /// [city] The city or locality where the resource is located.
  /// [countryOrRegion] The country or region where the resource is located
  /// [district] The district, state, or province where the resource is located.
  /// [name] A canonical name for the geographic or physical location.
  LocationData({
    this.city,
    this.countryOrRegion,
    this.district,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'city': ?city,
      'countryOrRegion': ?countryOrRegion,
      'district': ?district,
      'name': name,
    };
  }

  factory LocationData.fromMap(Map<String, dynamic> map) {
    return LocationData(
      city: map['city'] == null ? null : map['city'] as String,
      countryOrRegion: map['countryOrRegion'] == null ? null : map['countryOrRegion'] as String,
      district: map['district'] == null ? null : map['district'] as String,
      name: map['name'] as String,
    );
  }
}

