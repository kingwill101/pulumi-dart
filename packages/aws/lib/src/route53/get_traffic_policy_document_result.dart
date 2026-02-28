// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_traffic_policy_document_endpoint.dart';
import 'get_traffic_policy_document_rule.dart';

/// Result data returned by getTrafficPolicyDocument.
class GetTrafficPolicyDocumentResult {
  final List<GetTrafficPolicyDocumentEndpoint>? endpoints;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Standard JSON policy document rendered based on the arguments above.
  final String json;
  final String? recordType;
  final List<GetTrafficPolicyDocumentRule>? rules;
  final String? startEndpoint;
  final String? startRule;
  final String? version;

  /// Creates a new [GetTrafficPolicyDocumentResult].
  /// [endpoints] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [json] Standard JSON policy document rendered based on the arguments above.
  /// [recordType] Optional.
  /// [rules] Optional.
  /// [startEndpoint] Optional.
  /// [startRule] Optional.
  /// [version] Optional.
  GetTrafficPolicyDocumentResult({
    this.endpoints,
    required this.id,
    required this.json,
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
      map['endpoints'] = pulumi.Input.encodeList<
          GetTrafficPolicyDocumentEndpoint,
          Map<String, dynamic>>(endpointsValue, (value) => value.toMap());
    }
    map['id'] = id;
    map['json'] = json;
    final recordTypeValue = recordType;
    if (recordTypeValue != null) {
      map['recordType'] = recordTypeValue;
    }
    final rulesValue = rules;
    if (rulesValue != null) {
      map['rules'] = pulumi.Input.encodeList<GetTrafficPolicyDocumentRule,
          Map<String, dynamic>>(rulesValue, (value) => value.toMap());
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

  factory GetTrafficPolicyDocumentResult.fromMap(Map<String, dynamic> map) {
    return GetTrafficPolicyDocumentResult(
      endpoints: map['endpoints'] == null
          ? null
          : pulumi.Input.decodeList<GetTrafficPolicyDocumentEndpoint>(
              map['endpoints'],
              (value) => GetTrafficPolicyDocumentEndpoint.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      json: map['json'] as String,
      recordType:
          map['recordType'] == null ? null : map['recordType'] as String,
      rules: map['rules'] == null
          ? null
          : pulumi.Input.decodeList<GetTrafficPolicyDocumentRule>(
              map['rules'],
              (value) => GetTrafficPolicyDocumentRule.fromMap(
                  (value as Map).cast<String, dynamic>())),
      startEndpoint:
          map['startEndpoint'] == null ? null : map['startEndpoint'] as String,
      startRule: map['startRule'] == null ? null : map['startRule'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}
