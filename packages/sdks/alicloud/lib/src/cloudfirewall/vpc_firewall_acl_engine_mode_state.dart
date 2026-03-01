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
    pulumi.Output<String>? memberUid,
    pulumi.Output<int>? strictMode,
    pulumi.Output<String>? vpcFirewallId,
  }) :
      memberUid = pulumi.Input.asOptionalInput<String>(memberUid),
      strictMode = pulumi.Input.asOptionalInput<int>(strictMode),
      vpcFirewallId = pulumi.Input.asOptionalInput<String>(vpcFirewallId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'memberUid': ?memberUid,
      'strictMode': ?strictMode,
      'vpcFirewallId': ?vpcFirewallId,
    };
  }

  factory VpcFirewallAclEngineModeState.fromMap(Map<String, dynamic> map) {
    return VpcFirewallAclEngineModeState(
      memberUid: map['memberUid'] == null ? null : pulumi.Output.create<String>(map['memberUid'] as String),
      strictMode: map['strictMode'] == null ? null : pulumi.Output.create<int>(map['strictMode'] as int),
      vpcFirewallId: map['vpcFirewallId'] == null ? null : pulumi.Output.create<String>(map['vpcFirewallId'] as String),
    );
  }
}

