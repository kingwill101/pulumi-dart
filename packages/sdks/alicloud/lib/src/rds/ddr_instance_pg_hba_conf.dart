// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DdrInstancePgHbaConf {
  /// The IP addresses from which the specified users can access the specified databases. If you set this parameter to 0.0.0.0/0, the specified users are allowed to access the specified databases from all IP addresses.
  final pulumi.Input<String> address;
  /// The name of the database that the specified users are allowed to access. If you set this parameter to all, the specified users are allowed to access all databases in the instance. If you specify multiple databases, separate the database names with commas (,).
  final pulumi.Input<String> database;
  /// The mask of the instance. If the value of the `Address` parameter is an IP address, you can use this parameter to specify the mask of the IP address.
  final pulumi.Input<String>? mask;
  /// The authentication method of Lightweight Directory Access Protocol (LDAP). Valid values: `trust`, `reject`, `scram-sha-256`, `md5`, `password`, `gss`, `sspi`, `ldap`, `radius`, `cert`, `pam`.
  final pulumi.Input<String> method;
  /// Optional. The value of this parameter is based on the value of the HbaItem.N.Method parameter. In this topic, LDAP is used as an example. You must configure this parameter. For more information, see [Authentication Methods](https://www.postgresql.org/docs/11/auth-methods.html).
  final pulumi.Input<String>? option;
  /// The priority of an AD domain. If you set this parameter to 0, the AD domain has the highest priority. Valid values: 0 to 10000. This parameter is used to identify each AD domain. When you add an AD domain, the value of the PriorityId parameter of the new AD domain cannot be the same as the value of the PriorityId parameter for any existing AD domain. When you modify or delete an AD domain, you must also modify or delete the value of the PriorityId parameter for this AD domain.
  final pulumi.Input<int> priorityId;
  /// The type of connection to the instance. Valid values:
  /// * **host**: specifies to verify TCP/IP connections, including SSL connections and non-SSL connections.
  /// * **hostssl**: specifies to verify only TCP/IP connections that are established over SSL connections.
  /// * **hostnossl**: specifies to verify only TCP/IP connections that are established over non-SSL connections.
  ///
  /// > **NOTE:** You can set this parameter to hostssl only when SSL encryption is enabled for the instance. For more information, see [Configure SSL encryption for an ApsaraDB RDS for PostgreSQL instance](https://www.alibabacloud.com/help/en/doc-detail/229518.htm).
  final pulumi.Input<String> type;
  /// The user that is allowed to access the instance. If you specify multiple users, separate the usernames with commas (,).
  final pulumi.Input<String> user;

  /// Creates a new [DdrInstancePgHbaConf].
  /// [address] The IP addresses from which the specified users can access the specified databases. If you set this parameter to 0.0.0.0/0, the specified users are allowed to access the specified databases from all IP addresses.
  /// [database] The name of the database that the specified users are allowed to access. If you set this parameter to all, the specified users are allowed to access all databases in the instance. If you specify multiple databases, separate the database names with commas (,).
  /// [mask] The mask of the instance. If the value of the `Address` parameter is an IP address, you can use this parameter to specify the mask of the IP address.
  /// [method] The authentication method of Lightweight Directory Access Protocol (LDAP). Valid values: `trust`, `reject`, `scram-sha-256`, `md5`, `password`, `gss`, `sspi`, `ldap`, `radius`, `cert`, `pam`.
  /// [option] Optional. The value of this parameter is based on the value of the HbaItem.N.Method parameter. In this topic, LDAP is used as an example. You must configure this parameter. For more information, see [Authentication Methods](https://www.postgresql.org/docs/11/auth-methods.html).
  /// [priorityId] The priority of an AD domain. If you set this parameter to 0, the AD domain has the highest priority. Valid values: 0 to 10000. This parameter is used to identify each AD domain. When you add an AD domain, the value of the PriorityId parameter of the new AD domain cannot be the same as the value of the PriorityId parameter for any existing AD domain. When you modify or delete an AD domain, you must also modify or delete the value of the PriorityId parameter for this AD domain.
  /// [type] The type of connection to the instance. Valid values:
  /// [user] The user that is allowed to access the instance. If you specify multiple users, separate the usernames with commas (,).
  DdrInstancePgHbaConf({
    required this.address,
    required this.database,
    this.mask,
    required this.method,
    this.option,
    required this.priorityId,
    required this.type,
    required this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'database': database,
      'mask': ?mask,
      'method': method,
      'option': ?option,
      'priorityId': priorityId,
      'type': type,
      'user': user,
    };
  }

  factory DdrInstancePgHbaConf.fromMap(Map<String, dynamic> map) {
    return DdrInstancePgHbaConf(
      address: (map['address'] as String).input(),
      database: (map['database'] as String).input(),
      mask: map['mask'] == null ? null : (map['mask']! as String).input(),
      method: (map['method'] as String).input(),
      option: map['option'] == null ? null : (map['option']! as String).input(),
      priorityId: (map['priorityId'] as int).input(),
      type: (map['type'] as String).input(),
      user: (map['user'] as String).input(),
    );
  }
}

