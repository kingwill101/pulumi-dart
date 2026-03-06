// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CertificateAuthorityCertificateAuthorityConfigurationSubject {
  /// Fully qualified domain name (FQDN) associated with the certificate subject. Must be less than or equal to 64 characters in length.
  final pulumi.Input<String>? commonName;
  /// Two digit code that specifies the country in which the certificate subject located. Must be less than or equal to 2 characters in length.
  final pulumi.Input<String>? country;
  /// Disambiguating information for the certificate subject. Must be less than or equal to 64 characters in length.
  final pulumi.Input<String>? distinguishedNameQualifier;
  /// Typically a qualifier appended to the name of an individual. Examples include Jr. for junior, Sr. for senior, and III for third. Must be less than or equal to 3 characters in length.
  final pulumi.Input<String>? generationQualifier;
  /// First name. Must be less than or equal to 16 characters in length.
  final pulumi.Input<String>? givenName;
  /// Concatenation that typically contains the first letter of the `given_name`, the first letter of the middle name if one exists, and the first letter of the `surname`. Must be less than or equal to 5 characters in length.
  final pulumi.Input<String>? initials;
  /// Locality (such as a city or town) in which the certificate subject is located. Must be less than or equal to 128 characters in length.
  final pulumi.Input<String>? locality;
  /// Legal name of the organization with which the certificate subject is affiliated. Must be less than or equal to 64 characters in length.
  final pulumi.Input<String>? organization;
  /// Subdivision or unit of the organization (such as sales or finance) with which the certificate subject is affiliated. Must be less than or equal to 64 characters in length.
  final pulumi.Input<String>? organizationalUnit;
  /// Typically a shortened version of a longer `given_name`. For example, Jonathan is often shortened to John. Elizabeth is often shortened to Beth, Liz, or Eliza. Must be less than or equal to 128 characters in length.
  final pulumi.Input<String>? pseudonym;
  /// State in which the subject of the certificate is located. Must be less than or equal to 128 characters in length.
  final pulumi.Input<String>? state;
  /// Family name. In the US and the UK for example, the surname of an individual is ordered last. In Asian cultures the surname is typically ordered first. Must be less than or equal to 40 characters in length.
  final pulumi.Input<String>? surname;
  /// Title such as Mr. or Ms. which is pre-pended to the name to refer formally to the certificate subject. Must be less than or equal to 64 characters in length.
  final pulumi.Input<String>? title;

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
  const CertificateAuthorityCertificateAuthorityConfigurationSubject({
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

  factory CertificateAuthorityCertificateAuthorityConfigurationSubject.fromMap(Map<String, dynamic> map) {
    return CertificateAuthorityCertificateAuthorityConfigurationSubject(
      commonName: (() { final guardedValue = map['commonName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      country: (() { final guardedValue = map['country']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      distinguishedNameQualifier: (() { final guardedValue = map['distinguishedNameQualifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      generationQualifier: (() { final guardedValue = map['generationQualifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      givenName: (() { final guardedValue = map['givenName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      initials: (() { final guardedValue = map['initials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      locality: (() { final guardedValue = map['locality']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      organization: (() { final guardedValue = map['organization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      organizationalUnit: (() { final guardedValue = map['organizationalUnit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pseudonym: (() { final guardedValue = map['pseudonym']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      surname: (() { final guardedValue = map['surname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      title: (() { final guardedValue = map['title']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

