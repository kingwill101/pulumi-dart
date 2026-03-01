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
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? erId,
    pulumi.Output<String>? grantTenantId,
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? regionId,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      erId = pulumi.Input.asOptionalInput<String>(erId),
      grantTenantId = pulumi.Input.asOptionalInput<String>(grantTenantId),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      regionId = pulumi.Input.asOptionalInput<String>(regionId);

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
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      erId: map['erId'] == null ? null : pulumi.Output.create<String>(map['erId'] as String),
      grantTenantId: map['grantTenantId'] == null ? null : pulumi.Output.create<String>(map['grantTenantId'] as String),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      regionId: map['regionId'] == null ? null : pulumi.Output.create<String>(map['regionId'] as String),
    );
  }
}

