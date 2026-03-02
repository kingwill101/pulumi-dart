// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_response.dart';

/// Ldap authentication method properties. This feature is in preview.
class AuthenticationMethodLdapPropertiesResponse {
  /// Timeout for connecting to the LDAP server in miliseconds. The default is 5000 ms.
  final pulumi.Input<int>? connectionTimeoutInMs;
  /// Distinguished name of the object to start the recursive search of users from.
  final pulumi.Input<String>? searchBaseDistinguishedName;
  /// Template to use for searching. Defaults to (cn=%s) where %s will be replaced by the username used to login.
  final pulumi.Input<String>? searchFilterTemplate;
  final pulumi.Input<List<CertificateResponse>>? serverCertificates;
  /// Hostname of the LDAP server.
  final pulumi.Input<String>? serverHostname;
  /// Port of the LDAP server.
  final pulumi.Input<int>? serverPort;
  /// Distinguished name of the look up user account, who can look up user details on authentication.
  final pulumi.Input<String>? serviceUserDistinguishedName;
  /// Password of the look up user.
  final pulumi.Input<String>? serviceUserPassword;

  /// Creates a new [AuthenticationMethodLdapPropertiesResponse].
  /// [connectionTimeoutInMs] Timeout for connecting to the LDAP server in miliseconds. The default is 5000 ms.
  /// [searchBaseDistinguishedName] Distinguished name of the object to start the recursive search of users from.
  /// [searchFilterTemplate] Template to use for searching. Defaults to (cn=%s) where %s will be replaced by the username used to login.
  /// [serverCertificates] Optional.
  /// [serverHostname] Hostname of the LDAP server.
  /// [serverPort] Port of the LDAP server.
  /// [serviceUserDistinguishedName] Distinguished name of the look up user account, who can look up user details on authentication.
  /// [serviceUserPassword] Password of the look up user.
  AuthenticationMethodLdapPropertiesResponse({
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
      'serverCertificates': ?pulumi.Input.mapOptionalInputValue<List<CertificateResponse>, List<Map<String, dynamic>>>(serverCertificates, (value) => pulumi.Input.encodeList<CertificateResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serverHostname': ?serverHostname,
      'serverPort': ?serverPort,
      'serviceUserDistinguishedName': ?serviceUserDistinguishedName,
      'serviceUserPassword': ?serviceUserPassword,
    };
  }

  factory AuthenticationMethodLdapPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AuthenticationMethodLdapPropertiesResponse(
      connectionTimeoutInMs: map['connectionTimeoutInMs'] == null ? null : (map['connectionTimeoutInMs']! as int).input(),
      searchBaseDistinguishedName: map['searchBaseDistinguishedName'] == null ? null : (map['searchBaseDistinguishedName']! as String).input(),
      searchFilterTemplate: map['searchFilterTemplate'] == null ? null : (map['searchFilterTemplate']! as String).input(),
      serverCertificates: map['serverCertificates'] == null ? null : (pulumi.Input.decodeList<CertificateResponse>(map['serverCertificates']!, (value) => CertificateResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      serverHostname: map['serverHostname'] == null ? null : (map['serverHostname']! as String).input(),
      serverPort: map['serverPort'] == null ? null : (map['serverPort']! as int).input(),
      serviceUserDistinguishedName: map['serviceUserDistinguishedName'] == null ? null : (map['serviceUserDistinguishedName']! as String).input(),
      serviceUserPassword: map['serviceUserPassword'] == null ? null : (map['serviceUserPassword']! as String).input(),
    );
  }
}

