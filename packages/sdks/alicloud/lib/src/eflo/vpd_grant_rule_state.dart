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
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      erId: (() { final guardedValue = map['erId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      grantTenantId: (() { final guardedValue = map['grantTenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regionId: (() { final guardedValue = map['regionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

