// ignore_for_file: unused_element, unnecessary_cast

import 'response_policy_rule_local_data_response_dns_v1beta2.dart';

/// Result data returned by getResponsePolicyRule.
class GetResponsePolicyRuleDnsV1beta2Result {
  /// Answer this query with a behavior rather than DNS data.
  final String behavior;

  /// The DNS name (wildcard or exact) to apply this rule to. Must be unique within the Response Policy Rule.
  final String dnsName;
  final String kind;

  /// Answer this query directly with DNS data. These ResourceRecordSets override any other DNS behavior for the matched name; in particular they override private zones, the public internet, and GCP internal DNS. No SOA nor NS types are allowed.
  final ResponsePolicyRuleLocalDataResponseDnsV1beta2 localData;

  /// An identifier for this rule. Must be unique with the ResponsePolicy.
  final String ruleName;

  GetResponsePolicyRuleDnsV1beta2Result({
    required this.behavior,
    required this.dnsName,
    required this.kind,
    required this.localData,
    required this.ruleName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['behavior'] = behavior;
    map['dnsName'] = dnsName;
    map['kind'] = kind;
    map['localData'] = localData.toMap();
    map['ruleName'] = ruleName;
    return map;
  }

  factory GetResponsePolicyRuleDnsV1beta2Result.fromMap(
      Map<String, dynamic> map) {
    return GetResponsePolicyRuleDnsV1beta2Result(
      behavior: map['behavior'] as String,
      dnsName: map['dnsName'] as String,
      kind: map['kind'] as String,
      localData: ResponsePolicyRuleLocalDataResponseDnsV1beta2.fromMap(
          (map['localData'] as Map).cast<String, dynamic>()),
      ruleName: map['ruleName'] as String,
    );
  }
}
