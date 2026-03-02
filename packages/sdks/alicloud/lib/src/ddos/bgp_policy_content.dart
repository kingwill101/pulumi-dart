// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bgp_policy_content_finger_print_rule_list.dart';
import 'bgp_policy_content_layer4_rule_list.dart';
import 'bgp_policy_content_port_rule_list.dart';
import 'bgp_policy_content_source_block_list.dart';
import 'bgp_policy_content_source_limit.dart';

class BgpPolicyContent {
  /// Blacklist and whitelist timeout.
  final pulumi.Input<int>? blackIpListExpireAt;
  /// Whether to enable L4 protection.
  final pulumi.Input<bool>? enableDefense;
  /// Switch to discard ICMP.
  final pulumi.Input<bool>? enableDropIcmp;
  /// Whether the intelligent switch is on.
  final pulumi.Input<bool>? enableIntelligence;
  /// Fingerprint Rules. See `finger_print_rule_list` below.
  final pulumi.Input<List<BgpPolicyContentFingerPrintRuleList>>? fingerPrintRuleLists;
  /// Smart mode. Valid values: weak, hard, and default.
  final pulumi.Input<String>? intelligenceLevel;
  /// L4 protection rules. See `layer4_rule_list` below.
  final pulumi.Input<List<BgpPolicyContentLayer4RuleList>>? layer4RuleLists;
  /// Port Rule List. See `port_rule_list` below.
  final pulumi.Input<List<BgpPolicyContentPortRuleList>>? portRuleLists;
  /// Reflective port filtering.
  final pulumi.Input<List<int>>? reflectBlockUdpPortLists;
  /// List of Regional Banned Countries.
  final pulumi.Input<List<int>>? regionBlockCountryLists;
  /// List of Prohibited Provinces by Region.
  final pulumi.Input<List<int>>? regionBlockProvinceLists;
  /// Source pull Black. See `source_block_list` below.
  final pulumi.Input<List<BgpPolicyContentSourceBlockList>>? sourceBlockLists;
  /// Do not fill in when the source speed limit is deleted. See `source_limit` below.
  final pulumi.Input<BgpPolicyContentSourceLimit>? sourceLimit;
  /// Add white high protection back to source network segment switch.
  final pulumi.Input<bool>? whitenGfbrNets;

  /// Creates a new [BgpPolicyContent].
  /// [blackIpListExpireAt] Blacklist and whitelist timeout.
  /// [enableDefense] Whether to enable L4 protection.
  /// [enableDropIcmp] Switch to discard ICMP.
  /// [enableIntelligence] Whether the intelligent switch is on.
  /// [fingerPrintRuleLists] Fingerprint Rules. See `finger_print_rule_list` below.
  /// [intelligenceLevel] Smart mode. Valid values: weak, hard, and default.
  /// [layer4RuleLists] L4 protection rules. See `layer4_rule_list` below.
  /// [portRuleLists] Port Rule List. See `port_rule_list` below.
  /// [reflectBlockUdpPortLists] Reflective port filtering.
  /// [regionBlockCountryLists] List of Regional Banned Countries.
  /// [regionBlockProvinceLists] List of Prohibited Provinces by Region.
  /// [sourceBlockLists] Source pull Black. See `source_block_list` below.
  /// [sourceLimit] Do not fill in when the source speed limit is deleted. See `source_limit` below.
  /// [whitenGfbrNets] Add white high protection back to source network segment switch.
  BgpPolicyContent({
    this.blackIpListExpireAt,
    this.enableDefense,
    this.enableDropIcmp,
    this.enableIntelligence,
    this.fingerPrintRuleLists,
    this.intelligenceLevel,
    this.layer4RuleLists,
    this.portRuleLists,
    this.reflectBlockUdpPortLists,
    this.regionBlockCountryLists,
    this.regionBlockProvinceLists,
    this.sourceBlockLists,
    this.sourceLimit,
    this.whitenGfbrNets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blackIpListExpireAt': ?blackIpListExpireAt,
      'enableDefense': ?enableDefense,
      'enableDropIcmp': ?enableDropIcmp,
      'enableIntelligence': ?enableIntelligence,
      'fingerPrintRuleLists': ?pulumi.Input.mapOptionalInputValue<List<BgpPolicyContentFingerPrintRuleList>, List<Map<String, dynamic>>>(fingerPrintRuleLists, (value) => pulumi.Input.encodeList<BgpPolicyContentFingerPrintRuleList, Map<String, dynamic>>(value, (value) => value.toMap())),
      'intelligenceLevel': ?intelligenceLevel,
      'layer4RuleLists': ?pulumi.Input.mapOptionalInputValue<List<BgpPolicyContentLayer4RuleList>, List<Map<String, dynamic>>>(layer4RuleLists, (value) => pulumi.Input.encodeList<BgpPolicyContentLayer4RuleList, Map<String, dynamic>>(value, (value) => value.toMap())),
      'portRuleLists': ?pulumi.Input.mapOptionalInputValue<List<BgpPolicyContentPortRuleList>, List<Map<String, dynamic>>>(portRuleLists, (value) => pulumi.Input.encodeList<BgpPolicyContentPortRuleList, Map<String, dynamic>>(value, (value) => value.toMap())),
      'reflectBlockUdpPortLists': ?reflectBlockUdpPortLists,
      'regionBlockCountryLists': ?regionBlockCountryLists,
      'regionBlockProvinceLists': ?regionBlockProvinceLists,
      'sourceBlockLists': ?pulumi.Input.mapOptionalInputValue<List<BgpPolicyContentSourceBlockList>, List<Map<String, dynamic>>>(sourceBlockLists, (value) => pulumi.Input.encodeList<BgpPolicyContentSourceBlockList, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sourceLimit': ?pulumi.Input.mapOptionalInputValue<BgpPolicyContentSourceLimit, Map<String, dynamic>>(sourceLimit, (value) => value.toMap()),
      'whitenGfbrNets': ?whitenGfbrNets,
    };
  }

  factory BgpPolicyContent.fromMap(Map<String, dynamic> map) {
    return BgpPolicyContent(
      blackIpListExpireAt: map['blackIpListExpireAt'] == null ? null : (map['blackIpListExpireAt']! as int).input(),
      enableDefense: map['enableDefense'] == null ? null : (map['enableDefense']! as bool).input(),
      enableDropIcmp: map['enableDropIcmp'] == null ? null : (map['enableDropIcmp']! as bool).input(),
      enableIntelligence: map['enableIntelligence'] == null ? null : (map['enableIntelligence']! as bool).input(),
      fingerPrintRuleLists: map['fingerPrintRuleLists'] == null ? null : (pulumi.Input.decodeList<BgpPolicyContentFingerPrintRuleList>(map['fingerPrintRuleLists']!, (value) => BgpPolicyContentFingerPrintRuleList.fromMap((value as Map).cast<String, dynamic>()))).input(),
      intelligenceLevel: map['intelligenceLevel'] == null ? null : (map['intelligenceLevel']! as String).input(),
      layer4RuleLists: map['layer4RuleLists'] == null ? null : (pulumi.Input.decodeList<BgpPolicyContentLayer4RuleList>(map['layer4RuleLists']!, (value) => BgpPolicyContentLayer4RuleList.fromMap((value as Map).cast<String, dynamic>()))).input(),
      portRuleLists: map['portRuleLists'] == null ? null : (pulumi.Input.decodeList<BgpPolicyContentPortRuleList>(map['portRuleLists']!, (value) => BgpPolicyContentPortRuleList.fromMap((value as Map).cast<String, dynamic>()))).input(),
      reflectBlockUdpPortLists: map['reflectBlockUdpPortLists'] == null ? null : ((map['reflectBlockUdpPortLists']! as List).cast<int>()).input(),
      regionBlockCountryLists: map['regionBlockCountryLists'] == null ? null : ((map['regionBlockCountryLists']! as List).cast<int>()).input(),
      regionBlockProvinceLists: map['regionBlockProvinceLists'] == null ? null : ((map['regionBlockProvinceLists']! as List).cast<int>()).input(),
      sourceBlockLists: map['sourceBlockLists'] == null ? null : (pulumi.Input.decodeList<BgpPolicyContentSourceBlockList>(map['sourceBlockLists']!, (value) => BgpPolicyContentSourceBlockList.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sourceLimit: map['sourceLimit'] == null ? null : (BgpPolicyContentSourceLimit.fromMap((map['sourceLimit']! as Map).cast<String, dynamic>())).input(),
      whitenGfbrNets: map['whitenGfbrNets'] == null ? null : (map['whitenGfbrNets']! as bool).input(),
    );
  }
}

