// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetHandshakesHandshake {
  /// The time when the invitation expires.
  final pulumi.Input<String> expireTime;
  /// The ID of the invitation.
  final pulumi.Input<String> handshakeId;
  /// The ID of the resource.
  final pulumi.Input<String> id;
  /// (Available in v1.114.0+) The real name of the invited account.
  final pulumi.Input<String> invitedAccountRealName;
  /// The ID of the master account of the resource directory.
  final pulumi.Input<String> masterAccountId;
  /// The name of the master account of the resource directory.
  final pulumi.Input<String> masterAccountName;
  /// (Available in v1.114.0+) The real name of the master account of the resource directory.
  final pulumi.Input<String> masterAccountRealName;
  /// The time when the invitation was modified.
  final pulumi.Input<String> modifyTime;
  /// The invitation note.
  final pulumi.Input<String> note;
  /// The ID of the resource directory.
  final pulumi.Input<String> resourceDirectoryId;
  /// The status of handshake, valid values: `Accepted`, `Cancelled`, `Declined`, `Deleted`, `Expired` and `Pending`.
  final pulumi.Input<String> status;
  /// The ID or logon email address of the invited account.
  final pulumi.Input<String> targetEntity;
  /// The type of the invited account.
  final pulumi.Input<String> targetType;

  /// Creates a new [GetHandshakesHandshake].
  /// [expireTime] The time when the invitation expires.
  /// [handshakeId] The ID of the invitation.
  /// [id] The ID of the resource.
  /// [invitedAccountRealName] (Available in v1.114.0+) The real name of the invited account.
  /// [masterAccountId] The ID of the master account of the resource directory.
  /// [masterAccountName] The name of the master account of the resource directory.
  /// [masterAccountRealName] (Available in v1.114.0+) The real name of the master account of the resource directory.
  /// [modifyTime] The time when the invitation was modified.
  /// [note] The invitation note.
  /// [resourceDirectoryId] The ID of the resource directory.
  /// [status] The status of handshake, valid values: `Accepted`, `Cancelled`, `Declined`, `Deleted`, `Expired` and `Pending`.
  /// [targetEntity] The ID or logon email address of the invited account.
  /// [targetType] The type of the invited account.
  GetHandshakesHandshake({
    required this.expireTime,
    required this.handshakeId,
    required this.id,
    required this.invitedAccountRealName,
    required this.masterAccountId,
    required this.masterAccountName,
    required this.masterAccountRealName,
    required this.modifyTime,
    required this.note,
    required this.resourceDirectoryId,
    required this.status,
    required this.targetEntity,
    required this.targetType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expireTime': expireTime,
      'handshakeId': handshakeId,
      'id': id,
      'invitedAccountRealName': invitedAccountRealName,
      'masterAccountId': masterAccountId,
      'masterAccountName': masterAccountName,
      'masterAccountRealName': masterAccountRealName,
      'modifyTime': modifyTime,
      'note': note,
      'resourceDirectoryId': resourceDirectoryId,
      'status': status,
      'targetEntity': targetEntity,
      'targetType': targetType,
    };
  }

  factory GetHandshakesHandshake.fromMap(Map<String, dynamic> map) {
    return GetHandshakesHandshake(
      expireTime: (map['expireTime'] as String).input(),
      handshakeId: (map['handshakeId'] as String).input(),
      id: (map['id'] as String).input(),
      invitedAccountRealName: (map['invitedAccountRealName'] as String).input(),
      masterAccountId: (map['masterAccountId'] as String).input(),
      masterAccountName: (map['masterAccountName'] as String).input(),
      masterAccountRealName: (map['masterAccountRealName'] as String).input(),
      modifyTime: (map['modifyTime'] as String).input(),
      note: (map['note'] as String).input(),
      resourceDirectoryId: (map['resourceDirectoryId'] as String).input(),
      status: (map['status'] as String).input(),
      targetEntity: (map['targetEntity'] as String).input(),
      targetType: (map['targetType'] as String).input(),
    );
  }
}

