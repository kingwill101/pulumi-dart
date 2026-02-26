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
    final map = <String, dynamic>{};
    final address1Value = address1;
    if (address1Value != null) {
      map['address1'] = address1Value;
    }
    final address2Value = address2;
    if (address2Value != null) {
      map['address2'] = address2Value;
    }
    final address3Value = address3;
    if (address3Value != null) {
      map['address3'] = address3Value;
    }
    final address4Value = address4;
    if (address4Value != null) {
      map['address4'] = address4Value;
    }
    final cityValue = city;
    if (cityValue != null) {
      map['city'] = cityValue;
    }
    final countryValue = country;
    if (countryValue != null) {
      map['country'] = countryValue;
    }
    final countyValue = county;
    if (countyValue != null) {
      map['county'] = countyValue;
    }
    final postalCodeValue = postalCode;
    if (postalCodeValue != null) {
      map['postalCode'] = postalCodeValue;
    }
    final provinceValue = province;
    if (provinceValue != null) {
      map['province'] = provinceValue;
    }
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = stateValue;
    }
    return map;
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
      postalCode:
          map['postalCode'] == null ? null : map['postalCode'] as String,
      province: map['province'] == null ? null : map['province'] as String,
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}
