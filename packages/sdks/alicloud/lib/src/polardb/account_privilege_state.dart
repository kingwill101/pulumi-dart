// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AccountPrivilege resources.
class AccountPrivilegeState {
  /// A specified account name.
  final pulumi.Input<String>? accountName;
  /// The privilege of one account access database. Valid values: ["ReadOnly", "ReadWrite"], ["DMLOnly", "DDLOnly"] added since version v1.101.0. Default to "ReadOnly".
  final pulumi.Input<String>? accountPrivilege;
  /// The Id of cluster in which account belongs.
  final pulumi.Input<String>? dbClusterId;
  /// List of specified database name.
  final pulumi.Input<List<String>>? dbNames;

  /// Creates a new [AccountPrivilegeState].
  /// [accountName] A specified account name.
  /// [accountPrivilege] The privilege of one account access database. Valid values: ["ReadOnly", "ReadWrite"], ["DMLOnly", "DDLOnly"] added since version v1.101.0. Default to "ReadOnly".
  /// [dbClusterId] The Id of cluster in which account belongs.
  /// [dbNames] List of specified database name.
  AccountPrivilegeState({
    pulumi.Output<String>? accountName,
    pulumi.Output<String>? accountPrivilege,
    pulumi.Output<String>? dbClusterId,
    pulumi.Output<List<String>>? dbNames,
  }) :
      accountName = pulumi.Input.asOptionalInput<String>(accountName),
      accountPrivilege = pulumi.Input.asOptionalInput<String>(accountPrivilege),
      dbClusterId = pulumi.Input.asOptionalInput<String>(dbClusterId),
      dbNames = pulumi.Input.asOptionalInput<List<String>>(dbNames);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': ?accountName,
      'accountPrivilege': ?accountPrivilege,
      'dbClusterId': ?dbClusterId,
      'dbNames': ?dbNames,
    };
  }

  factory AccountPrivilegeState.fromMap(Map<String, dynamic> map) {
    return AccountPrivilegeState(
      accountName: map['accountName'] == null ? null : pulumi.Output.create<String>(map['accountName'] as String),
      accountPrivilege: map['accountPrivilege'] == null ? null : pulumi.Output.create<String>(map['accountPrivilege'] as String),
      dbClusterId: map['dbClusterId'] == null ? null : pulumi.Output.create<String>(map['dbClusterId'] as String),
      dbNames: map['dbNames'] == null ? null : pulumi.Output.create<List<String>>((map['dbNames'] as List).cast<String>()),
    );
  }
}

