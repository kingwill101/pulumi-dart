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
  GetTrafficPolicyDocumentArgs({
    List<GetTrafficPolicyDocumentEndpoint>? endpoints,
    String? recordType,
    List<GetTrafficPolicyDocumentRule>? rules,
    String? startEndpoint,
    String? startRule,
    String? version,
  }) : endpoints =
           pulumi.Input.asOptionalInput<List<GetTrafficPolicyDocumentEndpoint>>(
             endpoints,
           ),
       recordType = pulumi.Input.asOptionalInput<String>(recordType),
       rules = pulumi.Input.asOptionalInput<List<GetTrafficPolicyDocumentRule>>(
         rules,
       ),
       startEndpoint = pulumi.Input.asOptionalInput<String>(startEndpoint),
       startRule = pulumi.Input.asOptionalInput<String>(startRule),
       version = pulumi.Input.asOptionalInput<String>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoints':
          ?pulumi.Input.mapOptionalInputValue<
            List<GetTrafficPolicyDocumentEndpoint>,
            List<Map<String, dynamic>>
          >(
            endpoints,
            (value) =>
                pulumi.Input.encodeList<
                  GetTrafficPolicyDocumentEndpoint,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'recordType': ?recordType,
      'rules':
          ?pulumi.Input.mapOptionalInputValue<
            List<GetTrafficPolicyDocumentRule>,
            List<Map<String, dynamic>>
          >(
            rules,
            (value) =>
                pulumi.Input.encodeList<
                  GetTrafficPolicyDocumentRule,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'startEndpoint': ?startEndpoint,
      'startRule': ?startRule,
      'version': ?version,
    };
  }

  factory GetTrafficPolicyDocumentArgs.fromMap(Map<String, dynamic> map) {
    return GetTrafficPolicyDocumentArgs(
      endpoints: map['endpoints'] == null
          ? null
          : pulumi.Input.decodeList<GetTrafficPolicyDocumentEndpoint>(
              map['endpoints'],
              (value) => GetTrafficPolicyDocumentEndpoint.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      recordType: map['recordType'] == null
          ? null
          : map['recordType'] as String,
      rules: map['rules'] == null
          ? null
          : pulumi.Input.decodeList<GetTrafficPolicyDocumentRule>(
              map['rules'],
              (value) => GetTrafficPolicyDocumentRule.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      startEndpoint: map['startEndpoint'] == null
          ? null
          : map['startEndpoint'] as String,
      startRule: map['startRule'] == null ? null : map['startRule'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}
