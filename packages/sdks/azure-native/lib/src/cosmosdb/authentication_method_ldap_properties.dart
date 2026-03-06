// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate.dart';

/// Ldap authentication method properties. This feature is in preview.
class AuthenticationMethodLdapProperties {
  /// Timeout for connecting to the LDAP server in miliseconds. The default is 5000 ms.
  final pulumi.Input<int>? connectionTimeoutInMs;
  /// Distinguished name of the object to start the recursive search of users from.
  final pulumi.Input<String>? searchBaseDistinguishedName;
  /// Template to use for searching. Defaults to (cn=%s) where %s will be replaced by the username used to login.
  final pulumi.Input<String>? searchFilterTemplate;
  final pulumi.Input<List<Certificate>>? serverCertificates;
  /// Hostname of the LDAP server.
  final pulumi.Input<String>? serverHostname;
  /// Port of the LDAP server.
  final pulumi.Input<int>? serverPort;
  /// Distinguished name of the look up user account, who can look up user details on authentication.
  final pulumi.Input<String>? serviceUserDistinguishedName;
  /// Password of the look up user.
  final pulumi.Input<String>? serviceUserPassword;

  /// Creates a new [AuthenticationMethodLdapProperties].
  /// [connectionTimeoutInMs] Timeout for connecting to the LDAP server in miliseconds. The default is 5000 ms.
  /// [searchBaseDistinguishedName] Distinguished name of the object to start the recursive search of users from.
  /// [searchFilterTemplate] Template to use for searching. Defaults to (cn=%s) where %s will be replaced by the username used to login.
  /// [serverCertificates] Optional.
  /// [serverHostname] Hostname of the LDAP server.
  /// [serverPort] Port of the LDAP server.
  /// [serviceUserDistinguishedName] Distinguished name of the look up user account, who can look up user details on authentication.
  /// [serviceUserPassword] Password of the look up user.
  const AuthenticationMethodLdapProperties({
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
      'serverCertificates': ?pulumi.Input.mapOptionalInputValue<List<Certificate>, List<Map<String, dynamic>>>(serverCertificates, (value) => pulumi.Input.encodeList<Certificate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serverHostname': ?serverHostname,
      'serverPort': ?serverPort,
      'serviceUserDistinguishedName': ?serviceUserDistinguishedName,
      'serviceUserPassword': ?serviceUserPassword,
    };
  }

  factory AuthenticationMethodLdapProperties.fromMap(Map<String, dynamic> map) {
    return AuthenticationMethodLdapProperties(
      connectionTimeoutInMs: (() { final guardedValue = map['connectionTimeoutInMs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      searchBaseDistinguishedName: (() { final guardedValue = map['searchBaseDistinguishedName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      searchFilterTemplate: (() { final guardedValue = map['searchFilterTemplate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverCertificates: (() { final guardedValue = map['serverCertificates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Certificate>(guardedValue, (value) => Certificate.fromMap((value as Map).cast<String, dynamic>()))); })(),
      serverHostname: (() { final guardedValue = map['serverHostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverPort: (() { final guardedValue = map['serverPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      serviceUserDistinguishedName: (() { final guardedValue = map['serviceUserDistinguishedName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceUserPassword: (() { final guardedValue = map['serviceUserPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

