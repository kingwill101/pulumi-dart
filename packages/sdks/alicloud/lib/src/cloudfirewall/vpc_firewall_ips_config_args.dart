// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudfirewall_vpc_firewall_ips_config_vpc_firewall_ips_config_args_doc}
/// The set of arguments for VpcFirewallIpsConfig.
/// {@endtemplate}
/// {@macro pulumi_cloudfirewall_vpc_firewall_ips_config_vpc_firewall_ips_config_args_doc}
class VpcFirewallIpsConfigArgs {
  /// Base rule switch. Value:
  final pulumi.Input<int> basicRules;
  /// Virtual patch switch. Value:
  final pulumi.Input<int> enableAllPatch;
  /// Language
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<String>? lang;
  /// MemberUid
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<String>? memberUid;
  /// IPS rule Group
  final pulumi.Input<String>? ruleClass;
  /// IPS defense mode. Value:
  final pulumi.Input<int> runMode;
  /// The ID of the VPC firewall instance. Value:
  /// - When VPC firewall protects the network instances (including VPC, VBR, and CCN) and the specified VPC, the instance ID uses the CEN instance ID. You can call the DescribeVpcFirewallCenList operation to query the instance ID of CEN.
  /// - When the VPC firewall protects the traffic between two VPCs connected through the express connection, the instance ID uses the VPC firewall instance ID. You can call the DescribeVpcFirewallList operation to query the instance ID of the VPC firewall.
  final pulumi.Input<String> vpcFirewallId;

  /// Creates a new [VpcFirewallIpsConfigArgs].
  /// [basicRules] Base rule switch. Value:
  /// [enableAllPatch] Virtual patch switch. Value:
  /// [lang] Language
  /// [memberUid] MemberUid
  /// [ruleClass] IPS rule Group
  /// [runMode] IPS defense mode. Value:
  /// [vpcFirewallId] The ID of the VPC firewall instance. Value:
  VpcFirewallIpsConfigArgs({
    required this.basicRules,
    required this.enableAllPatch,
    this.lang,
    this.memberUid,
    this.ruleClass,
    required this.runMode,
    required this.vpcFirewallId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basicRules': basicRules,
      'enableAllPatch': enableAllPatch,
      'lang': ?lang,
      'memberUid': ?memberUid,
      'ruleClass': ?ruleClass,
      'runMode': runMode,
      'vpcFirewallId': vpcFirewallId,
    };
  }

  factory VpcFirewallIpsConfigArgs.fromMap(Map<String, dynamic> map) {
    return VpcFirewallIpsConfigArgs(
      basicRules: (map['basicRules'] as int).input(),
      enableAllPatch: (map['enableAllPatch'] as int).input(),
      lang: map['lang'] == null ? null : (map['lang']! as String).input(),
      memberUid: map['memberUid'] == null ? null : (map['memberUid']! as String).input(),
      ruleClass: map['ruleClass'] == null ? null : (map['ruleClass']! as String).input(),
      runMode: (map['runMode'] as int).input(),
      vpcFirewallId: (map['vpcFirewallId'] as String).input(),
    );
  }
}

