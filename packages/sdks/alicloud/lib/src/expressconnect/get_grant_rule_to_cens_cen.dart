// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGrantRuleToCensCen {
  /// The ID of the authorized CEN instance.
  final pulumi.Input<String> cenId;
  /// The user ID (UID) of the Alibaba Cloud account to which the CEN instance belongs.
  final pulumi.Input<int> cenOwnerId;
  /// The time when the instance was created.
  final pulumi.Input<String> createTime;
  /// The ID of the Grant Rule To Cen. It formats as `&lt;cen_id&gt;:&lt;cen_owner_id&gt;:&lt;instance_id&gt;`.
  final pulumi.Input<String> id;

  /// Creates a new [GetGrantRuleToCensCen].
  /// [cenId] The ID of the authorized CEN instance.
  /// [cenOwnerId] The user ID (UID) of the Alibaba Cloud account to which the CEN instance belongs.
  /// [createTime] The time when the instance was created.
  /// [id] The ID of the Grant Rule To Cen. It formats as `&lt;cen_id&gt;:&lt;cen_owner_id&gt;:&lt;instance_id&gt;`.
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
      cenId: pulumi.Input.fromValue(map['cenId'] as String),
      cenOwnerId: pulumi.Input.fromValue(map['cenOwnerId'] as int),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}

