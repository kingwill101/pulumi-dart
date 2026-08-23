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
  const GetTrafficPolicyDocumentResult({
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
    return <String, dynamic>{
      'endpoints': ?(() { final guardedValue = endpoints; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetTrafficPolicyDocumentEndpoint, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': id,
      'json': json,
      'recordType': ?recordType,
      'rules': ?(() { final guardedValue = rules; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetTrafficPolicyDocumentRule, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'startEndpoint': ?startEndpoint,
      'startRule': ?startRule,
      'version': ?version,
    };
  }

  factory GetTrafficPolicyDocumentResult.fromMap(Map<String, dynamic> map) {
    return GetTrafficPolicyDocumentResult(
      endpoints: (() { final guardedValue = map['endpoints']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetTrafficPolicyDocumentEndpoint>(guardedValue, (value) => GetTrafficPolicyDocumentEndpoint.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: map['id'] as String,
      json: map['json'] as String,
      recordType: (() { final guardedValue = map['recordType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetTrafficPolicyDocumentRule>(guardedValue, (value) => GetTrafficPolicyDocumentRule.fromMap((value as Map).cast<String, dynamic>())); })(),
      startEndpoint: (() { final guardedValue = map['startEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      startRule: (() { final guardedValue = map['startRule']; if (guardedValue == null) return null; return guardedValue as String; })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
