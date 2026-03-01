// ignore_for_file: unused_element, unnecessary_cast

class KeystoresAliasesSelfSignedCertSubject {
  /// Common name of the organization. Maximum length is 64 characters.
  final String? commonName;

  /// Two-letter country code. Example, IN for India, US for United States of America.
  final String? countryCode;

  /// Email address. Max 255 characters.
  final String? email;

  /// City or town name. Maximum length is 128 characters.
  final String? locality;

  /// Organization name. Maximum length is 64 characters.
  final String? org;

  /// Organization team name. Maximum length is 64 characters.
  final String? orgUnit;

  /// State or district name. Maximum length is 128 characters.
  final String? state;

  /// Creates a new [KeystoresAliasesSelfSignedCertSubject].
  /// [commonName] Common name of the organization. Maximum length is 64 characters.
  /// [countryCode] Two-letter country code. Example, IN for India, US for United States of America.
  /// [email] Email address. Max 255 characters.
  /// [locality] City or town name. Maximum length is 128 characters.
  /// [org] Organization name. Maximum length is 64 characters.
  /// [orgUnit] Organization team name. Maximum length is 64 characters.
  /// [state] State or district name. Maximum length is 128 characters.
  KeystoresAliasesSelfSignedCertSubject({
    this.commonName,
    this.countryCode,
    this.email,
    this.locality,
    this.org,
    this.orgUnit,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commonName': ?commonName,
      'countryCode': ?countryCode,
      'email': ?email,
      'locality': ?locality,
      'org': ?org,
      'orgUnit': ?orgUnit,
      'state': ?state,
    };
  }

  factory KeystoresAliasesSelfSignedCertSubject.fromMap(
    Map<String, dynamic> map,
  ) {
    return KeystoresAliasesSelfSignedCertSubject(
      commonName: map['commonName'] == null
          ? null
          : map['commonName'] as String,
      countryCode: map['countryCode'] == null
          ? null
          : map['countryCode'] as String,
      email: map['email'] == null ? null : map['email'] as String,
      locality: map['locality'] == null ? null : map['locality'] as String,
      org: map['org'] == null ? null : map['org'] as String,
      orgUnit: map['orgUnit'] == null ? null : map['orgUnit'] as String,
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}
