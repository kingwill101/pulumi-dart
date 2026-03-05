// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Site address properties
class SiteAddressProperties {
  /// City of the address
  final pulumi.Input<String>? city;
  /// Country of the address
  final pulumi.Input<String>? country;
  /// Postal or ZIP code of the address
  final pulumi.Input<String>? postalCode;
  /// State or province of the address
  final pulumi.Input<String>? stateOrProvince;
  /// First line of the street address
  final pulumi.Input<String>? streetAddress1;
  /// Second line of the street address
  final pulumi.Input<String>? streetAddress2;

  /// Creates a new [SiteAddressProperties].
  /// [city] City of the address
  /// [country] Country of the address
  /// [postalCode] Postal or ZIP code of the address
  /// [stateOrProvince] State or province of the address
  /// [streetAddress1] First line of the street address
  /// [streetAddress2] Second line of the street address
  SiteAddressProperties({
    this.city,
    this.country,
    this.postalCode,
    this.stateOrProvince,
    this.streetAddress1,
    this.streetAddress2,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'city': ?city,
      'country': ?country,
      'postalCode': ?postalCode,
      'stateOrProvince': ?stateOrProvince,
      'streetAddress1': ?streetAddress1,
      'streetAddress2': ?streetAddress2,
    };
  }

  factory SiteAddressProperties.fromMap(Map<String, dynamic> map) {
    return SiteAddressProperties(
      city: (() { final guardedValue = map['city']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      country: (() { final guardedValue = map['country']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      postalCode: (() { final guardedValue = map['postalCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stateOrProvince: (() { final guardedValue = map['stateOrProvince']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      streetAddress1: (() { final guardedValue = map['streetAddress1']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      streetAddress2: (() { final guardedValue = map['streetAddress2']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

