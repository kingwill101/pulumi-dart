// ignore_for_file: unused_element, unnecessary_cast

class CertificateAuthorityCertificateAuthorityConfigurationSubject {
  /// Fully qualified domain name (FQDN) associated with the certificate subject. Must be less than or equal to 64 characters in length.
  final String? commonName;

  /// Two digit code that specifies the country in which the certificate subject located. Must be less than or equal to 2 characters in length.
  final String? country;

  /// Disambiguating information for the certificate subject. Must be less than or equal to 64 characters in length.
  final String? distinguishedNameQualifier;

  /// Typically a qualifier appended to the name of an individual. Examples include Jr. for junior, Sr. for senior, and III for third. Must be less than or equal to 3 characters in length.
  final String? generationQualifier;

  /// First name. Must be less than or equal to 16 characters in length.
  final String? givenName;

  /// Concatenation that typically contains the first letter of the `given_name`, the first letter of the middle name if one exists, and the first letter of the `surname`. Must be less than or equal to 5 characters in length.
  final String? initials;

  /// Locality (such as a city or town) in which the certificate subject is located. Must be less than or equal to 128 characters in length.
  final String? locality;

  /// Legal name of the organization with which the certificate subject is affiliated. Must be less than or equal to 64 characters in length.
  final String? organization;

  /// Subdivision or unit of the organization (such as sales or finance) with which the certificate subject is affiliated. Must be less than or equal to 64 characters in length.
  final String? organizationalUnit;

  /// Typically a shortened version of a longer `given_name`. For example, Jonathan is often shortened to John. Elizabeth is often shortened to Beth, Liz, or Eliza. Must be less than or equal to 128 characters in length.
  final String? pseudonym;

  /// State in which the subject of the certificate is located. Must be less than or equal to 128 characters in length.
  final String? state;

  /// Family name. In the US and the UK for example, the surname of an individual is ordered last. In Asian cultures the surname is typically ordered first. Must be less than or equal to 40 characters in length.
  final String? surname;

  /// Title such as Mr. or Ms. which is pre-pended to the name to refer formally to the certificate subject. Must be less than or equal to 64 characters in length.
  final String? title;

  /// Creates a new [CertificateAuthorityCertificateAuthorityConfigurationSubject].
  /// [commonName] Fully qualified domain name (FQDN) associated with the certificate subject. Must be less than or equal to 64 characters in length.
  /// [country] Two digit code that specifies the country in which the certificate subject located. Must be less than or equal to 2 characters in length.
  /// [distinguishedNameQualifier] Disambiguating information for the certificate subject. Must be less than or equal to 64 characters in length.
  /// [generationQualifier] Typically a qualifier appended to the name of an individual. Examples include Jr. for junior, Sr. for senior, and III for third. Must be less than or equal to 3 characters in length.
  /// [givenName] First name. Must be less than or equal to 16 characters in length.
  /// [initials] Concatenation that typically contains the first letter of the `given_name`, the first letter of the middle name if one exists, and the first letter of the `surname`. Must be less than or equal to 5 characters in length.
  /// [locality] Locality (such as a city or town) in which the certificate subject is located. Must be less than or equal to 128 characters in length.
  /// [organization] Legal name of the organization with which the certificate subject is affiliated. Must be less than or equal to 64 characters in length.
  /// [organizationalUnit] Subdivision or unit of the organization (such as sales or finance) with which the certificate subject is affiliated. Must be less than or equal to 64 characters in length.
  /// [pseudonym] Typically a shortened version of a longer `given_name`. For example, Jonathan is often shortened to John. Elizabeth is often shortened to Beth, Liz, or Eliza. Must be less than or equal to 128 characters in length.
  /// [state] State in which the subject of the certificate is located. Must be less than or equal to 128 characters in length.
  /// [surname] Family name. In the US and the UK for example, the surname of an individual is ordered last. In Asian cultures the surname is typically ordered first. Must be less than or equal to 40 characters in length.
  /// [title] Title such as Mr. or Ms. which is pre-pended to the name to refer formally to the certificate subject. Must be less than or equal to 64 characters in length.
  CertificateAuthorityCertificateAuthorityConfigurationSubject({
    this.commonName,
    this.country,
    this.distinguishedNameQualifier,
    this.generationQualifier,
    this.givenName,
    this.initials,
    this.locality,
    this.organization,
    this.organizationalUnit,
    this.pseudonym,
    this.state,
    this.surname,
    this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commonName': ?commonName,
      'country': ?country,
      'distinguishedNameQualifier': ?distinguishedNameQualifier,
      'generationQualifier': ?generationQualifier,
      'givenName': ?givenName,
      'initials': ?initials,
      'locality': ?locality,
      'organization': ?organization,
      'organizationalUnit': ?organizationalUnit,
      'pseudonym': ?pseudonym,
      'state': ?state,
      'surname': ?surname,
      'title': ?title,
    };
  }

  factory CertificateAuthorityCertificateAuthorityConfigurationSubject.fromMap(
    Map<String, dynamic> map,
  ) {
    return CertificateAuthorityCertificateAuthorityConfigurationSubject(
      commonName: map['commonName'] == null
          ? null
          : map['commonName'] as String,
      country: map['country'] == null ? null : map['country'] as String,
      distinguishedNameQualifier: map['distinguishedNameQualifier'] == null
          ? null
          : map['distinguishedNameQualifier'] as String,
      generationQualifier: map['generationQualifier'] == null
          ? null
          : map['generationQualifier'] as String,
      givenName: map['givenName'] == null ? null : map['givenName'] as String,
      initials: map['initials'] == null ? null : map['initials'] as String,
      locality: map['locality'] == null ? null : map['locality'] as String,
      organization: map['organization'] == null
          ? null
          : map['organization'] as String,
      organizationalUnit: map['organizationalUnit'] == null
          ? null
          : map['organizationalUnit'] as String,
      pseudonym: map['pseudonym'] == null ? null : map['pseudonym'] as String,
      state: map['state'] == null ? null : map['state'] as String,
      surname: map['surname'] == null ? null : map['surname'] as String,
      title: map['title'] == null ? null : map['title'] as String,
    );
  }
}
