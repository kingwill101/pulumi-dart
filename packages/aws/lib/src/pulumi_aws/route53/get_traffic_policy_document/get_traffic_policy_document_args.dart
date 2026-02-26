// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_traffic_policy_document_endpoint/get_traffic_policy_document_endpoint.dart';
import '../get_traffic_policy_document_rule/get_traffic_policy_document_rule.dart';

/// Arguments for getTrafficPolicyDocument.
class GetTrafficPolicyDocumentArgs {
  /// Configuration block for the definitions of the endpoints that you want to use in this traffic policy. See below
  final Input<List<GetTrafficPolicyDocumentEndpoint>>? endpoints;

  /// DNS type of all of the resource record sets that Amazon Route 53 will create based on this traffic policy.
  final Input<String>? recordType;

  /// Configuration block for definitions of the rules that you want to use in this traffic policy. See below
  final Input<List<GetTrafficPolicyDocumentRule>>? rules;

  /// An endpoint to be as the starting point for the traffic policy.
  final Input<String>? startEndpoint;

  /// A rule to be as the starting point for the traffic policy.
  final Input<String>? startRule;

  /// Version of the traffic policy format.
  final Input<String>? version;

  GetTrafficPolicyDocumentArgs({
    this.endpoints,
    this.recordType,
    this.rules,
    this.startEndpoint,
    this.startRule,
    this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final endpointsValue = endpoints;
    if (endpointsValue != null) {
      map['endpoints'] = Input.mapOptionalInputValue<
              List<GetTrafficPolicyDocumentEndpoint>,
              List<Map<String, dynamic>>>(
          endpointsValue,
          (value) => Input.encodeList<GetTrafficPolicyDocumentEndpoint,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final recordTypeValue = recordType;
    if (recordTypeValue != null) {
      map['recordType'] = recordTypeValue;
    }
    final rulesValue = rules;
    if (rulesValue != null) {
      map['rules'] = Input.mapOptionalInputValue<
              List<GetTrafficPolicyDocumentRule>, List<Map<String, dynamic>>>(
          rulesValue,
          (value) => Input.encodeList<GetTrafficPolicyDocumentRule,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final startEndpointValue = startEndpoint;
    if (startEndpointValue != null) {
      map['startEndpoint'] = startEndpointValue;
    }
    final startRuleValue = startRule;
    if (startRuleValue != null) {
      map['startRule'] = startRuleValue;
    }
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue;
    }
    return map;
  }

  factory GetTrafficPolicyDocumentArgs.fromMap(Map<String, dynamic> map) {
    return GetTrafficPolicyDocumentArgs(
      endpoints: Input.asOptionalInput<List<GetTrafficPolicyDocumentEndpoint>>(
          map['endpoints']),
      recordType: Input.asOptionalInput<String>(map['recordType']),
      rules: Input.asOptionalInput<List<GetTrafficPolicyDocumentRule>>(
          map['rules']),
      startEndpoint: Input.asOptionalInput<String>(map['startEndpoint']),
      startRule: Input.asOptionalInput<String>(map['startRule']),
      version: Input.asOptionalInput<String>(map['version']),
    );
  }
}
