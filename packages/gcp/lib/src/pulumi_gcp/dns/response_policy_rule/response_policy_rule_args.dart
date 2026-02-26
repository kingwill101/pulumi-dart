// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../response_policy_rule_local_data/response_policy_rule_local_data.dart';

/// The set of arguments for ResponsePolicyRule.
class ResponsePolicyRuleArgs {
  /// Answer this query with a behavior rather than DNS data. Acceptable values are 'behaviorUnspecified', and 'bypassResponsePolicy'
  final Input<String>? behavior;

  /// The DNS name (wildcard or exact) to apply this rule to. Must be unique within the Response Policy Rule.
  final Input<String> dnsName;

  /// Answer this query directly with DNS data. These ResourceRecordSets override any other DNS behavior for the matched name;
  /// in particular they override private zones, the public internet, and GCP internal DNS. No SOA nor NS types are allowed.
  /// Structure is documented below.
  final Input<ResponsePolicyRuleLocalData>? localData;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Identifies the response policy addressed by this request.
  final Input<String> responsePolicy;

  /// An identifier for this rule. Must be unique with the ResponsePolicy.
  final Input<String> ruleName;

  ResponsePolicyRuleArgs({
    this.behavior,
    required this.dnsName,
    this.localData,
    this.project,
    required this.responsePolicy,
    required this.ruleName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final behaviorValue = behavior;
    if (behaviorValue != null) {
      map['behavior'] = behaviorValue;
    }
    map['dnsName'] = dnsName;
    final localDataValue = localData;
    if (localDataValue != null) {
      map['localData'] = Input.mapOptionalInputValue<
          ResponsePolicyRuleLocalData,
          Map<String, dynamic>>(localDataValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['responsePolicy'] = responsePolicy;
    map['ruleName'] = ruleName;
    return map;
  }

  factory ResponsePolicyRuleArgs.fromMap(Map<String, dynamic> map) {
    return ResponsePolicyRuleArgs(
      behavior: Input.asOptionalInput<String>(map['behavior']),
      dnsName: Input.asInput<String>(map['dnsName']),
      localData:
          Input.asOptionalInput<ResponsePolicyRuleLocalData>(map['localData']),
      project: Input.asOptionalInput<String>(map['project']),
      responsePolicy: Input.asInput<String>(map['responsePolicy']),
      ruleName: Input.asInput<String>(map['ruleName']),
    );
  }
}
