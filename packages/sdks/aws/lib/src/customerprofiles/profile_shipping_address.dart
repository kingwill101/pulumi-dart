// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProfileShippingAddress {
  /// The first line of a customer address.
  final pulumi.Input<String>? address1;
  /// The second line of a customer address.
  final pulumi.Input<String>? address2;
  /// The third line of a customer address.
  final pulumi.Input<String>? address3;
  /// The fourth line of a customer address.
  final pulumi.Input<String>? address4;
  /// The city in which a customer lives.
  final pulumi.Input<String>? city;
  /// The country in which a customer lives.
  final pulumi.Input<String>? country;
  /// The county in which a customer lives.
  final pulumi.Input<String>? county;
  /// The postal code of a customer address.
  final pulumi.Input<String>? postalCode;
  /// The province in which a customer lives.
  final pulumi.Input<String>? province;
  /// The state in which a customer lives.
  final pulumi.Input<String>? state;

  /// Creates a new [ProfileShippingAddress].
  /// [address1] The first line of a customer address.
  /// [address2] The second line of a customer address.
  /// [address3] The third line of a customer address.
  /// [address4] The fourth line of a customer address.
  /// [city] The city in which a customer lives.
  /// [country] The country in which a customer lives.
  /// [county] The county in which a customer lives.
  /// [postalCode] The postal code of a customer address.
  /// [province] The province in which a customer lives.
  /// [state] The state in which a customer lives.
  const ProfileShippingAddress({
    this.address1,
    this.address2,
    this.address3,
    this.address4,
    this.city,
    this.country,
    this.county,
    this.postalCode,
    this.province,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address1': ?address1,
      'address2': ?address2,
      'address3': ?address3,
      'address4': ?address4,
      'city': ?city,
      'country': ?country,
      'county': ?county,
      'postalCode': ?postalCode,
      'province': ?province,
      'state': ?state,
    };
  }

  factory ProfileShippingAddress.fromMap(Map<String, dynamic> map) {
    return ProfileShippingAddress(
      address1: (() { final guardedValue = map['address1']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      address2: (() { final guardedValue = map['address2']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      address3: (() { final guardedValue = map['address3']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      address4: (() { final guardedValue = map['address4']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      city: (() { final guardedValue = map['city']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      country: (() { final guardedValue = map['country']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      county: (() { final guardedValue = map['county']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      postalCode: (() { final guardedValue = map['postalCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      province: (() { final guardedValue = map['province']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

