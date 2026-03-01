// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_rules_rule_bind_vpc.dart';
import 'get_rules_rule_forward_ip.dart';

class GetRulesRule {
  /// The List of the VPC. See the following `Block bind_vpcs`. **NOTE:** Available in v1.158.0+.
  final List<GetRulesRuleBindVpc> bindVpcs;
  /// The creation time of the resource.
  final String createTime;
  /// The ID of the Endpoint.
  final String endpointId;
  /// The Name of the Endpoint.
  final String endpointName;
  final List<GetRulesRuleForwardIp> forwardIps;
  /// The ID of the Rule.
  final String id;
  /// The first ID of the resource.
  final String ruleId;
  /// The name of the resource.
  final String ruleName;
  /// The type of the rule.
  final String type;
  /// The name of the forwarding zone.
  final String zoneName;

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
      'bindVpcs': pulumi.Input.encodeList<GetRulesRuleBindVpc, Map<String, dynamic>>(bindVpcs, (value) => value.toMap()),
      'createTime': createTime,
      'endpointId': endpointId,
      'endpointName': endpointName,
      'forwardIps': pulumi.Input.encodeList<GetRulesRuleForwardIp, Map<String, dynamic>>(forwardIps, (value) => value.toMap()),
      'id': id,
      'ruleId': ruleId,
      'ruleName': ruleName,
      'type': type,
      'zoneName': zoneName,
    };
  }

  factory GetRulesRule.fromMap(Map<String, dynamic> map) {
    return GetRulesRule(
      bindVpcs: pulumi.Input.decodeList<GetRulesRuleBindVpc>(map['bindVpcs'], (value) => GetRulesRuleBindVpc.fromMap((value as Map).cast<String, dynamic>())),
      createTime: map['createTime'] as String,
      endpointId: map['endpointId'] as String,
      endpointName: map['endpointName'] as String,
      forwardIps: pulumi.Input.decodeList<GetRulesRuleForwardIp>(map['forwardIps'], (value) => GetRulesRuleForwardIp.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ruleId: map['ruleId'] as String,
      ruleName: map['ruleName'] as String,
      type: map['type'] as String,
      zoneName: map['zoneName'] as String,
    );
  }
}

