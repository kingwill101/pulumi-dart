// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VpdGrantRule resources.
class VpdGrantRuleState {
  /// The Creation time.
  final pulumi.Input<String>? createTime;
  /// The ID of the ER instance under the cross-account tenant.
  final pulumi.Input<String>? erId;
  /// Cross-account authorized tenant ID.
  final pulumi.Input<String>? grantTenantId;
  /// Instance ID of VPD.
  final pulumi.Input<String>? instanceId;
  /// The Region ID.
  final pulumi.Input<String>? regionId;

  /// Creates a new [VpdGrantRuleState].
  /// [createTime] The Creation time.
  /// [erId] The ID of the ER instance under the cross-account tenant.
  /// [grantTenantId] Cross-account authorized tenant ID.
  /// [instanceId] Instance ID of VPD.
  /// [regionId] The Region ID.
  VpdGrantRuleState({
    this.createTime,
    this.erId,
    this.grantTenantId,
    this.instanceId,
    this.regionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'erId': ?erId,
      'grantTenantId': ?grantTenantId,
      'instanceId': ?instanceId,
      'regionId': ?regionId,
    };
  }

  factory VpdGrantRuleState.fromMap(Map<String, dynamic> map) {
    return VpdGrantRuleState(
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      erId: map['erId'] == null ? null : (map['erId']! as String).input(),
      grantTenantId: map['grantTenantId'] == null ? null : (map['grantTenantId']! as String).input(),
      instanceId: map['instanceId'] == null ? null : (map['instanceId']! as String).input(),
      regionId: map['regionId'] == null ? null : (map['regionId']! as String).input(),
    );
  }
}

