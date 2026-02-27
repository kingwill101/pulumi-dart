// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for ActiveDirectory.
class ActiveDirectoryArgs {
  /// Domain user accounts to be added to the local Administrators group of the SMB service. Comma-separated list of domain users or groups. The Domain Admin group is automatically added when the service joins your domain as a hidden group.
  final pulumi.Input<List<String>>? administrators;

  /// Enables AES-128 and AES-256 encryption for Kerberos-based communication with Active Directory.
  final pulumi.Input<bool>? aesEncryption;

  /// Domain user/group accounts to be added to the Backup Operators group of the SMB service. The Backup Operators group allows members to backup and restore files regardless of whether they have read or write access to the files. Comma-separated list.
  final pulumi.Input<List<String>>? backupOperators;

  /// An optional description of this resource.
  final pulumi.Input<String>? description;

  /// Comma separated list of DNS server IP addresses for the Active Directory domain.
  final pulumi.Input<String> dns;

  /// Fully qualified domain name for the Active Directory domain.
  final pulumi.Input<String> domain;

  /// If enabled, traffic between the SMB server to Domain Controller (DC) will be encrypted.
  final pulumi.Input<bool>? encryptDcConnections;

  /// Hostname of the Active Directory server used as Kerberos Key Distribution Center. Only required for volumes using kerberized NFSv4.1
  final pulumi.Input<String>? kdcHostname;

  /// IP address of the Active Directory server used as Kerberos Key Distribution Center.
  final pulumi.Input<String>? kdcIp;

  /// Labels as key value pairs. Example: `{ "owner": "Bob", "department": "finance", "purpose": "testing" }`.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// Specifies whether or not the LDAP traffic needs to be signed.
  final pulumi.Input<bool>? ldapSigning;

  /// Name of the region for the policy to apply to.
  final pulumi.Input<String> location;

  /// The resource name of the Active Directory pool. Needs to be unique per location.
  final pulumi.Input<String>? name;

  /// NetBIOS name prefix of the server to be created.
  /// A five-character random ID is generated automatically, for example, -6f9a, and appended to the prefix. The full UNC share path will have the following format:
  /// `\\NetBIOS_PREFIX-ABCD.DOMAIN_NAME\SHARE_NAME`
  final pulumi.Input<String> netBiosPrefix;

  /// Local UNIX users on clients without valid user information in Active Directory are blocked from access to LDAP enabled volumes.
  /// This option can be used to temporarily switch such volumes to AUTH_SYS authentication (user ID + 1-16 groups).
  final pulumi.Input<bool>? nfsUsersWithLdap;

  /// Name of the Organizational Unit where you intend to create the computer account for NetApp Volumes.
  /// Defaults to `CN=Computers` if left empty.
  final pulumi.Input<String>? organizationalUnit;
  final pulumi.Input<String> password;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Domain accounts that require elevated privileges such as `SeSecurityPrivilege` to manage security logs. Comma-separated list.
  final pulumi.Input<List<String>>? securityOperators;

  /// Specifies an Active Directory site to manage domain controller selection.
  /// Use when Active Directory domain controllers in multiple regions are configured. Defaults to `Default-First-Site-Name` if left empty.
  final pulumi.Input<String>? site;

  /// Username for the Active Directory account with permissions to create the compute account within the specified organizational unit.
  final pulumi.Input<String> username;

  ActiveDirectoryArgs({
    this.administrators,
    this.aesEncryption,
    this.backupOperators,
    this.description,
    required this.dns,
    required this.domain,
    this.encryptDcConnections,
    this.kdcHostname,
    this.kdcIp,
    this.labels,
    this.ldapSigning,
    required this.location,
    this.name,
    required this.netBiosPrefix,
    this.nfsUsersWithLdap,
    this.organizationalUnit,
    required this.password,
    this.project,
    this.securityOperators,
    this.site,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final administratorsValue = administrators;
    if (administratorsValue != null) {
      map['administrators'] = administratorsValue;
    }
    final aesEncryptionValue = aesEncryption;
    if (aesEncryptionValue != null) {
      map['aesEncryption'] = aesEncryptionValue;
    }
    final backupOperatorsValue = backupOperators;
    if (backupOperatorsValue != null) {
      map['backupOperators'] = backupOperatorsValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['dns'] = dns;
    map['domain'] = domain;
    final encryptDcConnectionsValue = encryptDcConnections;
    if (encryptDcConnectionsValue != null) {
      map['encryptDcConnections'] = encryptDcConnectionsValue;
    }
    final kdcHostnameValue = kdcHostname;
    if (kdcHostnameValue != null) {
      map['kdcHostname'] = kdcHostnameValue;
    }
    final kdcIpValue = kdcIp;
    if (kdcIpValue != null) {
      map['kdcIp'] = kdcIpValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final ldapSigningValue = ldapSigning;
    if (ldapSigningValue != null) {
      map['ldapSigning'] = ldapSigningValue;
    }
    map['location'] = location;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['netBiosPrefix'] = netBiosPrefix;
    final nfsUsersWithLdapValue = nfsUsersWithLdap;
    if (nfsUsersWithLdapValue != null) {
      map['nfsUsersWithLdap'] = nfsUsersWithLdapValue;
    }
    final organizationalUnitValue = organizationalUnit;
    if (organizationalUnitValue != null) {
      map['organizationalUnit'] = organizationalUnitValue;
    }
    map['password'] = password;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final securityOperatorsValue = securityOperators;
    if (securityOperatorsValue != null) {
      map['securityOperators'] = securityOperatorsValue;
    }
    final siteValue = site;
    if (siteValue != null) {
      map['site'] = siteValue;
    }
    map['username'] = username;
    return map;
  }

  factory ActiveDirectoryArgs.fromMap(Map<String, dynamic> map) {
    return ActiveDirectoryArgs(
      administrators:
          pulumi.Input.asOptionalInput<List<String>>(map['administrators']),
      aesEncryption: pulumi.Input.asOptionalInput<bool>(map['aesEncryption']),
      backupOperators:
          pulumi.Input.asOptionalInput<List<String>>(map['backupOperators']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      dns: pulumi.Input.asInput<String>(map['dns']),
      domain: pulumi.Input.asInput<String>(map['domain']),
      encryptDcConnections:
          pulumi.Input.asOptionalInput<bool>(map['encryptDcConnections']),
      kdcHostname: pulumi.Input.asOptionalInput<String>(map['kdcHostname']),
      kdcIp: pulumi.Input.asOptionalInput<String>(map['kdcIp']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      ldapSigning: pulumi.Input.asOptionalInput<bool>(map['ldapSigning']),
      location: pulumi.Input.asInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      netBiosPrefix: pulumi.Input.asInput<String>(map['netBiosPrefix']),
      nfsUsersWithLdap:
          pulumi.Input.asOptionalInput<bool>(map['nfsUsersWithLdap']),
      organizationalUnit:
          pulumi.Input.asOptionalInput<String>(map['organizationalUnit']),
      password: pulumi.Input.asInput<String>(map['password']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      securityOperators:
          pulumi.Input.asOptionalInput<List<String>>(map['securityOperators']),
      site: pulumi.Input.asOptionalInput<String>(map['site']),
      username: pulumi.Input.asInput<String>(map['username']),
    );
  }
}
