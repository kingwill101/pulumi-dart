// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The shipping address of the customer.
class AddressResponse {
  /// The address line1.
  final pulumi.Input<String>? addressLine1;
  /// The address line2.
  final pulumi.Input<String>? addressLine2;
  /// The address line3.
  final pulumi.Input<String>? addressLine3;
  /// The city name.
  final pulumi.Input<String>? city;
  /// The country name.
  final pulumi.Input<String> country;
  /// The postal code.
  final pulumi.Input<String>? postalCode;
  /// The state name.
  final pulumi.Input<String>? state;

  /// Creates a new [AddressResponse].
  /// [addressLine1] The address line1.
  /// [addressLine2] The address line2.
  /// [addressLine3] The address line3.
  /// [city] The city name.
  /// [country] The country name.
  /// [postalCode] The postal code.
  /// [state] The state name.
  const AddressResponse({
    this.addressLine1,
    this.addressLine2,
    this.addressLine3,
    this.city,
    required this.country,
    this.postalCode,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressLine1': ?addressLine1,
      'addressLine2': ?addressLine2,
      'addressLine3': ?addressLine3,
      'city': ?city,
      'country': country,
      'postalCode': ?postalCode,
      'state': ?state,
    };
  }

  factory AddressResponse.fromMap(Map<String, dynamic> map) {
    return AddressResponse(
      addressLine1: (() { final guardedValue = map['addressLine1']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      addressLine2: (() { final guardedValue = map['addressLine2']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      addressLine3: (() { final guardedValue = map['addressLine3']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      city: (() { final guardedValue = map['city']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      country: pulumi.Input.fromValue(map['country'] as String),
      postalCode: (() { final guardedValue = map['postalCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

