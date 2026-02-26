// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'response_policy_rule_behavior2.dart';
import 'response_policy_rule_local_data2.dart';

/// The set of arguments for ResponsePolicyRule.
class ResponsePolicyRuleArgs {
  /// Answer this query with a behavior rather than DNS data.
  final Input<ResponsePolicyRuleBehavior2>? behavior;

  /// For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.
  final Input<String>? clientOperationId;

  /// The DNS name (wildcard or exact) to apply this rule to. Must be unique within the Response Policy Rule.
  final Input<String>? dnsName;
  final Input<String>? kind;

  /// Answer this query directly with DNS data. These ResourceRecordSets override any other DNS behavior for the matched name; in particular they override private zones, the public internet, and GCP internal DNS. No SOA nor NS types are allowed.
  final Input<ResponsePolicyRuleLocalData2>? localData;
  final Input<String>? project;
  final Input<String> responsePolicy;

  /// An identifier for this rule. Must be unique with the ResponsePolicy.
  final Input<String>? ruleName;

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
      map['behavior'] =
          Input.mapOptionalInputValue<ResponsePolicyRuleBehavior2, String>(
              behaviorValue, (value) => value.value);
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
      map['localData'] = Input.mapOptionalInputValue<
          ResponsePolicyRuleLocalData2,
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
          Input.asOptionalInput<ResponsePolicyRuleBehavior2>(map['behavior']),
      clientOperationId:
          Input.asOptionalInput<String>(map['clientOperationId']),
      dnsName: Input.asOptionalInput<String>(map['dnsName']),
      kind: Input.asOptionalInput<String>(map['kind']),
      localData:
          Input.asOptionalInput<ResponsePolicyRuleLocalData2>(map['localData']),
      project: Input.asOptionalInput<String>(map['project']),
      responsePolicy: Input.asInput<String>(map['responsePolicy']),
      ruleName: Input.asOptionalInput<String>(map['ruleName']),
    );
  }
}
