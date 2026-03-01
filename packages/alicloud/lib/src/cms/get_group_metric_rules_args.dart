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
    String? dimensions,
    bool? enableState,
    String? groupId,
    String? groupMetricRuleName,
    List<String>? ids,
    String? metricName,
    String? nameRegex,
    String? namespace,
    String? outputFile,
    String? status,
  }) :
      dimensions = pulumi.Input.asOptionalInput<String>(dimensions),
      enableState = pulumi.Input.asOptionalInput<bool>(enableState),
      groupId = pulumi.Input.asOptionalInput<String>(groupId),
      groupMetricRuleName = pulumi.Input.asOptionalInput<String>(groupMetricRuleName),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      metricName = pulumi.Input.asOptionalInput<String>(metricName),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      namespace = pulumi.Input.asOptionalInput<String>(namespace),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      dimensions: map['dimensions'] == null ? null : map['dimensions'] as String,
      enableState: map['enableState'] == null ? null : map['enableState'] as bool,
      groupId: map['groupId'] == null ? null : map['groupId'] as String,
      groupMetricRuleName: map['groupMetricRuleName'] == null ? null : map['groupMetricRuleName'] as String,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      metricName: map['metricName'] == null ? null : map['metricName'] as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      namespace: map['namespace'] == null ? null : map['namespace'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

