// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudfirewall_vpc_firewall_acl_engine_mode_vpc_firewall_acl_engine_mode_args_doc}
/// The set of arguments for VpcFirewallAclEngineMode.
/// {@endtemplate}
/// {@macro pulumi_cloudfirewall_vpc_firewall_acl_engine_mode_vpc_firewall_acl_engine_mode_args_doc}
class VpcFirewallAclEngineModeArgs {
  /// The ID of member account.
  final pulumi.Input<String>? memberUid;
  /// The mode of the ACL engine. Possible values are `0`, `1`.
  final pulumi.Input<int> strictMode;
  /// The ID of the VPC firewall.
  final pulumi.Input<String> vpcFirewallId;

  /// Creates a new [VpcFirewallAclEngineModeArgs].
  /// [memberUid] The ID of member account.
  /// [strictMode] The mode of the ACL engine. Possible values are `0`, `1`.
  /// [vpcFirewallId] The ID of the VPC firewall.
  VpcFirewallAclEngineModeArgs({
    pulumi.Output<String>? memberUid,
    required pulumi.Output<int> strictMode,
    required pulumi.Output<String> vpcFirewallId,
  }) :
      memberUid = pulumi.Input.asOptionalInput<String>(memberUid),
      strictMode = pulumi.Input.asInput<int>(strictMode),
      vpcFirewallId = pulumi.Input.asInput<String>(vpcFirewallId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'memberUid': ?memberUid,
      'strictMode': strictMode,
      'vpcFirewallId': vpcFirewallId,
    };
  }

  factory VpcFirewallAclEngineModeArgs.fromMap(Map<String, dynamic> map) {
    return VpcFirewallAclEngineModeArgs(
      memberUid: map['memberUid'] == null ? null : pulumi.Output.create<String>(map['memberUid'] as String),
      strictMode: pulumi.Output.create<int>(map['strictMode'] as int),
      vpcFirewallId: pulumi.Output.create<String>(map['vpcFirewallId'] as String),
    );
  }
}

