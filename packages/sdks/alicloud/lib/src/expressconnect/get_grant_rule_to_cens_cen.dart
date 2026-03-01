// ignore_for_file: unused_element, unnecessary_cast


class GetGrantRuleToCensCen {
  /// The ID of the authorized CEN instance.
  final String cenId;
  /// The user ID (UID) of the Alibaba Cloud account to which the CEN instance belongs.
  final int cenOwnerId;
  /// The time when the instance was created.
  final String createTime;
  /// The ID of the Grant Rule To Cen. It formats as `<cen_id>:<cen_owner_id>:<instance_id>`.
  final String id;

  /// Creates a new [GetGrantRuleToCensCen].
  /// [cenId] The ID of the authorized CEN instance.
  /// [cenOwnerId] The user ID (UID) of the Alibaba Cloud account to which the CEN instance belongs.
  /// [createTime] The time when the instance was created.
  /// [id] The ID of the Grant Rule To Cen. It formats as `<cen_id>:<cen_owner_id>:<instance_id>`.
  GetGrantRuleToCensCen({
    required this.cenId,
    required this.cenOwnerId,
    required this.createTime,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cenId': cenId,
      'cenOwnerId': cenOwnerId,
      'createTime': createTime,
      'id': id,
    };
  }

  factory GetGrantRuleToCensCen.fromMap(Map<String, dynamic> map) {
    return GetGrantRuleToCensCen(
      cenId: map['cenId'] as String,
      cenOwnerId: map['cenOwnerId'] as int,
      createTime: map['createTime'] as String,
      id: map['id'] as String,
    );
  }
}

