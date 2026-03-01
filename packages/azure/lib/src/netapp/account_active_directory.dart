// ignore_for_file: unused_element, unnecessary_cast


class AccountActiveDirectory {
  /// If enabled, AES encryption will be enabled for SMB communication. Defaults to `false`.
  final bool? aesEncryptionEnabled;
  /// A list of DNS server IP addresses for the Active Directory domain. Only allows `IPv4` address.
  final List<String> dnsServers;
  /// The name of the Active Directory domain.
  final String domain;
  /// Name of the active directory machine.
  final String? kerberosAdName;
  /// kdc server IP addresses for the active directory machine.
  ///
  /// > **Note:** If you plan on using **Kerberos** volumes, both `ad_name` and `kdc_ip` are required in order to create the volume.
  final String? kerberosKdcIp;
  /// Specifies whether or not the LDAP traffic needs to be secured via TLS. Defaults to `false`.
  final bool? ldapOverTlsEnabled;
  /// Specifies whether or not the LDAP traffic needs to be signed. Defaults to `false`.
  final bool? ldapSigningEnabled;
  /// If enabled, NFS client local users can also (in addition to LDAP users) access the NFS volumes. Defaults to `false`.
  final bool? localNfsUsersWithLdapAllowed;
  /// The Organizational Unit (OU) within Active Directory where machines will be created. If blank, defaults to `CN=Computers`.
  final String? organizationalUnit;
  /// The password associated with the `username`.
  final String password;
  /// When LDAP over SSL/TLS is enabled, the LDAP client is required to have a *base64 encoded Active Directory Certificate Service's self-signed root CA certificate*, this optional parameter is used only for dual protocol with LDAP user-mapping volumes. Required if `ldap_over_tls_enabled` is set to `true`.
  final String? serverRootCaCertificate;
  /// The Active Directory site the service will limit Domain Controller discovery to. If blank, defaults to `Default-First-Site-Name`.
  final String? siteName;
  /// The NetBIOS name which should be used for the NetApp SMB Server, which will be registered as a computer account in the AD and used to mount volumes.
  final String smbServerName;
  /// The Username of Active Directory Domain Administrator.
  final String username;

  /// Creates a new [AccountActiveDirectory].
  /// [aesEncryptionEnabled] If enabled, AES encryption will be enabled for SMB communication. Defaults to `false`.
  /// [dnsServers] A list of DNS server IP addresses for the Active Directory domain. Only allows `IPv4` address.
  /// [domain] The name of the Active Directory domain.
  /// [kerberosAdName] Name of the active directory machine.
  /// [kerberosKdcIp] kdc server IP addresses for the active directory machine.
  /// [ldapOverTlsEnabled] Specifies whether or not the LDAP traffic needs to be secured via TLS. Defaults to `false`.
  /// [ldapSigningEnabled] Specifies whether or not the LDAP traffic needs to be signed. Defaults to `false`.
  /// [localNfsUsersWithLdapAllowed] If enabled, NFS client local users can also (in addition to LDAP users) access the NFS volumes. Defaults to `false`.
  /// [organizationalUnit] The Organizational Unit (OU) within Active Directory where machines will be created. If blank, defaults to `CN=Computers`.
  /// [password] The password associated with the `username`.
  /// [serverRootCaCertificate] When LDAP over SSL/TLS is enabled, the LDAP client is required to have a *base64 encoded Active Directory Certificate Service's self-signed root CA certificate*, this optional parameter is used only for dual protocol with LDAP user-mapping volumes. Required if `ldap_over_tls_enabled` is set to `true`.
  /// [siteName] The Active Directory site the service will limit Domain Controller discovery to. If blank, defaults to `Default-First-Site-Name`.
  /// [smbServerName] The NetBIOS name which should be used for the NetApp SMB Server, which will be registered as a computer account in the AD and used to mount volumes.
  /// [username] The Username of Active Directory Domain Administrator.
  AccountActiveDirectory({
    this.aesEncryptionEnabled,
    required this.dnsServers,
    required this.domain,
    this.kerberosAdName,
    this.kerberosKdcIp,
    this.ldapOverTlsEnabled,
    this.ldapSigningEnabled,
    this.localNfsUsersWithLdapAllowed,
    this.organizationalUnit,
    required this.password,
    this.serverRootCaCertificate,
    this.siteName,
    required this.smbServerName,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aesEncryptionEnabled': ?aesEncryptionEnabled,
      'dnsServers': dnsServers,
      'domain': domain,
      'kerberosAdName': ?kerberosAdName,
      'kerberosKdcIp': ?kerberosKdcIp,
      'ldapOverTlsEnabled': ?ldapOverTlsEnabled,
      'ldapSigningEnabled': ?ldapSigningEnabled,
      'localNfsUsersWithLdapAllowed': ?localNfsUsersWithLdapAllowed,
      'organizationalUnit': ?organizationalUnit,
      'password': password,
      'serverRootCaCertificate': ?serverRootCaCertificate,
      'siteName': ?siteName,
      'smbServerName': smbServerName,
      'username': username,
    };
  }

  factory AccountActiveDirectory.fromMap(Map<String, dynamic> map) {
    return AccountActiveDirectory(
      aesEncryptionEnabled: map['aesEncryptionEnabled'] == null ? null : map['aesEncryptionEnabled'] as bool,
      dnsServers: (map['dnsServers'] as List).cast<String>(),
      domain: map['domain'] as String,
      kerberosAdName: map['kerberosAdName'] == null ? null : map['kerberosAdName'] as String,
      kerberosKdcIp: map['kerberosKdcIp'] == null ? null : map['kerberosKdcIp'] as String,
      ldapOverTlsEnabled: map['ldapOverTlsEnabled'] == null ? null : map['ldapOverTlsEnabled'] as bool,
      ldapSigningEnabled: map['ldapSigningEnabled'] == null ? null : map['ldapSigningEnabled'] as bool,
      localNfsUsersWithLdapAllowed: map['localNfsUsersWithLdapAllowed'] == null ? null : map['localNfsUsersWithLdapAllowed'] as bool,
      organizationalUnit: map['organizationalUnit'] == null ? null : map['organizationalUnit'] as String,
      password: map['password'] as String,
      serverRootCaCertificate: map['serverRootCaCertificate'] == null ? null : map['serverRootCaCertificate'] as String,
      siteName: map['siteName'] == null ? null : map['siteName'] as String,
      smbServerName: map['smbServerName'] as String,
      username: map['username'] as String,
    );
  }
}

