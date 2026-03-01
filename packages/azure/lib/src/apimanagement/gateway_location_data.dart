// ignore_for_file: unused_element, unnecessary_cast


class GatewayLocationData {
  /// The city or locality where the resource is located.
  final String? city;
  /// The district, state, or province where the resource is located.
  final String? district;
  /// A canonical name for the geographic or physical location.
  final String name;
  /// The country or region where the resource is located.
  final String? region;

  /// Creates a new [GatewayLocationData].
  /// [city] The city or locality where the resource is located.
  /// [district] The district, state, or province where the resource is located.
  /// [name] A canonical name for the geographic or physical location.
  /// [region] The country or region where the resource is located.
  GatewayLocationData({
    this.city,
    this.district,
    required this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'city': ?city,
      'district': ?district,
      'name': name,
      'region': ?region,
    };
  }

  factory GatewayLocationData.fromMap(Map<String, dynamic> map) {
    return GatewayLocationData(
      city: map['city'] == null ? null : map['city'] as String,
      district: map['district'] == null ? null : map['district'] as String,
      name: map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}

