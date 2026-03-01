// ignore_for_file: unused_element, unnecessary_cast


class GetInstanceMembersMember {
  /// When the cloud firewall member account was added.> use second-level timestamp format.
  final int createTime;
  /// The instance id.
  final String id;
  /// Remarks of cloud firewall member accounts.
  final String memberDesc;
  /// The name of the cloud firewall member account.
  final String memberDisplayName;
  /// The UID of the cloud firewall member account.
  final String memberUid;
  /// The last modification time of the cloud firewall member account.> use second-level timestamp format.
  final int modifyTime;
  /// The resource attribute field that represents the resource status.
  final String status;

  /// Creates a new [GetInstanceMembersMember].
  /// [createTime] When the cloud firewall member account was added.> use second-level timestamp format.
  /// [id] The instance id.
  /// [memberDesc] Remarks of cloud firewall member accounts.
  /// [memberDisplayName] The name of the cloud firewall member account.
  /// [memberUid] The UID of the cloud firewall member account.
  /// [modifyTime] The last modification time of the cloud firewall member account.> use second-level timestamp format.
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
      createTime: map['createTime'] as int,
      id: map['id'] as String,
      memberDesc: map['memberDesc'] as String,
      memberDisplayName: map['memberDisplayName'] as String,
      memberUid: map['memberUid'] as String,
      modifyTime: map['modifyTime'] as int,
      status: map['status'] as String,
    );
  }
}

