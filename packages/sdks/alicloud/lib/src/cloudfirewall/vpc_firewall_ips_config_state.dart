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
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<String>? lang;

  /// MemberUid
  ///
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
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
    this.basicRules,
    this.enableAllPatch,
    this.lang,
    this.memberUid,
    this.ruleClass,
    this.runMode,
    this.vpcFirewallId,
  });

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
      basicRules: (() {
        final guardedValue = map['basicRules'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      enableAllPatch: (() {
        final guardedValue = map['enableAllPatch'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      lang: (() {
        final guardedValue = map['lang'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      memberUid: (() {
        final guardedValue = map['memberUid'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ruleClass: (() {
        final guardedValue = map['ruleClass'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      runMode: (() {
        final guardedValue = map['runMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      vpcFirewallId: (() {
        final guardedValue = map['vpcFirewallId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
