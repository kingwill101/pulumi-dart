// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_traffic_policy_document_endpoint.dart';
import 'get_traffic_policy_document_rule.dart';

/// {@template pulumi_route53_get_traffic_policy_document_get_traffic_policy_document_args_doc}
/// Arguments for getTrafficPolicyDocument.
/// {@endtemplate}
/// {@macro pulumi_route53_get_traffic_policy_document_get_traffic_policy_document_args_doc}
class GetTrafficPolicyDocumentArgs {
  /// Configuration block for the definitions of the endpoints that you want to use in this traffic policy. See below
  final pulumi.Input<List<GetTrafficPolicyDocumentEndpoint>>? endpoints;
  /// DNS type of all of the resource record sets that Amazon Route 53 will create based on this traffic policy.
  final pulumi.Input<String>? recordType;
  /// Configuration block for definitions of the rules that you want to use in this traffic policy. See below
  final pulumi.Input<List<GetTrafficPolicyDocumentRule>>? rules;
  /// An endpoint to be as the starting point for the traffic policy.
  final pulumi.Input<String>? startEndpoint;
  /// A rule to be as the starting point for the traffic policy.
  final pulumi.Input<String>? startRule;
  /// Version of the traffic policy format.
  final pulumi.Input<String>? version;

  /// Creates a new [GetTrafficPolicyDocumentArgs].
  /// [endpoints] Configuration block for the definitions of the endpoints that you want to use in this traffic policy. See below
  /// [recordType] DNS type of all of the resource record sets that Amazon Route 53 will create based on this traffic policy.
  /// [rules] Configuration block for definitions of the rules that you want to use in this traffic policy. See below
  /// [startEndpoint] An endpoint to be as the starting point for the traffic policy.
  /// [startRule] A rule to be as the starting point for the traffic policy.
  /// [version] Version of the traffic policy format.
  const GetTrafficPolicyDocumentArgs({
    this.endpoints,
    this.recordType,
    this.rules,
    this.startEndpoint,
    this.startRule,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoints': ?pulumi.Input.mapOptionalInputValue<List<GetTrafficPolicyDocumentEndpoint>, List<Map<String, dynamic>>>(endpoints, (value) => pulumi.Input.encodeList<GetTrafficPolicyDocumentEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'recordType': ?recordType,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<GetTrafficPolicyDocumentRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<GetTrafficPolicyDocumentRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'startEndpoint': ?startEndpoint,
      'startRule': ?startRule,
      'version': ?version,
    };
  }

  factory GetTrafficPolicyDocumentArgs.fromMap(Map<String, dynamic> map) {
    return GetTrafficPolicyDocumentArgs(
      endpoints: (() { final guardedValue = map['endpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetTrafficPolicyDocumentEndpoint>(guardedValue, (value) => GetTrafficPolicyDocumentEndpoint.fromMap((value as Map).cast<String, dynamic>()))); })(),
      recordType: (() { final guardedValue = map['recordType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetTrafficPolicyDocumentRule>(guardedValue, (value) => GetTrafficPolicyDocumentRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      startEndpoint: (() { final guardedValue = map['startEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startRule: (() { final guardedValue = map['startRule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

