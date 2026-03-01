// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_group_metric_rules_rule.dart';

/// Result data returned by getGroupMetricRules.
class GetGroupMetricRulesResult {
  final String? dimensions;
  final bool? enableState;
  final String? groupId;
  final String? groupMetricRuleName;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? metricName;
  final String? nameRegex;
  final List<String> names;
  final String? namespace;
  final String? outputFile;
  final List<GetGroupMetricRulesRule> rules;
  final String? status;

  /// Creates a new [GetGroupMetricRulesResult].
  /// [dimensions] Optional.
  /// [enableState] Optional.
  /// [groupId] Optional.
  /// [groupMetricRuleName] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [metricName] Optional.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [namespace] Optional.
  /// [outputFile] Optional.
  /// [rules] Required.
  /// [status] Optional.
  GetGroupMetricRulesResult({
    this.dimensions,
    this.enableState,
    this.groupId,
    this.groupMetricRuleName,
    required this.id,
    required this.ids,
    this.metricName,
    this.nameRegex,
    required this.names,
    this.namespace,
    this.outputFile,
    required this.rules,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dimensions': ?dimensions,
      'enableState': ?enableState,
      'groupId': ?groupId,
      'groupMetricRuleName': ?groupMetricRuleName,
      'id': id,
      'ids': ids,
      'metricName': ?metricName,
      'nameRegex': ?nameRegex,
      'names': names,
      'namespace': ?namespace,
      'outputFile': ?outputFile,
      'rules': pulumi.Input.encodeList<GetGroupMetricRulesRule, Map<String, dynamic>>(rules, (value) => value.toMap()),
      'status': ?status,
    };
  }

  factory GetGroupMetricRulesResult.fromMap(Map<String, dynamic> map) {
    return GetGroupMetricRulesResult(
      dimensions: map['dimensions'] == null ? null : map['dimensions'] as String,
      enableState: map['enableState'] == null ? null : map['enableState'] as bool,
      groupId: map['groupId'] == null ? null : map['groupId'] as String,
      groupMetricRuleName: map['groupMetricRuleName'] == null ? null : map['groupMetricRuleName'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      metricName: map['metricName'] == null ? null : map['metricName'] as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      namespace: map['namespace'] == null ? null : map['namespace'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      rules: pulumi.Input.decodeList<GetGroupMetricRulesRule>(map['rules'], (value) => GetGroupMetricRulesRule.fromMap((value as Map).cast<String, dynamic>())),
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

