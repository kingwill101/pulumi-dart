// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VpcFirewallIpsConfig resources.
class VpcFirewallIpsConfigState {
  /// Base rule switch. Value:
  final pulumi.Input<int>? basicRules;
  /// Virtual patch switch. Value:
  final pulumi.Input<int>? enableAllPatch;
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
  final pulumi.Input<int>? runMode;
  /// The ID of the VPC firewall instance. Value:
  /// - When VPC firewall protects the network instances (including VPC, VBR, and CCN) and the specified VPC, the instance ID uses the CEN instance ID. You can call the DescribeVpcFirewallCenList operation to query the instance ID of CEN.
  /// - When the VPC firewall protects the traffic between two VPCs connected through the express connection, the instance ID uses the VPC firewall instance ID. You can call the DescribeVpcFirewallList operation to query the instance ID of the VPC firewall.
  final pulumi.Input<String>? vpcFirewallId;

  /// Creates a new [VpcFirewallIpsConfigState].
  /// [basicRules] Base rule switch. Value:
  /// [enableAllPatch] Virtual patch switch. Value:
  /// [lang] Language
  /// [memberUid] MemberUid
  /// [ruleClass] IPS rule Group
  /// [runMode] IPS defense mode. Value:
  /// [vpcFirewallId] The ID of the VPC firewall instance. Value:
  VpcFirewallIpsConfigState({
    pulumi.Output<int>? basicRules,
    pulumi.Output<int>? enableAllPatch,
    pulumi.Output<String>? lang,
    pulumi.Output<String>? memberUid,
    pulumi.Output<String>? ruleClass,
    pulumi.Output<int>? runMode,
    pulumi.Output<String>? vpcFirewallId,
  }) :
      basicRules = pulumi.Input.asOptionalInput<int>(basicRules),
      enableAllPatch = pulumi.Input.asOptionalInput<int>(enableAllPatch),
      lang = pulumi.Input.asOptionalInput<String>(lang),
      memberUid = pulumi.Input.asOptionalInput<String>(memberUid),
      ruleClass = pulumi.Input.asOptionalInput<String>(ruleClass),
      runMode = pulumi.Input.asOptionalInput<int>(runMode),
      vpcFirewallId = pulumi.Input.asOptionalInput<String>(vpcFirewallId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basicRules': ?basicRules,
      'enableAllPatch': ?enableAllPatch,
      'lang': ?lang,
      'memberUid': ?memberUid,
      'ruleClass': ?ruleClass,
      'runMode': ?runMode,
      'vpcFirewallId': ?vpcFirewallId,
    };
  }

  factory VpcFirewallIpsConfigState.fromMap(Map<String, dynamic> map) {
    return VpcFirewallIpsConfigState(
      basicRules: map['basicRules'] == null ? null : pulumi.Output.create<int>(map['basicRules'] as int),
      enableAllPatch: map['enableAllPatch'] == null ? null : pulumi.Output.create<int>(map['enableAllPatch'] as int),
      lang: map['lang'] == null ? null : pulumi.Output.create<String>(map['lang'] as String),
      memberUid: map['memberUid'] == null ? null : pulumi.Output.create<String>(map['memberUid'] as String),
      ruleClass: map['ruleClass'] == null ? null : pulumi.Output.create<String>(map['ruleClass'] as String),
      runMode: map['runMode'] == null ? null : pulumi.Output.create<int>(map['runMode'] as int),
      vpcFirewallId: map['vpcFirewallId'] == null ? null : pulumi.Output.create<String>(map['vpcFirewallId'] as String),
    );
  }
}

