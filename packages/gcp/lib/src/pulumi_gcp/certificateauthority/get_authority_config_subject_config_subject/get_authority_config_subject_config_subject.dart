// ignore_for_file: unused_element, unnecessary_cast

class GetAuthorityConfigSubjectConfigSubject {
  /// The common name of the distinguished name.
  final String commonName;

  /// The country code of the subject.
  final String countryCode;

  /// The locality or city of the subject.
  final String locality;

  /// The organization of the subject.
  final String organization;

  /// The organizational unit of the subject.
  final String organizationalUnit;

  /// The postal code of the subject.
  final String postalCode;

  /// The province, territory, or regional state of the subject.
  final String province;

  /// The street address of the subject.
  final String streetAddress;

  GetAuthorityConfigSubjectConfigSubject({
    required this.commonName,
    required this.countryCode,
    required this.locality,
    required this.organization,
    required this.organizationalUnit,
    required this.postalCode,
    required this.province,
    required this.streetAddress,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['commonName'] = commonName;
    map['countryCode'] = countryCode;
    map['locality'] = locality;
    map['organization'] = organization;
    map['organizationalUnit'] = organizationalUnit;
    map['postalCode'] = postalCode;
    map['province'] = province;
    map['streetAddress'] = streetAddress;
    return map;
  }

  factory GetAuthorityConfigSubjectConfigSubject.fromMap(
      Map<String, dynamic> map) {
    return GetAuthorityConfigSubjectConfigSubject(
      commonName: map['commonName'] as String,
      countryCode: map['countryCode'] as String,
      locality: map['locality'] as String,
      organization: map['organization'] as String,
      organizationalUnit: map['organizationalUnit'] as String,
      postalCode: map['postalCode'] as String,
      province: map['province'] as String,
      streetAddress: map['streetAddress'] as String,
    );
  }
}
