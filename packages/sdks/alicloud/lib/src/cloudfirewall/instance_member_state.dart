// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering InstanceMember resources.
class InstanceMemberState {
  /// When the cloud firewall member account was added.> use second-level timestamp format.
  final pulumi.Input<int>? createTime;
  /// Remarks of cloud firewall member accounts.
  final pulumi.Input<String>? memberDesc;
  /// The name of the cloud firewall member account.
  final pulumi.Input<String>? memberDisplayName;
  /// The UID of the cloud firewall member account.
  final pulumi.Input<String>? memberUid;
  /// The last modification time of the cloud firewall member account.> use second-level timestamp format.
  final pulumi.Input<int>? modifyTime;
  /// The resource attribute field that represents the resource status.
  final pulumi.Input<String>? status;

  /// Creates a new [InstanceMemberState].
  /// [createTime] When the cloud firewall member account was added.> use second-level timestamp format.
  /// [memberDesc] Remarks of cloud firewall member accounts.
  /// [memberDisplayName] The name of the cloud firewall member account.
  /// [memberUid] The UID of the cloud firewall member account.
  /// [modifyTime] The last modification time of the cloud firewall member account.> use second-level timestamp format.
  /// [status] The resource attribute field that represents the resource status.
  InstanceMemberState({
    this.createTime,
    this.memberDesc,
    this.memberDisplayName,
    this.memberUid,
    this.modifyTime,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'memberDesc': ?memberDesc,
      'memberDisplayName': ?memberDisplayName,
      'memberUid': ?memberUid,
      'modifyTime': ?modifyTime,
      'status': ?status,
    };
  }

  factory InstanceMemberState.fromMap(Map<String, dynamic> map) {
    return InstanceMemberState(
      createTime: map['createTime'] == null ? null : (map['createTime']! as int).input(),
      memberDesc: map['memberDesc'] == null ? null : (map['memberDesc']! as String).input(),
      memberDisplayName: map['memberDisplayName'] == null ? null : (map['memberDisplayName']! as String).input(),
      memberUid: map['memberUid'] == null ? null : (map['memberUid']! as String).input(),
      modifyTime: map['modifyTime'] == null ? null : (map['modifyTime']! as int).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

