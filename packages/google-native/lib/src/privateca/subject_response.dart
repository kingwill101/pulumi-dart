// ignore_for_file: unused_element, unnecessary_cast

/// Subject describes parts of a distinguished name that, in turn, describes the subject of the certificate.
class SubjectResponse {
  /// The "common name" of the subject.
  final String commonName;

  /// The country code of the subject.
  final String countryCode;

  /// The locality or city of the subject.
  final String locality;

  /// The organization of the subject.
  final String organization;

  /// The organizational_unit of the subject.
  final String organizationalUnit;

  /// The postal code of the subject.
  final String postalCode;

  /// The province, territory, or regional state of the subject.
  final String province;

  /// The street address of the subject.
  final String streetAddress;

  /// Creates a new [SubjectResponse].
  /// [commonName] The "common name" of the subject.
  /// [countryCode] The country code of the subject.
  /// [locality] The locality or city of the subject.
  /// [organization] The organization of the subject.
  /// [organizationalUnit] The organizational_unit of the subject.
  /// [postalCode] The postal code of the subject.
  /// [province] The province, territory, or regional state of the subject.
  /// [streetAddress] The street address of the subject.
  SubjectResponse({
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

  factory SubjectResponse.fromMap(Map<String, dynamic> map) {
    return SubjectResponse(
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
