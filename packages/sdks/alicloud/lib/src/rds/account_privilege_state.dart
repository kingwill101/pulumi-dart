// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AccountPrivilege resources.
class AccountPrivilegeState {
  /// A specified account name.
  final pulumi.Input<String>? accountName;
  /// List of specified database name.
  final pulumi.Input<List<String>>? dbNames;
  /// The Id of instance in which account belongs.
  final pulumi.Input<String>? instanceId;
  /// The privilege of one account access database. Valid values:
  /// - ReadOnly: This value is only for MySQL, MariaDB and SQL Server
  /// - ReadWrite: This value is only for MySQL, MariaDB and SQL Server
  /// - DDLOnly: (Available in 1.64.0+) This value is only for MySQL and MariaDB
  /// - DMLOnly: (Available in 1.64.0+) This value is only for MySQL and MariaDB
  /// - DBOwner: (Available in 1.64.0+) This value is only for SQL Server and PostgreSQL.
  /// Default to "ReadOnly".
  final pulumi.Input<String>? privilege;

  /// Creates a new [AccountPrivilegeState].
  /// [accountName] A specified account name.
  /// [dbNames] List of specified database name.
  /// [instanceId] The Id of instance in which account belongs.
  /// [privilege] The privilege of one account access database. Valid values:
  AccountPrivilegeState({
    pulumi.Output<String>? accountName,
    pulumi.Output<List<String>>? dbNames,
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? privilege,
  }) :
      accountName = pulumi.Input.asOptionalInput<String>(accountName),
      dbNames = pulumi.Input.asOptionalInput<List<String>>(dbNames),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      privilege = pulumi.Input.asOptionalInput<String>(privilege);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': ?accountName,
      'dbNames': ?dbNames,
      'instanceId': ?instanceId,
      'privilege': ?privilege,
    };
  }

  factory AccountPrivilegeState.fromMap(Map<String, dynamic> map) {
    return AccountPrivilegeState(
      accountName: map['accountName'] == null ? null : pulumi.Output.create<String>(map['accountName'] as String),
      dbNames: map['dbNames'] == null ? null : pulumi.Output.create<List<String>>((map['dbNames'] as List).cast<String>()),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      privilege: map['privilege'] == null ? null : pulumi.Output.create<String>(map['privilege'] as String),
    );
  }
}

