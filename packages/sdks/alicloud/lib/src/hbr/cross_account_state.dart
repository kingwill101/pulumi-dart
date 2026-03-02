// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering CrossAccount resources.
class CrossAccountState {
  /// Backup account alias
  final pulumi.Input<String>? alias;
  /// Timestamp of the creation time
  final pulumi.Input<int>? createTime;
  /// The name of RAM role that the backup account authorizes the management account to manage its resources
  final pulumi.Input<String>? crossAccountRoleName;
  /// The uid of the backup account.
  final pulumi.Input<int>? crossAccountUserId;

  /// Creates a new [CrossAccountState].
  /// [alias] Backup account alias
  /// [createTime] Timestamp of the creation time
  /// [crossAccountRoleName] The name of RAM role that the backup account authorizes the management account to manage its resources
  /// [crossAccountUserId] The uid of the backup account.
  CrossAccountState({
    this.alias,
    this.createTime,
    this.crossAccountRoleName,
    this.crossAccountUserId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alias': ?alias,
      'createTime': ?createTime,
      'crossAccountRoleName': ?crossAccountRoleName,
      'crossAccountUserId': ?crossAccountUserId,
    };
  }

  factory CrossAccountState.fromMap(Map<String, dynamic> map) {
    return CrossAccountState(
      alias: map['alias'] == null ? null : (map['alias']! as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime']! as int).input(),
      crossAccountRoleName: map['crossAccountRoleName'] == null ? null : (map['crossAccountRoleName']! as String).input(),
      crossAccountUserId: map['crossAccountUserId'] == null ? null : (map['crossAccountUserId']! as int).input(),
    );
  }
}

