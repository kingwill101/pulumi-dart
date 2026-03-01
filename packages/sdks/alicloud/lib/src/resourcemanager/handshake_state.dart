// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Handshake resources.
class HandshakeState {
  /// The time when the invitation was created. The time is displayed in UTC.
  final pulumi.Input<String>? createTime;
  /// The time when the invitation expires. The time is displayed in UTC.
  final pulumi.Input<String>? expireTime;
  /// The ID of the management account of the resource directory.
  final pulumi.Input<String>? masterAccountId;
  /// The name of the management account of the resource directory.
  final pulumi.Input<String>? masterAccountName;
  /// The time when the invitation was modified. The time is displayed in UTC.
  final pulumi.Input<String>? modifyTime;
  /// The description of the invitation.
  /// The description can be up to 1,024 characters in length.
  final pulumi.Input<String>? note;
  /// The ID of the resource directory.
  final pulumi.Input<String>? resourceDirectoryId;
  /// The status of the invitation.
  final pulumi.Input<String>? status;
  /// The ID or logon email address of the account that you want to invite.
  final pulumi.Input<String>? targetEntity;
  /// The type of the invited account. Valid values:
  ///
  /// - Account: indicates the ID of the account.
  /// - Email: indicates the logon email address of the account.
  final pulumi.Input<String>? targetType;

  /// Creates a new [HandshakeState].
  /// [createTime] The time when the invitation was created. The time is displayed in UTC.
  /// [expireTime] The time when the invitation expires. The time is displayed in UTC.
  /// [masterAccountId] The ID of the management account of the resource directory.
  /// [masterAccountName] The name of the management account of the resource directory.
  /// [modifyTime] The time when the invitation was modified. The time is displayed in UTC.
  /// [note] The description of the invitation.
  /// [resourceDirectoryId] The ID of the resource directory.
  /// [status] The status of the invitation.
  /// [targetEntity] The ID or logon email address of the account that you want to invite.
  /// [targetType] The type of the invited account. Valid values:
  HandshakeState({
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? expireTime,
    pulumi.Output<String>? masterAccountId,
    pulumi.Output<String>? masterAccountName,
    pulumi.Output<String>? modifyTime,
    pulumi.Output<String>? note,
    pulumi.Output<String>? resourceDirectoryId,
    pulumi.Output<String>? status,
    pulumi.Output<String>? targetEntity,
    pulumi.Output<String>? targetType,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      expireTime = pulumi.Input.asOptionalInput<String>(expireTime),
      masterAccountId = pulumi.Input.asOptionalInput<String>(masterAccountId),
      masterAccountName = pulumi.Input.asOptionalInput<String>(masterAccountName),
      modifyTime = pulumi.Input.asOptionalInput<String>(modifyTime),
      note = pulumi.Input.asOptionalInput<String>(note),
      resourceDirectoryId = pulumi.Input.asOptionalInput<String>(resourceDirectoryId),
      status = pulumi.Input.asOptionalInput<String>(status),
      targetEntity = pulumi.Input.asOptionalInput<String>(targetEntity),
      targetType = pulumi.Input.asOptionalInput<String>(targetType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'expireTime': ?expireTime,
      'masterAccountId': ?masterAccountId,
      'masterAccountName': ?masterAccountName,
      'modifyTime': ?modifyTime,
      'note': ?note,
      'resourceDirectoryId': ?resourceDirectoryId,
      'status': ?status,
      'targetEntity': ?targetEntity,
      'targetType': ?targetType,
    };
  }

  factory HandshakeState.fromMap(Map<String, dynamic> map) {
    return HandshakeState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      expireTime: map['expireTime'] == null ? null : pulumi.Output.create<String>(map['expireTime'] as String),
      masterAccountId: map['masterAccountId'] == null ? null : pulumi.Output.create<String>(map['masterAccountId'] as String),
      masterAccountName: map['masterAccountName'] == null ? null : pulumi.Output.create<String>(map['masterAccountName'] as String),
      modifyTime: map['modifyTime'] == null ? null : pulumi.Output.create<String>(map['modifyTime'] as String),
      note: map['note'] == null ? null : pulumi.Output.create<String>(map['note'] as String),
      resourceDirectoryId: map['resourceDirectoryId'] == null ? null : pulumi.Output.create<String>(map['resourceDirectoryId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      targetEntity: map['targetEntity'] == null ? null : pulumi.Output.create<String>(map['targetEntity'] as String),
      targetType: map['targetType'] == null ? null : pulumi.Output.create<String>(map['targetType'] as String),
    );
  }
}

