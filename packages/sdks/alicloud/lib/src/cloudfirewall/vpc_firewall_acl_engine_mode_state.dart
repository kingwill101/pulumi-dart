// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VpcFirewallAclEngineMode resources.
class VpcFirewallAclEngineModeState {
  /// The ID of member account.
  final pulumi.Input<String>? memberUid;
  /// The mode of the ACL engine. Possible values are `0`, `1`.
  final pulumi.Input<int>? strictMode;
  /// The ID of the VPC firewall.
  final pulumi.Input<String>? vpcFirewallId;

  /// Creates a new [VpcFirewallAclEngineModeState].
  /// [memberUid] The ID of member account.
  /// [strictMode] The mode of the ACL engine. Possible values are `0`, `1`.
  /// [vpcFirewallId] The ID of the VPC firewall.
  VpcFirewallAclEngineModeState({
    this.memberUid,
    this.strictMode,
    this.vpcFirewallId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'memberUid': ?memberUid,
      'strictMode': ?strictMode,
      'vpcFirewallId': ?vpcFirewallId,
    };
  }

  factory VpcFirewallAclEngineModeState.fromMap(Map<String, dynamic> map) {
    return VpcFirewallAclEngineModeState(
      memberUid: (() { final guardedValue = map['memberUid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      strictMode: (() { final guardedValue = map['strictMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      vpcFirewallId: (() { final guardedValue = map['vpcFirewallId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

