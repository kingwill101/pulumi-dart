// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_group_rule_group_rules_source_stateless_rules_and_custom_actions_stateless_rule_rule_definition_match_attributes_destination.dart';
import 'rule_group_rule_group_rules_source_stateless_rules_and_custom_actions_stateless_rule_rule_definition_match_attributes_destination_port.dart';
import 'rule_group_rule_group_rules_source_stateless_rules_and_custom_actions_stateless_rule_rule_definition_match_attributes_source.dart';
import 'rule_group_rule_group_rules_source_stateless_rules_and_custom_actions_stateless_rule_rule_definition_match_attributes_source_port.dart';
import 'rule_group_rule_group_rules_source_stateless_rules_and_custom_actions_stateless_rule_rule_definition_match_attributes_tcp_flag.dart';

class RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributes {
  /// Set of configuration blocks describing the destination ports to inspect for. If not specified, this matches with any destination port. See Destination Port below for details.
  final List<RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesDestinationPort>? destinationPorts;
  /// Set of configuration blocks describing the destination IP address and address ranges to inspect for, in CIDR notation. If not specified, this matches with any destination address. See Destination below for details.
  final List<RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesDestination>? destinations;
  /// Set of protocols to inspect for, specified using the protocol's assigned internet protocol number (IANA). If not specified, this matches with any protocol.
  final List<int>? protocols;
  /// Set of configuration blocks describing the source ports to inspect for. If not specified, this matches with any source port. See Source Port below for details.
  final List<RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesSourcePort>? sourcePorts;
  /// Set of configuration blocks describing the source IP address and address ranges to inspect for, in CIDR notation. If not specified, this matches with any source address. See Source below for details.
  final List<RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesSource>? sources;
  /// Set of configuration blocks containing the TCP flags and masks to inspect for. If not specified, this matches with any settings.
  final List<RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesTcpFlag>? tcpFlags;

  /// Creates a new [RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributes].
  /// [destinationPorts] Set of configuration blocks describing the destination ports to inspect for. If not specified, this matches with any destination port. See Destination Port below for details.
  /// [destinations] Set of configuration blocks describing the destination IP address and address ranges to inspect for, in CIDR notation. If not specified, this matches with any destination address. See Destination below for details.
  /// [protocols] Set of protocols to inspect for, specified using the protocol's assigned internet protocol number (IANA). If not specified, this matches with any protocol.
  /// [sourcePorts] Set of configuration blocks describing the source ports to inspect for. If not specified, this matches with any source port. See Source Port below for details.
  /// [sources] Set of configuration blocks describing the source IP address and address ranges to inspect for, in CIDR notation. If not specified, this matches with any source address. See Source below for details.
  /// [tcpFlags] Set of configuration blocks containing the TCP flags and masks to inspect for. If not specified, this matches with any settings.
  RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributes({
    this.destinationPorts,
    this.destinations,
    this.protocols,
    this.sourcePorts,
    this.sources,
    this.tcpFlags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationPorts': ?destinationPorts == null ? null : pulumi.Input.encodeList<RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesDestinationPort, Map<String, dynamic>>(destinationPorts!, (value) => value.toMap()),
      'destinations': ?destinations == null ? null : pulumi.Input.encodeList<RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesDestination, Map<String, dynamic>>(destinations!, (value) => value.toMap()),
      'protocols': ?protocols,
      'sourcePorts': ?sourcePorts == null ? null : pulumi.Input.encodeList<RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesSourcePort, Map<String, dynamic>>(sourcePorts!, (value) => value.toMap()),
      'sources': ?sources == null ? null : pulumi.Input.encodeList<RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesSource, Map<String, dynamic>>(sources!, (value) => value.toMap()),
      'tcpFlags': ?tcpFlags == null ? null : pulumi.Input.encodeList<RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesTcpFlag, Map<String, dynamic>>(tcpFlags!, (value) => value.toMap()),
    };
  }

  factory RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributes.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributes(
      destinationPorts: map['destinationPorts'] == null ? null : pulumi.Input.decodeList<RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesDestinationPort>(map['destinationPorts'], (value) => RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesDestinationPort.fromMap((value as Map).cast<String, dynamic>())),
      destinations: map['destinations'] == null ? null : pulumi.Input.decodeList<RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesDestination>(map['destinations'], (value) => RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesDestination.fromMap((value as Map).cast<String, dynamic>())),
      protocols: map['protocols'] == null ? null : (map['protocols'] as List).cast<int>(),
      sourcePorts: map['sourcePorts'] == null ? null : pulumi.Input.decodeList<RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesSourcePort>(map['sourcePorts'], (value) => RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesSourcePort.fromMap((value as Map).cast<String, dynamic>())),
      sources: map['sources'] == null ? null : pulumi.Input.decodeList<RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesSource>(map['sources'], (value) => RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesSource.fromMap((value as Map).cast<String, dynamic>())),
      tcpFlags: map['tcpFlags'] == null ? null : pulumi.Input.decodeList<RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesTcpFlag>(map['tcpFlags'], (value) => RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesTcpFlag.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

