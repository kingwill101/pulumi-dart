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
  ProfileShippingAddress({
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
      address1: map['address1'] == null ? null : ((map['address1'] as String).input()).input(),
      address2: map['address2'] == null ? null : ((map['address2'] as String).input()).input(),
      address3: map['address3'] == null ? null : ((map['address3'] as String).input()).input(),
      address4: map['address4'] == null ? null : ((map['address4'] as String).input()).input(),
      city: map['city'] == null ? null : ((map['city'] as String).input()).input(),
      country: map['country'] == null ? null : ((map['country'] as String).input()).input(),
      county: map['county'] == null ? null : ((map['county'] as String).input()).input(),
      postalCode: map['postalCode'] == null ? null : ((map['postalCode'] as String).input()).input(),
      province: map['province'] == null ? null : ((map['province'] as String).input()).input(),
      state: map['state'] == null ? null : ((map['state'] as String).input()).input(),
    );
  }
}

