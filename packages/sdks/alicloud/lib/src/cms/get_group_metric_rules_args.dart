// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cms_get_group_metric_rules_get_group_metric_rules_args_doc}
/// Arguments for getGroupMetricRules.
/// {@endtemplate}
/// {@macro pulumi_cms_get_group_metric_rules_get_group_metric_rules_args_doc}
class GetGroupMetricRulesArgs {
  /// The dimensions that specify the resources to be associated with the alert rule.
  final pulumi.Input<String>? dimensions;
  /// EnableState.
  final pulumi.Input<bool>? enableState;
  /// The ID of the application group.
  final pulumi.Input<String>? groupId;
  /// The name of the alert rule.
  final pulumi.Input<String>? groupMetricRuleName;
  /// A list of Group Metric Rule IDs.
  final pulumi.Input<List<String>>? ids;
  /// The name of the metric.
  final pulumi.Input<String>? metricName;
  /// A regex string to filter results by Group Metric Rule name.
  final pulumi.Input<String>? nameRegex;
  /// The namespace of the service.
  final pulumi.Input<String>? namespace;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The status of Group Metric Rule.
  final pulumi.Input<String>? status;

  /// Creates a new [GetGroupMetricRulesArgs].
  /// [dimensions] The dimensions that specify the resources to be associated with the alert rule.
  /// [enableState] EnableState.
  /// [groupId] The ID of the application group.
  /// [groupMetricRuleName] The name of the alert rule.
  /// [ids] A list of Group Metric Rule IDs.
  /// [metricName] The name of the metric.
  /// [nameRegex] A regex string to filter results by Group Metric Rule name.
  /// [namespace] The namespace of the service.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of Group Metric Rule.
  GetGroupMetricRulesArgs({
    this.dimensions,
    this.enableState,
    this.groupId,
    this.groupMetricRuleName,
    this.ids,
    this.metricName,
    this.nameRegex,
    this.namespace,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dimensions': ?dimensions,
      'enableState': ?enableState,
      'groupId': ?groupId,
      'groupMetricRuleName': ?groupMetricRuleName,
      'ids': ?ids,
      'metricName': ?metricName,
      'nameRegex': ?nameRegex,
      'namespace': ?namespace,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetGroupMetricRulesArgs.fromMap(Map<String, dynamic> map) {
    return GetGroupMetricRulesArgs(
      dimensions: map['dimensions'] == null ? null : (map['dimensions']! as String).input(),
      enableState: map['enableState'] == null ? null : (map['enableState']! as bool).input(),
      groupId: map['groupId'] == null ? null : (map['groupId']! as String).input(),
      groupMetricRuleName: map['groupMetricRuleName'] == null ? null : (map['groupMetricRuleName']! as String).input(),
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      metricName: map['metricName'] == null ? null : (map['metricName']! as String).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex']! as String).input(),
      namespace: map['namespace'] == null ? null : (map['namespace']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

