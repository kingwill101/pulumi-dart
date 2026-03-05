// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_prometheus_alert_rules_rule.dart';

/// Result data returned by getPrometheusAlertRules.
class GetPrometheusAlertRulesResult {
  final String clusterId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? matchExpressions;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final List<GetPrometheusAlertRulesRule> rules;
  final int? status;
  final String? type;

  /// Creates a new [GetPrometheusAlertRulesResult].
  /// [clusterId] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [matchExpressions] Optional.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [rules] Required.
  /// [status] Optional.
  /// [type] Optional.
  GetPrometheusAlertRulesResult({
    required this.clusterId,
    required this.id,
    required this.ids,
    this.matchExpressions,
    this.nameRegex,
    required this.names,
    this.outputFile,
    required this.rules,
    this.status,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'id': id,
      'ids': ids,
      'matchExpressions': ?matchExpressions,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'rules': pulumi.Input.encodeList<GetPrometheusAlertRulesRule, Map<String, dynamic>>(rules, (value) => value.toMap()),
      'status': ?status,
      'type': ?type,
    };
  }

  factory GetPrometheusAlertRulesResult.fromMap(Map<String, dynamic> map) {
    return GetPrometheusAlertRulesResult(
      clusterId: map['clusterId'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      matchExpressions: (() { final guardedValue = map['matchExpressions']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rules: pulumi.Input.decodeList<GetPrometheusAlertRulesRule>(map['rules']!, (value) => GetPrometheusAlertRulesRule.fromMap((value as Map).cast<String, dynamic>())),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as int; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

