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
    pulumi.Output<String>? alias,
    pulumi.Output<int>? createTime,
    pulumi.Output<String>? crossAccountRoleName,
    pulumi.Output<int>? crossAccountUserId,
  }) :
      alias = pulumi.Input.asOptionalInput<String>(alias),
      createTime = pulumi.Input.asOptionalInput<int>(createTime),
      crossAccountRoleName = pulumi.Input.asOptionalInput<String>(crossAccountRoleName),
      crossAccountUserId = pulumi.Input.asOptionalInput<int>(crossAccountUserId);

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
      alias: map['alias'] == null ? null : pulumi.Output.create<String>(map['alias'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<int>(map['createTime'] as int),
      crossAccountRoleName: map['crossAccountRoleName'] == null ? null : pulumi.Output.create<String>(map['crossAccountRoleName'] as String),
      crossAccountUserId: map['crossAccountUserId'] == null ? null : pulumi.Output.create<int>(map['crossAccountUserId'] as int),
    );
  }
}

