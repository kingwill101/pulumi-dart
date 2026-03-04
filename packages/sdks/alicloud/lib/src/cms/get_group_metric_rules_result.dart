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
      'rules':
          pulumi.Input.encodeList<
            GetGroupMetricRulesRule,
            Map<String, dynamic>
          >(rules, (value) => value.toMap()),
      'status': ?status,
    };
  }

  factory GetGroupMetricRulesResult.fromMap(Map<String, dynamic> map) {
    return GetGroupMetricRulesResult(
      dimensions: (() {
        final guardedValue = map['dimensions'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      enableState: (() {
        final guardedValue = map['enableState'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      groupId: (() {
        final guardedValue = map['groupId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      groupMetricRuleName: (() {
        final guardedValue = map['groupMetricRuleName'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      metricName: (() {
        final guardedValue = map['metricName'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      names: (map['names'] as List).cast<String>(),
      namespace: (() {
        final guardedValue = map['namespace'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      rules: pulumi.Input.decodeList<GetGroupMetricRulesRule>(
        map['rules']!,
        (value) => GetGroupMetricRulesRule.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
