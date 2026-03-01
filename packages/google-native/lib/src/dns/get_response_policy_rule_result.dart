// ignore_for_file: unused_element, unnecessary_cast

import 'response_policy_rule_local_data_response.dart';

/// Result data returned by getResponsePolicyRule.
class GetResponsePolicyRuleResult {
  /// Answer this query with a behavior rather than DNS data.
  final String behavior;

  /// The DNS name (wildcard or exact) to apply this rule to. Must be unique within the Response Policy Rule.
  final String dnsName;
  final String kind;

  /// Answer this query directly with DNS data. These ResourceRecordSets override any other DNS behavior for the matched name; in particular they override private zones, the public internet, and GCP internal DNS. No SOA nor NS types are allowed.
  final ResponsePolicyRuleLocalDataResponse localData;

  /// An identifier for this rule. Must be unique with the ResponsePolicy.
  final String ruleName;

  /// Creates a new [GetResponsePolicyRuleResult].
  /// [behavior] Answer this query with a behavior rather than DNS data.
  /// [dnsName] The DNS name (wildcard or exact) to apply this rule to. Must be unique within the Response Policy Rule.
  /// [kind] Required.
  /// [localData] Answer this query directly with DNS data. These ResourceRecordSets override any other DNS behavior for the matched name; in particular they override private zones, the public internet, and GCP internal DNS. No SOA nor NS types are allowed.
  /// [ruleName] An identifier for this rule. Must be unique with the ResponsePolicy.
  GetResponsePolicyRuleResult({
    required this.behavior,
    required this.dnsName,
    required this.kind,
    required this.localData,
    required this.ruleName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'behavior': behavior,
      'dnsName': dnsName,
      'kind': kind,
      'localData': localData.toMap(),
      'ruleName': ruleName,
    };
  }

  factory GetResponsePolicyRuleResult.fromMap(Map<String, dynamic> map) {
    return GetResponsePolicyRuleResult(
      behavior: map['behavior'] as String,
      dnsName: map['dnsName'] as String,
      kind: map['kind'] as String,
      localData: ResponsePolicyRuleLocalDataResponse.fromMap(
        (map['localData'] as Map).cast<String, dynamic>(),
      ),
      ruleName: map['ruleName'] as String,
    );
  }
}
