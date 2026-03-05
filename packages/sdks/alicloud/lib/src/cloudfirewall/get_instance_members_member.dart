// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceMembersMember {
  /// When the cloud firewall member account was added.&gt; use second-level timestamp format.
  final pulumi.Input<int> createTime;
  /// The instance id.
  final pulumi.Input<String> id;
  /// Remarks of cloud firewall member accounts.
  final pulumi.Input<String> memberDesc;
  /// The name of the cloud firewall member account.
  final pulumi.Input<String> memberDisplayName;
  /// The UID of the cloud firewall member account.
  final pulumi.Input<String> memberUid;
  /// The last modification time of the cloud firewall member account.&gt; use second-level timestamp format.
  final pulumi.Input<int> modifyTime;
  /// The resource attribute field that represents the resource status.
  final pulumi.Input<String> status;

  /// Creates a new [GetInstanceMembersMember].
  /// [createTime] When the cloud firewall member account was added.&gt; use second-level timestamp format.
  /// [id] The instance id.
  /// [memberDesc] Remarks of cloud firewall member accounts.
  /// [memberDisplayName] The name of the cloud firewall member account.
  /// [memberUid] The UID of the cloud firewall member account.
  /// [modifyTime] The last modification time of the cloud firewall member account.&gt; use second-level timestamp format.
  /// [status] The resource attribute field that represents the resource status.
  GetInstanceMembersMember({
    required this.createTime,
    required this.id,
    required this.memberDesc,
    required this.memberDisplayName,
    required this.memberUid,
    required this.modifyTime,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'id': id,
      'memberDesc': memberDesc,
      'memberDisplayName': memberDisplayName,
      'memberUid': memberUid,
      'modifyTime': modifyTime,
      'status': status,
    };
  }

  factory GetInstanceMembersMember.fromMap(Map<String, dynamic> map) {
    return GetInstanceMembersMember(
      createTime: pulumi.Input.fromValue(map['createTime'] as int),
      id: pulumi.Input.fromValue(map['id'] as String),
      memberDesc: pulumi.Input.fromValue(map['memberDesc'] as String),
      memberDisplayName: pulumi.Input.fromValue(map['memberDisplayName'] as String),
      memberUid: pulumi.Input.fromValue(map['memberUid'] as String),
      modifyTime: pulumi.Input.fromValue(map['modifyTime'] as int),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}

