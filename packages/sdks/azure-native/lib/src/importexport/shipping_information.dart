// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Contains information about the Microsoft datacenter to which the drives should be shipped.
class ShippingInformation {
  /// The city name to use when returning the drives.
  final pulumi.Input<String>? city;
  /// The country or region to use when returning the drives.
  final pulumi.Input<String>? countryOrRegion;
  /// Phone number of the recipient of the returned drives.
  final pulumi.Input<String>? phone;
  /// The postal code to use when returning the drives.
  final pulumi.Input<String>? postalCode;
  /// The name of the recipient who will receive the hard drives when they are returned.
  final pulumi.Input<String>? recipientName;
  /// The state or province to use when returning the drives.
  final pulumi.Input<String>? stateOrProvince;
  /// The first line of the street address to use when returning the drives.
  final pulumi.Input<String>? streetAddress1;
  /// The second line of the street address to use when returning the drives.
  final pulumi.Input<String>? streetAddress2;

  /// Creates a new [ShippingInformation].
  /// [city] The city name to use when returning the drives.
  /// [countryOrRegion] The country or region to use when returning the drives.
  /// [phone] Phone number of the recipient of the returned drives.
  /// [postalCode] The postal code to use when returning the drives.
  /// [recipientName] The name of the recipient who will receive the hard drives when they are returned.
  /// [stateOrProvince] The state or province to use when returning the drives.
  /// [streetAddress1] The first line of the street address to use when returning the drives.
  /// [streetAddress2] The second line of the street address to use when returning the drives.
  ShippingInformation({
    this.city,
    this.countryOrRegion,
    this.phone,
    this.postalCode,
    this.recipientName,
    this.stateOrProvince,
    this.streetAddress1,
    this.streetAddress2,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'city': ?city,
      'countryOrRegion': ?countryOrRegion,
      'phone': ?phone,
      'postalCode': ?postalCode,
      'recipientName': ?recipientName,
      'stateOrProvince': ?stateOrProvince,
      'streetAddress1': ?streetAddress1,
      'streetAddress2': ?streetAddress2,
    };
  }

  factory ShippingInformation.fromMap(Map<String, dynamic> map) {
    return ShippingInformation(
      city: map['city'] == null ? null : (map['city'] as String).input(),
      countryOrRegion: map['countryOrRegion'] == null ? null : (map['countryOrRegion'] as String).input(),
      phone: map['phone'] == null ? null : (map['phone'] as String).input(),
      postalCode: map['postalCode'] == null ? null : (map['postalCode'] as String).input(),
      recipientName: map['recipientName'] == null ? null : (map['recipientName'] as String).input(),
      stateOrProvince: map['stateOrProvince'] == null ? null : (map['stateOrProvince'] as String).input(),
      streetAddress1: map['streetAddress1'] == null ? null : (map['streetAddress1'] as String).input(),
      streetAddress2: map['streetAddress2'] == null ? null : (map['streetAddress2'] as String).input(),
    );
  }
}

