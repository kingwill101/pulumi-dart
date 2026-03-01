// ignore_for_file: unused_element, unnecessary_cast


class ProfileAddress {
  /// The first line of a customer address.
  final String? address1;
  /// The second line of a customer address.
  final String? address2;
  /// The third line of a customer address.
  final String? address3;
  /// The fourth line of a customer address.
  final String? address4;
  /// The city in which a customer lives.
  final String? city;
  /// The country in which a customer lives.
  final String? country;
  /// The county in which a customer lives.
  final String? county;
  /// The postal code of a customer address.
  final String? postalCode;
  /// The province in which a customer lives.
  final String? province;
  /// The state in which a customer lives.
  final String? state;

  /// Creates a new [ProfileAddress].
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
  ProfileAddress({
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

  factory ProfileAddress.fromMap(Map<String, dynamic> map) {
    return ProfileAddress(
      address1: map['address1'] == null ? null : map['address1'] as String,
      address2: map['address2'] == null ? null : map['address2'] as String,
      address3: map['address3'] == null ? null : map['address3'] as String,
      address4: map['address4'] == null ? null : map['address4'] as String,
      city: map['city'] == null ? null : map['city'] as String,
      country: map['country'] == null ? null : map['country'] as String,
      county: map['county'] == null ? null : map['county'] as String,
      postalCode: map['postalCode'] == null ? null : map['postalCode'] as String,
      province: map['province'] == null ? null : map['province'] as String,
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

