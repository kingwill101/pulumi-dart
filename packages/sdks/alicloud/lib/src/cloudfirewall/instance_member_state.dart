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
    pulumi.Output<int>? createTime,
    pulumi.Output<String>? memberDesc,
    pulumi.Output<String>? memberDisplayName,
    pulumi.Output<String>? memberUid,
    pulumi.Output<int>? modifyTime,
    pulumi.Output<String>? status,
  }) :
      createTime = pulumi.Input.asOptionalInput<int>(createTime),
      memberDesc = pulumi.Input.asOptionalInput<String>(memberDesc),
      memberDisplayName = pulumi.Input.asOptionalInput<String>(memberDisplayName),
      memberUid = pulumi.Input.asOptionalInput<String>(memberUid),
      modifyTime = pulumi.Input.asOptionalInput<int>(modifyTime),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      createTime: map['createTime'] == null ? null : pulumi.Output.create<int>(map['createTime'] as int),
      memberDesc: map['memberDesc'] == null ? null : pulumi.Output.create<String>(map['memberDesc'] as String),
      memberDisplayName: map['memberDisplayName'] == null ? null : pulumi.Output.create<String>(map['memberDisplayName'] as String),
      memberUid: map['memberUid'] == null ? null : pulumi.Output.create<String>(map['memberUid'] as String),
      modifyTime: map['modifyTime'] == null ? null : pulumi.Output.create<int>(map['modifyTime'] as int),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

