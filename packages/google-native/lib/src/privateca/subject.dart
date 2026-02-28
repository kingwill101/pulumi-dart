// ignore_for_file: unused_element, unnecessary_cast

/// Subject describes parts of a distinguished name that, in turn, describes the subject of the certificate.
class Subject {
  /// The "common name" of the subject.
  final String? commonName;

  /// The country code of the subject.
  final String? countryCode;

  /// The locality or city of the subject.
  final String? locality;

  /// The organization of the subject.
  final String? organization;

  /// The organizational_unit of the subject.
  final String? organizationalUnit;

  /// The postal code of the subject.
  final String? postalCode;

  /// The province, territory, or regional state of the subject.
  final String? province;

  /// The street address of the subject.
  final String? streetAddress;

  /// Creates a new [Subject].
  /// [commonName] The "common name" of the subject.
  /// [countryCode] The country code of the subject.
  /// [locality] The locality or city of the subject.
  /// [organization] The organization of the subject.
  /// [organizationalUnit] The organizational_unit of the subject.
  /// [postalCode] The postal code of the subject.
  /// [province] The province, territory, or regional state of the subject.
  /// [streetAddress] The street address of the subject.
  Subject({
    this.commonName,
    this.countryCode,
    this.locality,
    this.organization,
    this.organizationalUnit,
    this.postalCode,
    this.province,
    this.streetAddress,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final commonNameValue = commonName;
    if (commonNameValue != null) {
      map['commonName'] = commonNameValue;
    }
    final countryCodeValue = countryCode;
    if (countryCodeValue != null) {
      map['countryCode'] = countryCodeValue;
    }
    final localityValue = locality;
    if (localityValue != null) {
      map['locality'] = localityValue;
    }
    final organizationValue = organization;
    if (organizationValue != null) {
      map['organization'] = organizationValue;
    }
    final organizationalUnitValue = organizationalUnit;
    if (organizationalUnitValue != null) {
      map['organizationalUnit'] = organizationalUnitValue;
    }
    final postalCodeValue = postalCode;
    if (postalCodeValue != null) {
      map['postalCode'] = postalCodeValue;
    }
    final provinceValue = province;
    if (provinceValue != null) {
      map['province'] = provinceValue;
    }
    final streetAddressValue = streetAddress;
    if (streetAddressValue != null) {
      map['streetAddress'] = streetAddressValue;
    }
    return map;
  }

  factory Subject.fromMap(Map<String, dynamic> map) {
    return Subject(
      commonName:
          map['commonName'] == null ? null : map['commonName'] as String,
      countryCode:
          map['countryCode'] == null ? null : map['countryCode'] as String,
      locality: map['locality'] == null ? null : map['locality'] as String,
      organization:
          map['organization'] == null ? null : map['organization'] as String,
      organizationalUnit: map['organizationalUnit'] == null
          ? null
          : map['organizationalUnit'] as String,
      postalCode:
          map['postalCode'] == null ? null : map['postalCode'] as String,
      province: map['province'] == null ? null : map['province'] as String,
      streetAddress:
          map['streetAddress'] == null ? null : map['streetAddress'] as String,
    );
  }
}
