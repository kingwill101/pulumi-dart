// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_rules_rule_bind_vpc.dart';
import 'get_rules_rule_forward_ip.dart';

class GetRulesRule {
  /// The List of the VPC. See the following `Block bind_vpcs`. **NOTE:** Available in v1.158.0+.
  final pulumi.Input<List<GetRulesRuleBindVpc>> bindVpcs;
  /// The creation time of the resource.
  final pulumi.Input<String> createTime;
  /// The ID of the Endpoint.
  final pulumi.Input<String> endpointId;
  /// The Name of the Endpoint.
  final pulumi.Input<String> endpointName;
  final pulumi.Input<List<GetRulesRuleForwardIp>> forwardIps;
  /// The ID of the Rule.
  final pulumi.Input<String> id;
  /// The first ID of the resource.
  final pulumi.Input<String> ruleId;
  /// The name of the resource.
  final pulumi.Input<String> ruleName;
  /// The type of the rule.
  final pulumi.Input<String> type;
  /// The name of the forwarding zone.
  final pulumi.Input<String> zoneName;

  /// Creates a new [GetRulesRule].
  /// [bindVpcs] The List of the VPC. See the following `Block bind_vpcs`. **NOTE:** Available in v1.158.0+.
  /// [createTime] The creation time of the resource.
  /// [endpointId] The ID of the Endpoint.
  /// [endpointName] The Name of the Endpoint.
  /// [forwardIps] Required.
  /// [id] The ID of the Rule.
  /// [ruleId] The first ID of the resource.
  /// [ruleName] The name of the resource.
  /// [type] The type of the rule.
  /// [zoneName] The name of the forwarding zone.
  GetRulesRule({
    required this.bindVpcs,
    required this.createTime,
    required this.endpointId,
    required this.endpointName,
    required this.forwardIps,
    required this.id,
    required this.ruleId,
    required this.ruleName,
    required this.type,
    required this.zoneName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bindVpcs': pulumi.Input.mapInputValue<List<GetRulesRuleBindVpc>, List<Map<String, dynamic>>>(bindVpcs, (value) => pulumi.Input.encodeList<GetRulesRuleBindVpc, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createTime': createTime,
      'endpointId': endpointId,
      'endpointName': endpointName,
      'forwardIps': pulumi.Input.mapInputValue<List<GetRulesRuleForwardIp>, List<Map<String, dynamic>>>(forwardIps, (value) => pulumi.Input.encodeList<GetRulesRuleForwardIp, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': id,
      'ruleId': ruleId,
      'ruleName': ruleName,
      'type': type,
      'zoneName': zoneName,
    };
  }

  factory GetRulesRule.fromMap(Map<String, dynamic> map) {
    return GetRulesRule(
      bindVpcs: (pulumi.Input.decodeList<GetRulesRuleBindVpc>(map['bindVpcs'], (value) => GetRulesRuleBindVpc.fromMap((value as Map).cast<String, dynamic>()))).input(),
      createTime: (map['createTime'] as String).input(),
      endpointId: (map['endpointId'] as String).input(),
      endpointName: (map['endpointName'] as String).input(),
      forwardIps: (pulumi.Input.decodeList<GetRulesRuleForwardIp>(map['forwardIps'], (value) => GetRulesRuleForwardIp.fromMap((value as Map).cast<String, dynamic>()))).input(),
      id: (map['id'] as String).input(),
      ruleId: (map['ruleId'] as String).input(),
      ruleName: (map['ruleName'] as String).input(),
      type: (map['type'] as String).input(),
      zoneName: (map['zoneName'] as String).input(),
    );
  }
}

