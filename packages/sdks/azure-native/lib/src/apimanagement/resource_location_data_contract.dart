// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Resource location data properties.
class ResourceLocationDataContract {
  /// The city or locality where the resource is located.
  final pulumi.Input<String>? city;

  /// The country or region where the resource is located.
  final pulumi.Input<String>? countryOrRegion;

  /// The district, state, or province where the resource is located.
  final pulumi.Input<String>? district;

  /// A canonical name for the geographic or physical location.
  final pulumi.Input<String> name;

  /// Creates a new [ResourceLocationDataContract].
  /// [city] The city or locality where the resource is located.
  /// [countryOrRegion] The country or region where the resource is located.
  /// [district] The district, state, or province where the resource is located.
  /// [name] A canonical name for the geographic or physical location.
  ResourceLocationDataContract({
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

  factory ResourceLocationDataContract.fromMap(Map<String, dynamic> map) {
    return ResourceLocationDataContract(
      city: (() {
        final guardedValue = map['city'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      countryOrRegion: (() {
        final guardedValue = map['countryOrRegion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      district: (() {
        final guardedValue = map['district'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
