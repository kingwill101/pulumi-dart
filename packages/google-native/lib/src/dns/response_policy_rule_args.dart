// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'response_policy_rule_behavior_dns_v1beta2.dart';
import 'response_policy_rule_local_data_dns_v1beta2.dart';

/// {@template pulumi_dns_v1beta2_response_policy_rule_args_doc}
/// The set of arguments for ResponsePolicyRule.
/// {@endtemplate}
/// {@macro pulumi_dns_v1beta2_response_policy_rule_args_doc}
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

  /// Creates a new [ResponsePolicyRuleArgs].
  /// [behavior] Answer this query with a behavior rather than DNS data.
  /// [clientOperationId] For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.
  /// [dnsName] The DNS name (wildcard or exact) to apply this rule to. Must be unique within the Response Policy Rule.
  /// [kind] Optional.
  /// [localData] Answer this query directly with DNS data. These ResourceRecordSets override any other DNS behavior for the matched name; in particular they override private zones, the public internet, and GCP internal DNS. No SOA nor NS types are allowed.
  /// [project] Optional.
  /// [responsePolicy] Required.
  /// [ruleName] An identifier for this rule. Must be unique with the ResponsePolicy.
  ResponsePolicyRuleArgs({
    ResponsePolicyRuleBehaviorDnsV1beta2? behavior,
    String? clientOperationId,
    String? dnsName,
    String? kind,
    ResponsePolicyRuleLocalDataDnsV1beta2? localData,
    String? project,
    required String responsePolicy,
    String? ruleName,
  }) : behavior =
           pulumi.Input.asOptionalInput<ResponsePolicyRuleBehaviorDnsV1beta2>(
             behavior,
           ),
       clientOperationId = pulumi.Input.asOptionalInput<String>(
         clientOperationId,
       ),
       dnsName = pulumi.Input.asOptionalInput<String>(dnsName),
       kind = pulumi.Input.asOptionalInput<String>(kind),
       localData =
           pulumi.Input.asOptionalInput<ResponsePolicyRuleLocalDataDnsV1beta2>(
             localData,
           ),
       project = pulumi.Input.asOptionalInput<String>(project),
       responsePolicy = pulumi.Input.asInput<String>(responsePolicy),
       ruleName = pulumi.Input.asOptionalInput<String>(ruleName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'behavior':
          ?pulumi.Input.mapOptionalInputValue<
            ResponsePolicyRuleBehaviorDnsV1beta2,
            String
          >(behavior, (value) => value.value),
      'clientOperationId': ?clientOperationId,
      'dnsName': ?dnsName,
      'kind': ?kind,
      'localData':
          ?pulumi.Input.mapOptionalInputValue<
            ResponsePolicyRuleLocalDataDnsV1beta2,
            Map<String, dynamic>
          >(localData, (value) => value.toMap()),
      'project': ?project,
      'responsePolicy': responsePolicy,
      'ruleName': ?ruleName,
    };
  }

  factory ResponsePolicyRuleArgs.fromMap(Map<String, dynamic> map) {
    return ResponsePolicyRuleArgs(
      behavior: map['behavior'] == null
          ? null
          : ResponsePolicyRuleBehaviorDnsV1beta2.fromValue(
              map['behavior'] as String,
            ),
      clientOperationId: map['clientOperationId'] == null
          ? null
          : map['clientOperationId'] as String,
      dnsName: map['dnsName'] == null ? null : map['dnsName'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      localData: map['localData'] == null
          ? null
          : ResponsePolicyRuleLocalDataDnsV1beta2.fromMap(
              (map['localData'] as Map).cast<String, dynamic>(),
            ),
      project: map['project'] == null ? null : map['project'] as String,
      responsePolicy: map['responsePolicy'] as String,
      ruleName: map['ruleName'] == null ? null : map['ruleName'] as String,
    );
  }
}
