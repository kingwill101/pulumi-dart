// ignore_for_file: unused_element, unnecessary_cast

import 'ldap_search_scope_opt_response.dart';

/// Active Directory
class ActiveDirectoryResponse {
  /// Id of the Active Directory
  final String? activeDirectoryId;
  /// Name of the active directory machine. This optional parameter is used only while creating kerberos volume
  final String? adName;
  /// Users to be added to the Built-in Administrators active directory group. A list of unique usernames without domain specifier
  final List<String>? administrators;
  /// If enabled, AES encryption will be enabled for SMB communication.
  final bool? aesEncryption;
  /// If enabled, NFS client local users can also (in addition to LDAP users) access the NFS volumes.
  final bool? allowLocalNfsUsersWithLdap;
  /// Users to be added to the Built-in Backup Operator active directory group. A list of unique usernames without domain specifier
  final List<String>? backupOperators;
  /// Comma separated list of DNS server IP addresses (IPv4 only) for the Active Directory domain
  final String? dns;
  /// Name of the Active Directory domain
  final String? domain;
  /// If enabled, Traffic between the SMB server to Domain Controller (DC) will be encrypted.
  final bool? encryptDCConnections;
  /// kdc server IP address for the active directory machine. This optional parameter is used only while creating kerberos volume.
  final String? kdcIP;
  /// Specifies whether or not the LDAP traffic needs to be secured via TLS.
  final bool? ldapOverTLS;
  /// LDAP Search scope options
  final LdapSearchScopeOptResponse? ldapSearchScope;
  /// Specifies whether or not the LDAP traffic needs to be signed.
  final bool? ldapSigning;
  /// The Organizational Unit (OU) within the Windows Active Directory
  final String? organizationalUnit;
  /// Plain text password of Active Directory domain administrator, value is masked in the response
  final String? password;
  /// Comma separated list of IPv4 addresses of preferred servers for LDAP client. At most two comma separated IPv4 addresses can be passed.
  final String? preferredServersForLdapClient;
  /// Domain Users in the Active directory to be given SeSecurityPrivilege privilege (Needed for SMB Continuously available shares for SQL). A list of unique usernames without domain specifier
  final List<String>? securityOperators;
  /// When LDAP over SSL/TLS is enabled, the LDAP client is required to have base64 encoded Active Directory Certificate Service's self-signed root CA certificate, this optional parameter is used only for dual protocol with LDAP user-mapping volumes.
  final String? serverRootCACertificate;
  /// The Active Directory site the service will limit Domain Controller discovery to
  final String? site;
  /// NetBIOS name of the SMB server. This name will be registered as a computer account in the AD and used to mount volumes
  final String? smbServerName;
  /// Status of the Active Directory
  final String status;
  /// Any details in regards to the Status of the Active Directory
  final String statusDetails;
  /// A domain user account with permission to create machine accounts
  final String? username;

  /// Creates a new [ActiveDirectoryResponse].
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
  /// [status] Status of the Active Directory
  /// [statusDetails] Any details in regards to the Status of the Active Directory
  /// [username] A domain user account with permission to create machine accounts
  ActiveDirectoryResponse({
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
    required this.status,
    required this.statusDetails,
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
      'ldapSearchScope': ?ldapSearchScope == null ? null : ldapSearchScope!.toMap(),
      'ldapSigning': ?ldapSigning,
      'organizationalUnit': ?organizationalUnit,
      'password': ?password,
      'preferredServersForLdapClient': ?preferredServersForLdapClient,
      'securityOperators': ?securityOperators,
      'serverRootCACertificate': ?serverRootCACertificate,
      'site': ?site,
      'smbServerName': ?smbServerName,
      'status': status,
      'statusDetails': statusDetails,
      'username': ?username,
    };
  }

  factory ActiveDirectoryResponse.fromMap(Map<String, dynamic> map) {
    return ActiveDirectoryResponse(
      activeDirectoryId: map['activeDirectoryId'] == null ? null : map['activeDirectoryId'] as String,
      adName: map['adName'] == null ? null : map['adName'] as String,
      administrators: map['administrators'] == null ? null : (map['administrators'] as List).cast<String>(),
      aesEncryption: map['aesEncryption'] == null ? null : map['aesEncryption'] as bool,
      allowLocalNfsUsersWithLdap: map['allowLocalNfsUsersWithLdap'] == null ? null : map['allowLocalNfsUsersWithLdap'] as bool,
      backupOperators: map['backupOperators'] == null ? null : (map['backupOperators'] as List).cast<String>(),
      dns: map['dns'] == null ? null : map['dns'] as String,
      domain: map['domain'] == null ? null : map['domain'] as String,
      encryptDCConnections: map['encryptDCConnections'] == null ? null : map['encryptDCConnections'] as bool,
      kdcIP: map['kdcIP'] == null ? null : map['kdcIP'] as String,
      ldapOverTLS: map['ldapOverTLS'] == null ? null : map['ldapOverTLS'] as bool,
      ldapSearchScope: map['ldapSearchScope'] == null ? null : LdapSearchScopeOptResponse.fromMap((map['ldapSearchScope'] as Map).cast<String, dynamic>()),
      ldapSigning: map['ldapSigning'] == null ? null : map['ldapSigning'] as bool,
      organizationalUnit: map['organizationalUnit'] == null ? null : map['organizationalUnit'] as String,
      password: map['password'] == null ? null : map['password'] as String,
      preferredServersForLdapClient: map['preferredServersForLdapClient'] == null ? null : map['preferredServersForLdapClient'] as String,
      securityOperators: map['securityOperators'] == null ? null : (map['securityOperators'] as List).cast<String>(),
      serverRootCACertificate: map['serverRootCACertificate'] == null ? null : map['serverRootCACertificate'] as String,
      site: map['site'] == null ? null : map['site'] as String,
      smbServerName: map['smbServerName'] == null ? null : map['smbServerName'] as String,
      status: map['status'] as String,
      statusDetails: map['statusDetails'] as String,
      username: map['username'] == null ? null : map['username'] as String,
    );
  }
}

