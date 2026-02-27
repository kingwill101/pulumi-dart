// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'response_policy_rule_behavior_dns_v1beta2.dart';
import 'response_policy_rule_local_data_dns_v1beta2.dart';

/// The set of arguments for ResponsePolicyRule.
class ResponsePolicyRuleArgs {
  /// Answer this query with a behavior rather than DNS data.
  final pulumi.Input<ResponsePolicyRuleBehaviorDnsV1beta2>? behavior;

  /// For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.
  final pulumi.Input<String>? clientOperationId;

  /// The DNS name (wildcard or exact) to apply this rule to. Must be unique within the Response Policy Rule.
  final pulumi.Input<String>? dnsName;
  final pulumi.Input<String>? kind;

  /// Answer this query directly with DNS data. These ResourceRecordSets override any other DNS behavior for the matched name; in particular they override private zones, the public internet, and GCP internal DNS. No SOA nor NS types are allowed.
  final pulumi.Input<ResponsePolicyRuleLocalDataDnsV1beta2>? localData;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> responsePolicy;

  /// An identifier for this rule. Must be unique with the ResponsePolicy.
  final pulumi.Input<String>? ruleName;

  ResponsePolicyRuleArgs({
    this.behavior,
    this.clientOperationId,
    this.dnsName,
    this.kind,
    this.localData,
    this.project,
    required this.responsePolicy,
    this.ruleName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final behaviorValue = behavior;
    if (behaviorValue != null) {
      map['behavior'] = pulumi.Input.mapOptionalInputValue<
          ResponsePolicyRuleBehaviorDnsV1beta2,
          String>(behaviorValue, (value) => value.value);
    }
    final clientOperationIdValue = clientOperationId;
    if (clientOperationIdValue != null) {
      map['clientOperationId'] = clientOperationIdValue;
    }
    final dnsNameValue = dnsName;
    if (dnsNameValue != null) {
      map['dnsName'] = dnsNameValue;
    }
    final kindValue = kind;
    if (kindValue != null) {
      map['kind'] = kindValue;
    }
    final localDataValue = localData;
    if (localDataValue != null) {
      map['localData'] = pulumi.Input.mapOptionalInputValue<
          ResponsePolicyRuleLocalDataDnsV1beta2,
          Map<String, dynamic>>(localDataValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['responsePolicy'] = responsePolicy;
    final ruleNameValue = ruleName;
    if (ruleNameValue != null) {
      map['ruleName'] = ruleNameValue;
    }
    return map;
  }

  factory ResponsePolicyRuleArgs.fromMap(Map<String, dynamic> map) {
    return ResponsePolicyRuleArgs(
      behavior:
          pulumi.Input.asOptionalInput<ResponsePolicyRuleBehaviorDnsV1beta2>(
              map['behavior']),
      clientOperationId:
          pulumi.Input.asOptionalInput<String>(map['clientOperationId']),
      dnsName: pulumi.Input.asOptionalInput<String>(map['dnsName']),
      kind: pulumi.Input.asOptionalInput<String>(map['kind']),
      localData:
          pulumi.Input.asOptionalInput<ResponsePolicyRuleLocalDataDnsV1beta2>(
              map['localData']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      responsePolicy: pulumi.Input.asInput<String>(map['responsePolicy']),
      ruleName: pulumi.Input.asOptionalInput<String>(map['ruleName']),
    );
  }
}
