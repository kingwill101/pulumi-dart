// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WindowsFileSystemSelfManagedActiveDirectory {
  /// List of up to two IP addresses of DNS servers or domain controllers in the self-managed AD directory. The IP addresses need to be either in the same VPC CIDR range as the file system or in the private IP version 4 (IPv4) address ranges as specified in [RFC 1918](https://tools.ietf.org/html/rfc1918).
  final pulumi.Input<List<String>> dnsIps;
  /// Amazon Resource Name (ARN) for the AWS Secrets Manager secret that contains the credentials for the service account on your self-managed AD domain. Conflicts with `username` and `password`.
  final pulumi.Input<String>? domainJoinServiceAccountSecret;
  /// Fully qualified domain name of the self-managed AD directory. For example, `corp.example.com`.
  final pulumi.Input<String> domainName;
  /// Name of the domain group whose members are granted administrative privileges for the file system. Administrative privileges include taking ownership of files and folders, and setting audit controls (audit ACLs) on files and folders. The group that you specify must already exist in your domain. Defaults to `Domain Admins`.
  final pulumi.Input<String>? fileSystemAdministratorsGroup;
  /// Fully qualified distinguished name of the organizational unit within your self-managed AD directory that the Windows File Server instance will join. For example, `OU=FSx,DC=yourdomain,DC=corp,DC=com`. Only accepts OU as the direct parent of the file system. If none is provided, the FSx file system is created in the default location of your self-managed AD directory. To learn more, see [RFC 2253](https://tools.ietf.org/html/rfc2253).
  final pulumi.Input<String>? organizationalUnitDistinguishedName;
  /// Password for the service account on your self-managed AD domain that Amazon FSx will use to join to your AD domain. Conflicts with `domainJoinServiceAccountSecret` and `passwordWo`.
  final pulumi.Input<String>? password;
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// Password for the service account on your self-managed AD domain that Amazon FSx will use to join to your AD domain. This is a write-only argument which is not persisted to state. Conflicts with `domainJoinServiceAccountSecret` and `password`. Required with `passwordWoVersion`.
  final pulumi.Input<String>? passwordWo;
  /// Version of the password. Required with `passwordWo`. Update this argument when the value of `passwordWo` has changed to trigger an update to the remote password.
  final pulumi.Input<int>? passwordWoVersion;
  /// User name for the service account on your self-managed AD domain that Amazon FSx will use to join to your AD domain. Conflicts with `domainJoinServiceAccountSecret`.
  final pulumi.Input<String>? username;

  /// Creates a new [WindowsFileSystemSelfManagedActiveDirectory].
  /// [dnsIps] List of up to two IP addresses of DNS servers or domain controllers in the self-managed AD directory. The IP addresses need to be either in the same VPC CIDR range as the file system or in the private IP version 4 (IPv4) address ranges as specified in [RFC 1918](https://tools.ietf.org/html/rfc1918).
  /// [domainJoinServiceAccountSecret] Amazon Resource Name (ARN) for the AWS Secrets Manager secret that contains the credentials for the service account on your self-managed AD domain. Conflicts with `username` and `password`.
  /// [domainName] Fully qualified domain name of the self-managed AD directory. For example, `corp.example.com`.
  /// [fileSystemAdministratorsGroup] Name of the domain group whose members are granted administrative privileges for the file system. Administrative privileges include taking ownership of files and folders, and setting audit controls (audit ACLs) on files and folders. The group that you specify must already exist in your domain. Defaults to `Domain Admins`.
  /// [organizationalUnitDistinguishedName] Fully qualified distinguished name of the organizational unit within your self-managed AD directory that the Windows File Server instance will join. For example, `OU=FSx,DC=yourdomain,DC=corp,DC=com`. Only accepts OU as the direct parent of the file system. If none is provided, the FSx file system is created in the default location of your self-managed AD directory. To learn more, see [RFC 2253](https://tools.ietf.org/html/rfc2253).
  /// [password] Password for the service account on your self-managed AD domain that Amazon FSx will use to join to your AD domain. Conflicts with `domainJoinServiceAccountSecret` and `passwordWo`.
  /// [passwordWo] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// [passwordWoVersion] Version of the password. Required with `passwordWo`. Update this argument when the value of `passwordWo` has changed to trigger an update to the remote password.
  /// [username] User name for the service account on your self-managed AD domain that Amazon FSx will use to join to your AD domain. Conflicts with `domainJoinServiceAccountSecret`.
  const WindowsFileSystemSelfManagedActiveDirectory({
    required this.dnsIps,
    this.domainJoinServiceAccountSecret,
    required this.domainName,
    this.fileSystemAdministratorsGroup,
    this.organizationalUnitDistinguishedName,
    this.password,
    this.passwordWo,
    this.passwordWoVersion,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsIps': dnsIps,
      'domainJoinServiceAccountSecret': ?domainJoinServiceAccountSecret,
      'domainName': domainName,
      'fileSystemAdministratorsGroup': ?fileSystemAdministratorsGroup,
      'organizationalUnitDistinguishedName': ?organizationalUnitDistinguishedName,
      'password': ?password,
      'passwordWo': ?passwordWo,
      'passwordWoVersion': ?passwordWoVersion,
      'username': ?username,
    };
  }

  factory WindowsFileSystemSelfManagedActiveDirectory.fromMap(Map<String, dynamic> map) {
    return WindowsFileSystemSelfManagedActiveDirectory(
      dnsIps: pulumi.Input.fromValue((map['dnsIps'] as List).cast<String>()),
      domainJoinServiceAccountSecret: (() { final guardedValue = map['domainJoinServiceAccountSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainName: pulumi.Input.fromValue(map['domainName'] as String),
      fileSystemAdministratorsGroup: (() { final guardedValue = map['fileSystemAdministratorsGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      organizationalUnitDistinguishedName: (() { final guardedValue = map['organizationalUnitDistinguishedName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      passwordWo: (() { final guardedValue = map['passwordWo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      passwordWoVersion: (() { final guardedValue = map['passwordWoVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
