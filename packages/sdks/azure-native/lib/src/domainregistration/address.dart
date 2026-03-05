// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Address information for domain registration.
class Address {
  /// First line of an Address.
  final pulumi.Input<String> address1;
  /// The second line of the Address. Optional.
  final pulumi.Input<String>? address2;
  /// The city for the address.
  final pulumi.Input<String> city;
  /// The country for the address.
  final pulumi.Input<String> country;
  /// The postal code for the address.
  final pulumi.Input<String> postalCode;
  /// The state or province for the address.
  final pulumi.Input<String> state;

  /// Creates a new [Address].
  /// [address1] First line of an Address.
  /// [address2] The second line of the Address. Optional.
  /// [city] The city for the address.
  /// [country] The country for the address.
  /// [postalCode] The postal code for the address.
  /// [state] The state or province for the address.
  Address({
    required this.address1,
    this.address2,
    required this.city,
    required this.country,
    required this.postalCode,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address1': address1,
      'address2': ?address2,
      'city': city,
      'country': country,
      'postalCode': postalCode,
      'state': state,
    };
  }

  factory Address.fromMap(Map<String, dynamic> map) {
    return Address(
      address1: pulumi.Input.fromValue(map['address1'] as String),
      address2: (() { final guardedValue = map['address2']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      city: pulumi.Input.fromValue(map['city'] as String),
      country: pulumi.Input.fromValue(map['country'] as String),
      postalCode: pulumi.Input.fromValue(map['postalCode'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}

