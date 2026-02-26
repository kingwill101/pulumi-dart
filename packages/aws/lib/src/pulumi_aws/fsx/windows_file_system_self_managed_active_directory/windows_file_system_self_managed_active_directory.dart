// ignore_for_file: unused_element, unnecessary_cast

class WindowsFileSystemSelfManagedActiveDirectory {
  /// A list of up to two IP addresses of DNS servers or domain controllers in the self-managed AD directory. The IP addresses need to be either in the same VPC CIDR range as the file system or in the private IP version 4 (IPv4) address ranges as specified in [RFC 1918](https://tools.ietf.org/html/rfc1918).
  final List<String> dnsIps;

  /// The Amazon Resource Name (ARN) for the AWS Secrets Manager secret that contains the credentials for the service account on your self-managed AD domain. Conflicts with <span pulumi-lang-nodejs="`username`" pulumi-lang-dotnet="`Username`" pulumi-lang-go="`username`" pulumi-lang-python="`username`" pulumi-lang-yaml="`username`" pulumi-lang-java="`username`">`username`</span> and <span pulumi-lang-nodejs="`password`" pulumi-lang-dotnet="`Password`" pulumi-lang-go="`password`" pulumi-lang-python="`password`" pulumi-lang-yaml="`password`" pulumi-lang-java="`password`">`password`</span>.
  final String? domainJoinServiceAccountSecret;

  /// The fully qualified domain name of the self-managed AD directory. For example, `corp.example.com`.
  final String domainName;

  /// The name of the domain group whose members are granted administrative privileges for the file system. Administrative privileges include taking ownership of files and folders, and setting audit controls (audit ACLs) on files and folders. The group that you specify must already exist in your domain. Defaults to `Domain Admins`.
  final String? fileSystemAdministratorsGroup;

  /// The fully qualified distinguished name of the organizational unit within your self-managed AD directory that the Windows File Server instance will join. For example, `OU=FSx,DC=yourdomain,DC=corp,DC=com`. Only accepts OU as the direct parent of the file system. If none is provided, the FSx file system is created in the default location of your self-managed AD directory. To learn more, see [RFC 2253](https://tools.ietf.org/html/rfc2253).
  final String? organizationalUnitDistinguishedName;

  /// The password for the service account on your self-managed AD domain that Amazon FSx will use to join to your AD domain. Conflicts with <span pulumi-lang-nodejs="`domainJoinServiceAccountSecret`" pulumi-lang-dotnet="`DomainJoinServiceAccountSecret`" pulumi-lang-go="`domainJoinServiceAccountSecret`" pulumi-lang-python="`domain_join_service_account_secret`" pulumi-lang-yaml="`domainJoinServiceAccountSecret`" pulumi-lang-java="`domainJoinServiceAccountSecret`">`domain_join_service_account_secret`</span>.
  final String? password;

  /// The user name for the service account on your self-managed AD domain that Amazon FSx will use to join to your AD domain. Conflicts with <span pulumi-lang-nodejs="`domainJoinServiceAccountSecret`" pulumi-lang-dotnet="`DomainJoinServiceAccountSecret`" pulumi-lang-go="`domainJoinServiceAccountSecret`" pulumi-lang-python="`domain_join_service_account_secret`" pulumi-lang-yaml="`domainJoinServiceAccountSecret`" pulumi-lang-java="`domainJoinServiceAccountSecret`">`domain_join_service_account_secret`</span>.
  final String? username;

  WindowsFileSystemSelfManagedActiveDirectory({
    required this.dnsIps,
    this.domainJoinServiceAccountSecret,
    required this.domainName,
    this.fileSystemAdministratorsGroup,
    this.organizationalUnitDistinguishedName,
    this.password,
    this.username,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dnsIps'] = dnsIps;
    final domainJoinServiceAccountSecretValue = domainJoinServiceAccountSecret;
    if (domainJoinServiceAccountSecretValue != null) {
      map['domainJoinServiceAccountSecret'] =
          domainJoinServiceAccountSecretValue;
    }
    map['domainName'] = domainName;
    final fileSystemAdministratorsGroupValue = fileSystemAdministratorsGroup;
    if (fileSystemAdministratorsGroupValue != null) {
      map['fileSystemAdministratorsGroup'] = fileSystemAdministratorsGroupValue;
    }
    final organizationalUnitDistinguishedNameValue =
        organizationalUnitDistinguishedName;
    if (organizationalUnitDistinguishedNameValue != null) {
      map['organizationalUnitDistinguishedName'] =
          organizationalUnitDistinguishedNameValue;
    }
    final passwordValue = password;
    if (passwordValue != null) {
      map['password'] = passwordValue;
    }
    final usernameValue = username;
    if (usernameValue != null) {
      map['username'] = usernameValue;
    }
    return map;
  }

  factory WindowsFileSystemSelfManagedActiveDirectory.fromMap(
      Map<String, dynamic> map) {
    return WindowsFileSystemSelfManagedActiveDirectory(
      dnsIps: (map['dnsIps'] as List).cast<String>(),
      domainJoinServiceAccountSecret:
          map['domainJoinServiceAccountSecret'] == null
              ? null
              : map['domainJoinServiceAccountSecret'] as String,
      domainName: map['domainName'] as String,
      fileSystemAdministratorsGroup:
          map['fileSystemAdministratorsGroup'] == null
              ? null
              : map['fileSystemAdministratorsGroup'] as String,
      organizationalUnitDistinguishedName:
          map['organizationalUnitDistinguishedName'] == null
              ? null
              : map['organizationalUnitDistinguishedName'] as String,
      password: map['password'] == null ? null : map['password'] as String,
      username: map['username'] == null ? null : map['username'] as String,
    );
  }
}
