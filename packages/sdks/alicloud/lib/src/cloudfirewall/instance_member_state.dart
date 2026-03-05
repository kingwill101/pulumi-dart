// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering InstanceMember resources.
class InstanceMemberState {
  /// When the cloud firewall member account was added.&gt; use second-level timestamp format.
  final pulumi.Input<int>? createTime;
  /// Remarks of cloud firewall member accounts.
  final pulumi.Input<String>? memberDesc;
  /// The name of the cloud firewall member account.
  final pulumi.Input<String>? memberDisplayName;
  /// The UID of the cloud firewall member account.
  final pulumi.Input<String>? memberUid;
  /// The last modification time of the cloud firewall member account.&gt; use second-level timestamp format.
  final pulumi.Input<int>? modifyTime;
  /// The resource attribute field that represents the resource status.
  final pulumi.Input<String>? status;

  /// Creates a new [InstanceMemberState].
  /// [createTime] When the cloud firewall member account was added.&gt; use second-level timestamp format.
  /// [memberDesc] Remarks of cloud firewall member accounts.
  /// [memberDisplayName] The name of the cloud firewall member account.
  /// [memberUid] The UID of the cloud firewall member account.
  /// [modifyTime] The last modification time of the cloud firewall member account.&gt; use second-level timestamp format.
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
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      memberDesc: (() { final guardedValue = map['memberDesc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      memberDisplayName: (() { final guardedValue = map['memberDisplayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      memberUid: (() { final guardedValue = map['memberUid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modifyTime: (() { final guardedValue = map['modifyTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

