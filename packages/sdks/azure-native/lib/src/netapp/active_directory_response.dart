// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ldap_search_scope_opt_response.dart';

/// Active Directory
class ActiveDirectoryResponse {
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
  final pulumi.Input<LdapSearchScopeOptResponse>? ldapSearchScope;
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
  /// Status of the Active Directory
  final pulumi.Input<String> status;
  /// Any details in regards to the Status of the Active Directory
  final pulumi.Input<String> statusDetails;
  /// A domain user account with permission to create machine accounts
  final pulumi.Input<String>? username;

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
  const ActiveDirectoryResponse({
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
      'ldapSearchScope': ?pulumi.Input.mapOptionalInputValue<LdapSearchScopeOptResponse, Map<String, dynamic>>(ldapSearchScope, (value) => value.toMap()),
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
      activeDirectoryId: (() { final guardedValue = map['activeDirectoryId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      adName: (() { final guardedValue = map['adName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      administrators: (() { final guardedValue = map['administrators']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      aesEncryption: (() { final guardedValue = map['aesEncryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      allowLocalNfsUsersWithLdap: (() { final guardedValue = map['allowLocalNfsUsersWithLdap']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      backupOperators: (() { final guardedValue = map['backupOperators']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      dns: (() { final guardedValue = map['dns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domain: (() { final guardedValue = map['domain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptDCConnections: (() { final guardedValue = map['encryptDCConnections']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      kdcIP: (() { final guardedValue = map['kdcIP']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ldapOverTLS: (() { final guardedValue = map['ldapOverTLS']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ldapSearchScope: (() { final guardedValue = map['ldapSearchScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LdapSearchScopeOptResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ldapSigning: (() { final guardedValue = map['ldapSigning']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      organizationalUnit: (() { final guardedValue = map['organizationalUnit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      preferredServersForLdapClient: (() { final guardedValue = map['preferredServersForLdapClient']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityOperators: (() { final guardedValue = map['securityOperators']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      serverRootCACertificate: (() { final guardedValue = map['serverRootCACertificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      site: (() { final guardedValue = map['site']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      smbServerName: (() { final guardedValue = map['smbServerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: pulumi.Input.fromValue(map['status'] as String),
      statusDetails: pulumi.Input.fromValue(map['statusDetails'] as String),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

