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

  /// Concatenation that typically contains the first letter of the <span pulumi-lang-nodejs="`givenName`" pulumi-lang-dotnet="`GivenName`" pulumi-lang-go="`givenName`" pulumi-lang-python="`given_name`" pulumi-lang-yaml="`givenName`" pulumi-lang-java="`givenName`">`given_name`</span>, the first letter of the middle name if one exists, and the first letter of the <span pulumi-lang-nodejs="`surname`" pulumi-lang-dotnet="`Surname`" pulumi-lang-go="`surname`" pulumi-lang-python="`surname`" pulumi-lang-yaml="`surname`" pulumi-lang-java="`surname`">`surname`</span>. Must be less than or equal to 5 characters in length.
  final String? initials;

  /// Locality (such as a city or town) in which the certificate subject is located. Must be less than or equal to 128 characters in length.
  final String? locality;

  /// Legal name of the organization with which the certificate subject is affiliated. Must be less than or equal to 64 characters in length.
  final String? organization;

  /// Subdivision or unit of the organization (such as sales or finance) with which the certificate subject is affiliated. Must be less than or equal to 64 characters in length.
  final String? organizationalUnit;

  /// Typically a shortened version of a longer <span pulumi-lang-nodejs="`givenName`" pulumi-lang-dotnet="`GivenName`" pulumi-lang-go="`givenName`" pulumi-lang-python="`given_name`" pulumi-lang-yaml="`givenName`" pulumi-lang-java="`givenName`">`given_name`</span>. For example, Jonathan is often shortened to John. Elizabeth is often shortened to Beth, Liz, or Eliza. Must be less than or equal to 128 characters in length.
  final String? pseudonym;

  /// State in which the subject of the certificate is located. Must be less than or equal to 128 characters in length.
  final String? state;

  /// Family name. In the US and the UK for example, the surname of an individual is ordered last. In Asian cultures the surname is typically ordered first. Must be less than or equal to 40 characters in length.
  final String? surname;

  /// Title such as Mr. or Ms. which is pre-pended to the name to refer formally to the certificate subject. Must be less than or equal to 64 characters in length.
  final String? title;

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
    final map = <String, dynamic>{};
    final commonNameValue = commonName;
    if (commonNameValue != null) {
      map['commonName'] = commonNameValue;
    }
    final countryValue = country;
    if (countryValue != null) {
      map['country'] = countryValue;
    }
    final distinguishedNameQualifierValue = distinguishedNameQualifier;
    if (distinguishedNameQualifierValue != null) {
      map['distinguishedNameQualifier'] = distinguishedNameQualifierValue;
    }
    final generationQualifierValue = generationQualifier;
    if (generationQualifierValue != null) {
      map['generationQualifier'] = generationQualifierValue;
    }
    final givenNameValue = givenName;
    if (givenNameValue != null) {
      map['givenName'] = givenNameValue;
    }
    final initialsValue = initials;
    if (initialsValue != null) {
      map['initials'] = initialsValue;
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
    final pseudonymValue = pseudonym;
    if (pseudonymValue != null) {
      map['pseudonym'] = pseudonymValue;
    }
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = stateValue;
    }
    final surnameValue = surname;
    if (surnameValue != null) {
      map['surname'] = surnameValue;
    }
    final titleValue = title;
    if (titleValue != null) {
      map['title'] = titleValue;
    }
    return map;
  }

  factory CertificateAuthorityCertificateAuthorityConfigurationSubject.fromMap(
      Map<String, dynamic> map) {
    return CertificateAuthorityCertificateAuthorityConfigurationSubject(
      commonName:
          map['commonName'] == null ? null : map['commonName'] as String,
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
      organization:
          map['organization'] == null ? null : map['organization'] as String,
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
