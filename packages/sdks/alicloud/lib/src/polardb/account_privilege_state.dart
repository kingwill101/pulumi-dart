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
    this.accountName,
    this.accountPrivilege,
    this.dbClusterId,
    this.dbNames,
  });

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
      accountName: map['accountName'] == null ? null : (map['accountName'] as String).input(),
      accountPrivilege: map['accountPrivilege'] == null ? null : (map['accountPrivilege'] as String).input(),
      dbClusterId: map['dbClusterId'] == null ? null : (map['dbClusterId'] as String).input(),
      dbNames: map['dbNames'] == null ? null : ((map['dbNames'] as List).cast<String>()).input(),
    );
  }
}

