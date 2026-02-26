// ignore_for_file: unused_element, unnecessary_cast

class GetOntapStorageVirtualMachineActiveDirectoryConfigurationSelfManagedActiveDirectoryConfiguration {
  /// A list of up to three IP addresses of DNS servers or domain controllers in the self-managed AD directory.
  final List<String> dnsIps;

  /// The fully qualified domain name of the self-managed AD directory.
  final String domainName;

  /// The name of the domain group whose members have administrative privileges for the FSx file system.
  final String fileSystemAdministratorsGroup;

  /// The fully qualified distinguished name of the organizational unit within the self-managed AD directory to which the Windows File Server or ONTAP storage virtual machine (SVM) instance is joined.
  final String organizationalUnitDistinguishedName;

  /// The user name for the service account on your self-managed AD domain that FSx uses to join to your AD domain.
  final String username;

  GetOntapStorageVirtualMachineActiveDirectoryConfigurationSelfManagedActiveDirectoryConfiguration({
    required this.dnsIps,
    required this.domainName,
    required this.fileSystemAdministratorsGroup,
    required this.organizationalUnitDistinguishedName,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dnsIps'] = dnsIps;
    map['domainName'] = domainName;
    map['fileSystemAdministratorsGroup'] = fileSystemAdministratorsGroup;
    map['organizationalUnitDistinguishedName'] =
        organizationalUnitDistinguishedName;
    map['username'] = username;
    return map;
  }

  factory GetOntapStorageVirtualMachineActiveDirectoryConfigurationSelfManagedActiveDirectoryConfiguration.fromMap(
      Map<String, dynamic> map) {
    return GetOntapStorageVirtualMachineActiveDirectoryConfigurationSelfManagedActiveDirectoryConfiguration(
      dnsIps: (map['dnsIps'] as List).cast<String>(),
      domainName: map['domainName'] as String,
      fileSystemAdministratorsGroup:
          map['fileSystemAdministratorsGroup'] as String,
      organizationalUnitDistinguishedName:
          map['organizationalUnitDistinguishedName'] as String,
      username: map['username'] as String,
    );
  }
}
