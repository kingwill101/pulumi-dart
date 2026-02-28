// ignore_for_file: unused_element, unnecessary_cast


class OntapStorageVirtualMachineActiveDirectoryConfigurationSelfManagedActiveDirectoryConfiguration {
  /// A list of up to three IP addresses of DNS servers or domain controllers in the self-managed AD directory.
  final List<String> dnsIps;
  /// The fully qualified domain name of the self-managed AD directory. For example, `corp.example.com`.
  final String domainName;
  /// The name of the domain group whose members are granted administrative privileges for the SVM. The group that you specify must already exist in your domain. Defaults to `Domain Admins`.
  final String? fileSystemAdministratorsGroup;
  /// The fully qualified distinguished name of the organizational unit within your self-managed AD directory that the Windows File Server instance will join. For example, `OU=FSx,DC=yourdomain,DC=corp,DC=com`. Only accepts OU as the direct parent of the SVM. If none is provided, the SVM is created in the default location of your self-managed AD directory. To learn more, see [RFC 2253](https://tools.ietf.org/html/rfc2253).
  final String? organizationalUnitDistinguishedName;
  /// The password for the service account on your self-managed AD domain that Amazon FSx will use to join to your AD domain.
  final String password;
  /// The user name for the service account on your self-managed AD domain that Amazon FSx will use to join to your AD domain.
  final String username;

  /// Creates a new [OntapStorageVirtualMachineActiveDirectoryConfigurationSelfManagedActiveDirectoryConfiguration].
  /// [dnsIps] A list of up to three IP addresses of DNS servers or domain controllers in the self-managed AD directory.
  /// [domainName] The fully qualified domain name of the self-managed AD directory. For example, `corp.example.com`.
  /// [fileSystemAdministratorsGroup] The name of the domain group whose members are granted administrative privileges for the SVM. The group that you specify must already exist in your domain. Defaults to `Domain Admins`.
  /// [organizationalUnitDistinguishedName] The fully qualified distinguished name of the organizational unit within your self-managed AD directory that the Windows File Server instance will join. For example, `OU=FSx,DC=yourdomain,DC=corp,DC=com`. Only accepts OU as the direct parent of the SVM. If none is provided, the SVM is created in the default location of your self-managed AD directory. To learn more, see [RFC 2253](https://tools.ietf.org/html/rfc2253).
  /// [password] The password for the service account on your self-managed AD domain that Amazon FSx will use to join to your AD domain.
  /// [username] The user name for the service account on your self-managed AD domain that Amazon FSx will use to join to your AD domain.
  OntapStorageVirtualMachineActiveDirectoryConfigurationSelfManagedActiveDirectoryConfiguration({
    required this.dnsIps,
    required this.domainName,
    this.fileSystemAdministratorsGroup,
    this.organizationalUnitDistinguishedName,
    required this.password,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsIps': dnsIps,
      'domainName': domainName,
      'fileSystemAdministratorsGroup': ?fileSystemAdministratorsGroup,
      'organizationalUnitDistinguishedName': ?organizationalUnitDistinguishedName,
      'password': password,
      'username': username,
    };
  }

  factory OntapStorageVirtualMachineActiveDirectoryConfigurationSelfManagedActiveDirectoryConfiguration.fromMap(Map<String, dynamic> map) {
    return OntapStorageVirtualMachineActiveDirectoryConfigurationSelfManagedActiveDirectoryConfiguration(
      dnsIps: (map['dnsIps'] as List).cast<String>(),
      domainName: map['domainName'] as String,
      fileSystemAdministratorsGroup: map['fileSystemAdministratorsGroup'] == null ? null : map['fileSystemAdministratorsGroup'] as String,
      organizationalUnitDistinguishedName: map['organizationalUnitDistinguishedName'] == null ? null : map['organizationalUnitDistinguishedName'] as String,
      password: map['password'] as String,
      username: map['username'] as String,
    );
  }
}

