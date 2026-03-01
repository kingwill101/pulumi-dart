// ignore_for_file: unused_element, unnecessary_cast


class GetLocationData {
  /// The city or locality where the resource is located.
  final String city;
  /// The country or region where the resource is located.
  final String countryOrRegion;
  /// The district, state, or province where the resource is located.
  final String district;
  /// The name of this Azure Arc machine.
  final String name;

  /// Creates a new [GetLocationData].
  /// [city] The city or locality where the resource is located.
  /// [countryOrRegion] The country or region where the resource is located.
  /// [district] The district, state, or province where the resource is located.
  /// [name] The name of this Azure Arc machine.
  GetLocationData({
    required this.city,
    required this.countryOrRegion,
    required this.district,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'city': city,
      'countryOrRegion': countryOrRegion,
      'district': district,
      'name': name,
    };
  }

  factory GetLocationData.fromMap(Map<String, dynamic> map) {
    return GetLocationData(
      city: map['city'] as String,
      countryOrRegion: map['countryOrRegion'] as String,
      district: map['district'] as String,
      name: map['name'] as String,
    );
  }
}

