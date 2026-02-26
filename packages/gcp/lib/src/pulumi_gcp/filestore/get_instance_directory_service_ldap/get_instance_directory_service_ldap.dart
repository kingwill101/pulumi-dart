// ignore_for_file: unused_element, unnecessary_cast

class GetInstanceDirectoryServiceLdap {
  /// The LDAP domain name in the format of 'my-domain.com'.
  final String domain;

  /// The groups Organizational Unit (OU) is optional. This parameter is a hint
  /// to allow faster lookup in the LDAP namespace. In case that this parameter
  /// is not provided, Filestore instance will query the whole LDAP namespace.
  final String groupsOu;

  /// The servers names are used for specifying the LDAP servers names.
  /// The LDAP servers names can come with two formats:
  /// 1. DNS name, for example: 'ldap.example1.com', 'ldap.example2.com'.
  /// 2. IP address, for example: '10.0.0.1', '10.0.0.2', '10.0.0.3'.
  /// All servers names must be in the same format: either all DNS names or all
  /// IP addresses.
  final List<String> servers;

  /// The users Organizational Unit (OU) is optional. This parameter is a hint
  /// to allow faster lookup in the LDAP namespace. In case that this parameter
  /// is not provided, Filestore instance will query the whole LDAP namespace.
  final String usersOu;

  GetInstanceDirectoryServiceLdap({
    required this.domain,
    required this.groupsOu,
    required this.servers,
    required this.usersOu,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['domain'] = domain;
    map['groupsOu'] = groupsOu;
    map['servers'] = servers;
    map['usersOu'] = usersOu;
    return map;
  }

  factory GetInstanceDirectoryServiceLdap.fromMap(Map<String, dynamic> map) {
    return GetInstanceDirectoryServiceLdap(
      domain: map['domain'] as String,
      groupsOu: map['groupsOu'] as String,
      servers: (map['servers'] as List).cast<String>(),
      usersOu: map['usersOu'] as String,
    );
  }
}
