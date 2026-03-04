// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'secret_password.dart';

/// Active Directory Configuration properties
class ActiveDirectoryConfigProperties {
  /// Users to be added to the Built-in Administrators active directory group. A list of unique usernames without domain specifier
  final pulumi.Input<List<String>>? administrators;

  /// Users to be added to the Built-in Backup Operator active directory group. A list of unique usernames without domain specifier
  final pulumi.Input<List<String>>? backupOperators;

  /// An array of DNS server IP addresses(IPv4 only) for the Active Directory
  final pulumi.Input<List<String>>? dns;

  /// Name of the Active Directory domain
  final pulumi.Input<String> domain;

  /// The Organizational Unit (OU) within the Windows Active Directory
  final pulumi.Input<String>? organizationalUnit;

  /// Access password from Azure KeyVault Secrets to connect Active Directory
  final pulumi.Input<SecretPassword> secretPassword;

  /// Domain Users in the Active directory to be given SecurityPrivilege privilege (Needed for SMB Continuously available shares for SQL). A list of unique usernames without domain specifier
  final pulumi.Input<List<String>>? securityOperators;

  /// The Active Directory site the service will limit Domain Controller discovery to
  final pulumi.Input<String>? site;

  /// NetBIOS name of the SMB server. This name will be registered as a computer account in the AD and used to mount volumes
  final pulumi.Input<String>? smbServerName;

  /// A domain user account with permission to create machine accounts
  final pulumi.Input<String>? userName;

  /// Creates a new [ActiveDirectoryConfigProperties].
  /// [administrators] Users to be added to the Built-in Administrators active directory group. A list of unique usernames without domain specifier
  /// [backupOperators] Users to be added to the Built-in Backup Operator active directory group. A list of unique usernames without domain specifier
  /// [dns] An array of DNS server IP addresses(IPv4 only) for the Active Directory
  /// [domain] Name of the Active Directory domain
  /// [organizationalUnit] The Organizational Unit (OU) within the Windows Active Directory
  /// [secretPassword] Access password from Azure KeyVault Secrets to connect Active Directory
  /// [securityOperators] Domain Users in the Active directory to be given SecurityPrivilege privilege (Needed for SMB Continuously available shares for SQL). A list of unique usernames without domain specifier
  /// [site] The Active Directory site the service will limit Domain Controller discovery to
  /// [smbServerName] NetBIOS name of the SMB server. This name will be registered as a computer account in the AD and used to mount volumes
  /// [userName] A domain user account with permission to create machine accounts
  ActiveDirectoryConfigProperties({
    this.administrators,
    this.backupOperators,
    this.dns,
    required this.domain,
    this.organizationalUnit,
    required this.secretPassword,
    this.securityOperators,
    this.site,
    this.smbServerName,
    this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administrators': ?administrators,
      'backupOperators': ?backupOperators,
      'dns': ?dns,
      'domain': domain,
      'organizationalUnit': ?organizationalUnit,
      'secretPassword':
          pulumi.Input.mapInputValue<SecretPassword, Map<String, dynamic>>(
            secretPassword,
            (value) => value.toMap(),
          ),
      'securityOperators': ?securityOperators,
      'site': ?site,
      'smbServerName': ?smbServerName,
      'userName': ?userName,
    };
  }

  factory ActiveDirectoryConfigProperties.fromMap(Map<String, dynamic> map) {
    return ActiveDirectoryConfigProperties(
      administrators: (() {
        final guardedValue = map['administrators'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      backupOperators: (() {
        final guardedValue = map['backupOperators'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      dns: (() {
        final guardedValue = map['dns'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      domain: pulumi.Input.fromValue(map['domain'] as String),
      organizationalUnit: (() {
        final guardedValue = map['organizationalUnit'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secretPassword: pulumi.Input.fromValue(
        SecretPassword.fromMap(
          (map['secretPassword']! as Map).cast<String, dynamic>(),
        ),
      ),
      securityOperators: (() {
        final guardedValue = map['securityOperators'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      site: (() {
        final guardedValue = map['site'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      smbServerName: (() {
        final guardedValue = map['smbServerName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      userName: (() {
        final guardedValue = map['userName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
