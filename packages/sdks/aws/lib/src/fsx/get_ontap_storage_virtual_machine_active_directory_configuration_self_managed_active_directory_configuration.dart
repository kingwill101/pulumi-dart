// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetOntapStorageVirtualMachineActiveDirectoryConfigurationSelfManagedActiveDirectoryConfiguration {
  /// A list of up to three IP addresses of DNS servers or domain controllers in the self-managed AD directory.
  final pulumi.Input<List<String>> dnsIps;
  /// The fully qualified domain name of the self-managed AD directory.
  final pulumi.Input<String> domainName;
  /// The name of the domain group whose members have administrative privileges for the FSx file system.
  final pulumi.Input<String> fileSystemAdministratorsGroup;
  /// The fully qualified distinguished name of the organizational unit within the self-managed AD directory to which the Windows File Server or ONTAP storage virtual machine (SVM) instance is joined.
  final pulumi.Input<String> organizationalUnitDistinguishedName;
  /// The user name for the service account on your self-managed AD domain that FSx uses to join to your AD domain.
  final pulumi.Input<String> username;

  /// Creates a new [GetOntapStorageVirtualMachineActiveDirectoryConfigurationSelfManagedActiveDirectoryConfiguration].
  /// [dnsIps] A list of up to three IP addresses of DNS servers or domain controllers in the self-managed AD directory.
  /// [domainName] The fully qualified domain name of the self-managed AD directory.
  /// [fileSystemAdministratorsGroup] The name of the domain group whose members have administrative privileges for the FSx file system.
  /// [organizationalUnitDistinguishedName] The fully qualified distinguished name of the organizational unit within the self-managed AD directory to which the Windows File Server or ONTAP storage virtual machine (SVM) instance is joined.
  /// [username] The user name for the service account on your self-managed AD domain that FSx uses to join to your AD domain.
  const GetOntapStorageVirtualMachineActiveDirectoryConfigurationSelfManagedActiveDirectoryConfiguration({
    required this.dnsIps,
    required this.domainName,
    required this.fileSystemAdministratorsGroup,
    required this.organizationalUnitDistinguishedName,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsIps': dnsIps,
      'domainName': domainName,
      'fileSystemAdministratorsGroup': fileSystemAdministratorsGroup,
      'organizationalUnitDistinguishedName': organizationalUnitDistinguishedName,
      'username': username,
    };
  }

  factory GetOntapStorageVirtualMachineActiveDirectoryConfigurationSelfManagedActiveDirectoryConfiguration.fromMap(Map<String, dynamic> map) {
    return GetOntapStorageVirtualMachineActiveDirectoryConfigurationSelfManagedActiveDirectoryConfiguration(
      dnsIps: pulumi.Input.fromValue((map['dnsIps'] as List).cast<String>()),
      domainName: pulumi.Input.fromValue(map['domainName'] as String),
      fileSystemAdministratorsGroup: pulumi.Input.fromValue(map['fileSystemAdministratorsGroup'] as String),
      organizationalUnitDistinguishedName: pulumi.Input.fromValue(map['organizationalUnitDistinguishedName'] as String),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}

