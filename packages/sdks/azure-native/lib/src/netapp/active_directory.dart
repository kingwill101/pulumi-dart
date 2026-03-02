// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ldap_search_scope_opt.dart';

/// Active Directory
class ActiveDirectory {
  /// Id of the Active Directory
  final pulumi.Input<String>? activeDirectoryId;
  /// Name of the active directory machine. This optional parameter is used only while creating kerberos volume
  final pulumi.Input<String>? adName;
  /// Users to be added to the Built-in Administrators active directory group. A list of unique usernames without domain specifier
  final pulumi.Input<List<String>>? administrators;
  /// If enabled, AES encryption will be enabled for SMB communication.
  final pulumi.Input<bool>? aesEncryption;
  /// If enabled, NFS client local users can also (in addition to LDAP users) access the NFS volumes.
  final pulumi.Input<bool>? allowLocalNfsUsersWithLdap;
  /// Users to be added to the Built-in Backup Operator active directory group. A list of unique usernames without domain specifier
  final pulumi.Input<List<String>>? backupOperators;
  /// Comma separated list of DNS server IP addresses (IPv4 only) for the Active Directory domain
  final pulumi.Input<String>? dns;
  /// Name of the Active Directory domain
  final pulumi.Input<String>? domain;
  /// If enabled, Traffic between the SMB server to Domain Controller (DC) will be encrypted.
  final pulumi.Input<bool>? encryptDCConnections;
  /// kdc server IP address for the active directory machine. This optional parameter is used only while creating kerberos volume.
  final pulumi.Input<String>? kdcIP;
  /// Specifies whether or not the LDAP traffic needs to be secured via TLS.
  final pulumi.Input<bool>? ldapOverTLS;
  /// LDAP Search scope options
  final pulumi.Input<LdapSearchScopeOpt>? ldapSearchScope;
  /// Specifies whether or not the LDAP traffic needs to be signed.
  final pulumi.Input<bool>? ldapSigning;
  /// The Organizational Unit (OU) within the Windows Active Directory
  final pulumi.Input<String>? organizationalUnit;
  /// Plain text password of Active Directory domain administrator, value is masked in the response
  final pulumi.Input<String>? password;
  /// Comma separated list of IPv4 addresses of preferred servers for LDAP client. At most two comma separated IPv4 addresses can be passed.
  final pulumi.Input<String>? preferredServersForLdapClient;
  /// Domain Users in the Active directory to be given SeSecurityPrivilege privilege (Needed for SMB Continuously available shares for SQL). A list of unique usernames without domain specifier
  final pulumi.Input<List<String>>? securityOperators;
  /// When LDAP over SSL/TLS is enabled, the LDAP client is required to have base64 encoded Active Directory Certificate Service's self-signed root CA certificate, this optional parameter is used only for dual protocol with LDAP user-mapping volumes.
  final pulumi.Input<String>? serverRootCACertificate;
  /// The Active Directory site the service will limit Domain Controller discovery to
  final pulumi.Input<String>? site;
  /// NetBIOS name of the SMB server. This name will be registered as a computer account in the AD and used to mount volumes
  final pulumi.Input<String>? smbServerName;
  /// A domain user account with permission to create machine accounts
  final pulumi.Input<String>? username;

  /// Creates a new [ActiveDirectory].
  /// [activeDirectoryId] Id of the Active Directory
  /// [adName] Name of the active directory machine. This optional parameter is used only while creating kerberos volume
  /// [administrators] Users to be added to the Built-in Administrators active directory group. A list of unique usernames without domain specifier
  /// [aesEncryption] If enabled, AES encryption will be enabled for SMB communication.
  /// [allowLocalNfsUsersWithLdap] If enabled, NFS client local users can also (in addition to LDAP users) access the NFS volumes.
  /// [backupOperators] Users to be added to the Built-in Backup Operator active directory group. A list of unique usernames without domain specifier
  /// [dns] Comma separated list of DNS server IP addresses (IPv4 only) for the Active Directory domain
  /// [domain] Name of the Active Directory domain
  /// [encryptDCConnections] If enabled, Traffic between the SMB server to Domain Controller (DC) will be encrypted.
  /// [kdcIP] kdc server IP address for the active directory machine. This optional parameter is used only while creating kerberos volume.
  /// [ldapOverTLS] Specifies whether or not the LDAP traffic needs to be secured via TLS.
  /// [ldapSearchScope] LDAP Search scope options
  /// [ldapSigning] Specifies whether or not the LDAP traffic needs to be signed.
  /// [organizationalUnit] The Organizational Unit (OU) within the Windows Active Directory
  /// [password] Plain text password of Active Directory domain administrator, value is masked in the response
  /// [preferredServersForLdapClient] Comma separated list of IPv4 addresses of preferred servers for LDAP client. At most two comma separated IPv4 addresses can be passed.
  /// [securityOperators] Domain Users in the Active directory to be given SeSecurityPrivilege privilege (Needed for SMB Continuously available shares for SQL). A list of unique usernames without domain specifier
  /// [serverRootCACertificate] When LDAP over SSL/TLS is enabled, the LDAP client is required to have base64 encoded Active Directory Certificate Service's self-signed root CA certificate, this optional parameter is used only for dual protocol with LDAP user-mapping volumes.
  /// [site] The Active Directory site the service will limit Domain Controller discovery to
  /// [smbServerName] NetBIOS name of the SMB server. This name will be registered as a computer account in the AD and used to mount volumes
  /// [username] A domain user account with permission to create machine accounts
  ActiveDirectory({
    this.activeDirectoryId,
    this.adName,
    this.administrators,
    this.aesEncryption,
    this.allowLocalNfsUsersWithLdap,
    this.backupOperators,
    this.dns,
    this.domain,
    this.encryptDCConnections,
    this.kdcIP,
    this.ldapOverTLS,
    this.ldapSearchScope,
    this.ldapSigning,
    this.organizationalUnit,
    this.password,
    this.preferredServersForLdapClient,
    this.securityOperators,
    this.serverRootCACertificate,
    this.site,
    this.smbServerName,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeDirectoryId': ?activeDirectoryId,
      'adName': ?adName,
      'administrators': ?administrators,
      'aesEncryption': ?aesEncryption,
      'allowLocalNfsUsersWithLdap': ?allowLocalNfsUsersWithLdap,
      'backupOperators': ?backupOperators,
      'dns': ?dns,
      'domain': ?domain,
      'encryptDCConnections': ?encryptDCConnections,
      'kdcIP': ?kdcIP,
      'ldapOverTLS': ?ldapOverTLS,
      'ldapSearchScope': ?pulumi.Input.mapOptionalInputValue<LdapSearchScopeOpt, Map<String, dynamic>>(ldapSearchScope, (value) => value.toMap()),
      'ldapSigning': ?ldapSigning,
      'organizationalUnit': ?organizationalUnit,
      'password': ?password,
      'preferredServersForLdapClient': ?preferredServersForLdapClient,
      'securityOperators': ?securityOperators,
      'serverRootCACertificate': ?serverRootCACertificate,
      'site': ?site,
      'smbServerName': ?smbServerName,
      'username': ?username,
    };
  }

  factory ActiveDirectory.fromMap(Map<String, dynamic> map) {
    return ActiveDirectory(
      activeDirectoryId: map['activeDirectoryId'] == null ? null : (map['activeDirectoryId']! as String).input(),
      adName: map['adName'] == null ? null : (map['adName']! as String).input(),
      administrators: map['administrators'] == null ? null : ((map['administrators']! as List).cast<String>()).input(),
      aesEncryption: map['aesEncryption'] == null ? null : (map['aesEncryption']! as bool).input(),
      allowLocalNfsUsersWithLdap: map['allowLocalNfsUsersWithLdap'] == null ? null : (map['allowLocalNfsUsersWithLdap']! as bool).input(),
      backupOperators: map['backupOperators'] == null ? null : ((map['backupOperators']! as List).cast<String>()).input(),
      dns: map['dns'] == null ? null : (map['dns']! as String).input(),
      domain: map['domain'] == null ? null : (map['domain']! as String).input(),
      encryptDCConnections: map['encryptDCConnections'] == null ? null : (map['encryptDCConnections']! as bool).input(),
      kdcIP: map['kdcIP'] == null ? null : (map['kdcIP']! as String).input(),
      ldapOverTLS: map['ldapOverTLS'] == null ? null : (map['ldapOverTLS']! as bool).input(),
      ldapSearchScope: map['ldapSearchScope'] == null ? null : (LdapSearchScopeOpt.fromMap((map['ldapSearchScope']! as Map).cast<String, dynamic>())).input(),
      ldapSigning: map['ldapSigning'] == null ? null : (map['ldapSigning']! as bool).input(),
      organizationalUnit: map['organizationalUnit'] == null ? null : (map['organizationalUnit']! as String).input(),
      password: map['password'] == null ? null : (map['password']! as String).input(),
      preferredServersForLdapClient: map['preferredServersForLdapClient'] == null ? null : (map['preferredServersForLdapClient']! as String).input(),
      securityOperators: map['securityOperators'] == null ? null : ((map['securityOperators']! as List).cast<String>()).input(),
      serverRootCACertificate: map['serverRootCACertificate'] == null ? null : (map['serverRootCACertificate']! as String).input(),
      site: map['site'] == null ? null : (map['site']! as String).input(),
      smbServerName: map['smbServerName'] == null ? null : (map['smbServerName']! as String).input(),
      username: map['username'] == null ? null : (map['username']! as String).input(),
    );
  }
}

