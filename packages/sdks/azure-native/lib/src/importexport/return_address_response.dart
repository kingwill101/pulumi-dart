// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the return address information for the job.
class ReturnAddressResponse {
  /// The city name to use when returning the drives.
  final pulumi.Input<String> city;
  /// The country or region to use when returning the drives.
  final pulumi.Input<String> countryOrRegion;
  /// Email address of the recipient of the returned drives.
  final pulumi.Input<String> email;
  /// Phone number of the recipient of the returned drives.
  final pulumi.Input<String> phone;
  /// The postal code to use when returning the drives.
  final pulumi.Input<String> postalCode;
  /// The name of the recipient who will receive the hard drives when they are returned.
  final pulumi.Input<String> recipientName;
  /// The state or province to use when returning the drives.
  final pulumi.Input<String>? stateOrProvince;
  /// The first line of the street address to use when returning the drives.
  final pulumi.Input<String> streetAddress1;
  /// The second line of the street address to use when returning the drives.
  final pulumi.Input<String>? streetAddress2;

  /// Creates a new [ReturnAddressResponse].
  /// [city] The city name to use when returning the drives.
  /// [countryOrRegion] The country or region to use when returning the drives.
  /// [email] Email address of the recipient of the returned drives.
  /// [phone] Phone number of the recipient of the returned drives.
  /// [postalCode] The postal code to use when returning the drives.
  /// [recipientName] The name of the recipient who will receive the hard drives when they are returned.
  /// [stateOrProvince] The state or province to use when returning the drives.
  /// [streetAddress1] The first line of the street address to use when returning the drives.
  /// [streetAddress2] The second line of the street address to use when returning the drives.
  ReturnAddressResponse({
    required this.city,
    required this.countryOrRegion,
    required this.email,
    required this.phone,
    required this.postalCode,
    required this.recipientName,
    this.stateOrProvince,
    required this.streetAddress1,
    this.streetAddress2,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'city': city,
      'countryOrRegion': countryOrRegion,
      'email': email,
      'phone': phone,
      'postalCode': postalCode,
      'recipientName': recipientName,
      'stateOrProvince': ?stateOrProvince,
      'streetAddress1': streetAddress1,
      'streetAddress2': ?streetAddress2,
    };
  }

  factory ReturnAddressResponse.fromMap(Map<String, dynamic> map) {
    return ReturnAddressResponse(
      city: pulumi.Input.fromValue(map['city'] as String),
      countryOrRegion: pulumi.Input.fromValue(map['countryOrRegion'] as String),
      email: pulumi.Input.fromValue(map['email'] as String),
      phone: pulumi.Input.fromValue(map['phone'] as String),
      postalCode: pulumi.Input.fromValue(map['postalCode'] as String),
      recipientName: pulumi.Input.fromValue(map['recipientName'] as String),
      stateOrProvince: (() { final guardedValue = map['stateOrProvince']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      streetAddress1: pulumi.Input.fromValue(map['streetAddress1'] as String),
      streetAddress2: (() { final guardedValue = map['streetAddress2']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

