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
    required int basicRules,
    required int enableAllPatch,
    String? lang,
    String? memberUid,
    String? ruleClass,
    required int runMode,
    required String vpcFirewallId,
  }) :
      basicRules = pulumi.Input.asInput<int>(basicRules),
      enableAllPatch = pulumi.Input.asInput<int>(enableAllPatch),
      lang = pulumi.Input.asOptionalInput<String>(lang),
      memberUid = pulumi.Input.asOptionalInput<String>(memberUid),
      ruleClass = pulumi.Input.asOptionalInput<String>(ruleClass),
      runMode = pulumi.Input.asInput<int>(runMode),
      vpcFirewallId = pulumi.Input.asInput<String>(vpcFirewallId);

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
      basicRules: map['basicRules'] as int,
      enableAllPatch: map['enableAllPatch'] as int,
      lang: map['lang'] == null ? null : map['lang'] as String,
      memberUid: map['memberUid'] == null ? null : map['memberUid'] as String,
      ruleClass: map['ruleClass'] == null ? null : map['ruleClass'] as String,
      runMode: map['runMode'] as int,
      vpcFirewallId: map['vpcFirewallId'] as String,
    );
  }
}

