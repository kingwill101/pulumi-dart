// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate.dart';

/// Ldap authentication method properties. This feature is in preview.
class AuthenticationMethodLdapProperties {
  /// Timeout for connecting to the LDAP server in miliseconds. The default is 5000 ms.
  final int? connectionTimeoutInMs;
  /// Distinguished name of the object to start the recursive search of users from.
  final String? searchBaseDistinguishedName;
  /// Template to use for searching. Defaults to (cn=%s) where %s will be replaced by the username used to login.
  final String? searchFilterTemplate;
  final List<Certificate>? serverCertificates;
  /// Hostname of the LDAP server.
  final String? serverHostname;
  /// Port of the LDAP server.
  final int? serverPort;
  /// Distinguished name of the look up user account, who can look up user details on authentication.
  final String? serviceUserDistinguishedName;
  /// Password of the look up user.
  final String? serviceUserPassword;

  /// Creates a new [AuthenticationMethodLdapProperties].
  /// [connectionTimeoutInMs] Timeout for connecting to the LDAP server in miliseconds. The default is 5000 ms.
  /// [searchBaseDistinguishedName] Distinguished name of the object to start the recursive search of users from.
  /// [searchFilterTemplate] Template to use for searching. Defaults to (cn=%s) where %s will be replaced by the username used to login.
  /// [serverCertificates] Optional.
  /// [serverHostname] Hostname of the LDAP server.
  /// [serverPort] Port of the LDAP server.
  /// [serviceUserDistinguishedName] Distinguished name of the look up user account, who can look up user details on authentication.
  /// [serviceUserPassword] Password of the look up user.
  AuthenticationMethodLdapProperties({
    this.connectionTimeoutInMs,
    this.searchBaseDistinguishedName,
    this.searchFilterTemplate,
    this.serverCertificates,
    this.serverHostname,
    this.serverPort,
    this.serviceUserDistinguishedName,
    this.serviceUserPassword,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionTimeoutInMs': ?connectionTimeoutInMs,
      'searchBaseDistinguishedName': ?searchBaseDistinguishedName,
      'searchFilterTemplate': ?searchFilterTemplate,
      'serverCertificates': ?serverCertificates == null ? null : pulumi.Input.encodeList<Certificate, Map<String, dynamic>>(serverCertificates!, (value) => value.toMap()),
      'serverHostname': ?serverHostname,
      'serverPort': ?serverPort,
      'serviceUserDistinguishedName': ?serviceUserDistinguishedName,
      'serviceUserPassword': ?serviceUserPassword,
    };
  }

  factory AuthenticationMethodLdapProperties.fromMap(Map<String, dynamic> map) {
    return AuthenticationMethodLdapProperties(
      connectionTimeoutInMs: map['connectionTimeoutInMs'] == null ? null : map['connectionTimeoutInMs'] as int,
      searchBaseDistinguishedName: map['searchBaseDistinguishedName'] == null ? null : map['searchBaseDistinguishedName'] as String,
      searchFilterTemplate: map['searchFilterTemplate'] == null ? null : map['searchFilterTemplate'] as String,
      serverCertificates: map['serverCertificates'] == null ? null : pulumi.Input.decodeList<Certificate>(map['serverCertificates'], (value) => Certificate.fromMap((value as Map).cast<String, dynamic>())),
      serverHostname: map['serverHostname'] == null ? null : map['serverHostname'] as String,
      serverPort: map['serverPort'] == null ? null : map['serverPort'] as int,
      serviceUserDistinguishedName: map['serviceUserDistinguishedName'] == null ? null : map['serviceUserDistinguishedName'] as String,
      serviceUserPassword: map['serviceUserPassword'] == null ? null : map['serviceUserPassword'] as String,
    );
  }
}

