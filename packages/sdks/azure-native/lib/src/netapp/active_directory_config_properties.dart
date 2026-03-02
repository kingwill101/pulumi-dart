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
      'secretPassword': pulumi.Input.mapInputValue<SecretPassword, Map<String, dynamic>>(secretPassword, (value) => value.toMap()),
      'securityOperators': ?securityOperators,
      'site': ?site,
      'smbServerName': ?smbServerName,
      'userName': ?userName,
    };
  }

  factory ActiveDirectoryConfigProperties.fromMap(Map<String, dynamic> map) {
    return ActiveDirectoryConfigProperties(
      administrators: map['administrators'] == null ? null : ((map['administrators']! as List).cast<String>()).input(),
      backupOperators: map['backupOperators'] == null ? null : ((map['backupOperators']! as List).cast<String>()).input(),
      dns: map['dns'] == null ? null : ((map['dns']! as List).cast<String>()).input(),
      domain: (map['domain'] as String).input(),
      organizationalUnit: map['organizationalUnit'] == null ? null : (map['organizationalUnit']! as String).input(),
      secretPassword: (SecretPassword.fromMap((map['secretPassword'] as Map).cast<String, dynamic>())).input(),
      securityOperators: map['securityOperators'] == null ? null : ((map['securityOperators']! as List).cast<String>()).input(),
      site: map['site'] == null ? null : (map['site']! as String).input(),
      smbServerName: map['smbServerName'] == null ? null : (map['smbServerName']! as String).input(),
      userName: map['userName'] == null ? null : (map['userName']! as String).input(),
    );
  }
}

