// ignore_for_file: unused_element, unnecessary_cast


/// Resource location data properties.
class ResourceLocationDataContractResponse {
  /// The city or locality where the resource is located.
  final String? city;
  /// The country or region where the resource is located.
  final String? countryOrRegion;
  /// The district, state, or province where the resource is located.
  final String? district;
  /// A canonical name for the geographic or physical location.
  final String name;

  /// Creates a new [ResourceLocationDataContractResponse].
  /// [city] The city or locality where the resource is located.
  /// [countryOrRegion] The country or region where the resource is located.
  /// [district] The district, state, or province where the resource is located.
  /// [name] A canonical name for the geographic or physical location.
  ResourceLocationDataContractResponse({
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

  factory ResourceLocationDataContractResponse.fromMap(Map<String, dynamic> map) {
    return ResourceLocationDataContractResponse(
      city: map['city'] == null ? null : map['city'] as String,
      countryOrRegion: map['countryOrRegion'] == null ? null : map['countryOrRegion'] as String,
      district: map['district'] == null ? null : map['district'] as String,
      name: map['name'] as String,
    );
  }
}

