// ignore_for_file: unused_element, unnecessary_cast


class AuthorityConfigSubjectConfigSubject {
  /// The common name of the distinguished name.
  final String commonName;
  /// The country code of the subject.
  final String? countryCode;
  /// The locality or city of the subject.
  final String? locality;
  /// The organization of the subject.
  final String? organization;
  /// The organizational unit of the subject.
  final String? organizationalUnit;
  /// The postal code of the subject.
  final String? postalCode;
  /// The province, territory, or regional state of the subject.
  final String? province;
  /// The street address of the subject.
  final String? streetAddress;

  /// Creates a new [AuthorityConfigSubjectConfigSubject].
  /// [commonName] The common name of the distinguished name.
  /// [countryCode] The country code of the subject.
  /// [locality] The locality or city of the subject.
  /// [organization] The organization of the subject.
  /// [organizationalUnit] The organizational unit of the subject.
  /// [postalCode] The postal code of the subject.
  /// [province] The province, territory, or regional state of the subject.
  /// [streetAddress] The street address of the subject.
  AuthorityConfigSubjectConfigSubject({
    required this.commonName,
    this.countryCode,
    this.locality,
    this.organization,
    this.organizationalUnit,
    this.postalCode,
    this.province,
    this.streetAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commonName': commonName,
      'countryCode': ?countryCode,
      'locality': ?locality,
      'organization': ?organization,
      'organizationalUnit': ?organizationalUnit,
      'postalCode': ?postalCode,
      'province': ?province,
      'streetAddress': ?streetAddress,
    };
  }

  factory AuthorityConfigSubjectConfigSubject.fromMap(Map<String, dynamic> map) {
    return AuthorityConfigSubjectConfigSubject(
      commonName: map['commonName'] as String,
      countryCode: map['countryCode'] == null ? null : map['countryCode'] as String,
      locality: map['locality'] == null ? null : map['locality'] as String,
      organization: map['organization'] == null ? null : map['organization'] as String,
      organizationalUnit: map['organizationalUnit'] == null ? null : map['organizationalUnit'] as String,
      postalCode: map['postalCode'] == null ? null : map['postalCode'] as String,
      province: map['province'] == null ? null : map['province'] as String,
      streetAddress: map['streetAddress'] == null ? null : map['streetAddress'] as String,
    );
  }
}

