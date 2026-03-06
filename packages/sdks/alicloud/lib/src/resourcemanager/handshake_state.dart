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
  const HandshakeState({
    this.createTime,
    this.expireTime,
    this.masterAccountId,
    this.masterAccountName,
    this.modifyTime,
    this.note,
    this.resourceDirectoryId,
    this.status,
    this.targetEntity,
    this.targetType,
  });

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
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expireTime: (() { final guardedValue = map['expireTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      masterAccountId: (() { final guardedValue = map['masterAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      masterAccountName: (() { final guardedValue = map['masterAccountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modifyTime: (() { final guardedValue = map['modifyTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      note: (() { final guardedValue = map['note']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceDirectoryId: (() { final guardedValue = map['resourceDirectoryId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetEntity: (() { final guardedValue = map['targetEntity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetType: (() { final guardedValue = map['targetType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

