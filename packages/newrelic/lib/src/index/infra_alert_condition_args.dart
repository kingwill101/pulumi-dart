// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'infra_alert_condition_critical.dart';
import 'infra_alert_condition_warning.dart';

/// {@template pulumi_index_infra_alert_condition_infra_alert_condition_args_doc}
/// The set of arguments for InfraAlertCondition.
/// {@endtemplate}
/// {@macro pulumi_index_infra_alert_condition_infra_alert_condition_args_doc}
class InfraAlertConditionArgs {
  /// The operator used to evaluate the threshold value.  Valid values are `above`, `below`, and `equal`.  Supported by the `infra_metric` and `infra_process_running` condition types.
  final pulumi.Input<String>? comparison;
  /// Identifies the threshold parameters for opening a critical alert incident. See Thresholds below for details.
  final pulumi.Input<InfraAlertConditionCritical>? critical;
  /// The description of the Infrastructure alert condition.
  final pulumi.Input<String>? description;
  /// Whether the condition is turned on or off.  Valid values are `true` and `false`.  Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// The metric event; for example, `SystemSample` or `StorageSample`.  Supported by the `infra_metric` condition type.
  final pulumi.Input<String>? event;
  /// For alerts on integrations, use this instead of `event`.  Supported by the `infra_metric` condition type.
  final pulumi.Input<String>? integrationProvider;
  /// The Infrastructure alert condition's name.
  final pulumi.Input<String>? name;
  /// The ID of the alert policy where this condition should be used.
  final pulumi.Input<String> policyId;
  /// Any filters applied to processes; for example: `commandName = 'java'`.  Required by the `infra_process_running` condition type.
  final pulumi.Input<String>? processWhere;
  /// Runbook URL to display in notifications.
  final pulumi.Input<String>? runbookUrl;
  /// The attribute name to identify the metric being targeted; for example, `cpuPercent`, `diskFreePercent`, or `memoryResidentSizeBytes`.  The underlying API will automatically populate this value for Infrastructure integrations (for example `diskFreePercent`), so make sure to explicitly include this value to avoid diff issues.  Supported by the `infra_metric` condition type.
  final pulumi.Input<String>? select;
  /// The type of Infrastructure alert condition.  Valid values are  `infra_process_running`, `infra_metric`, and `infra_host_not_reporting`.
  final pulumi.Input<String> type;
  /// Determines how much time will pass (in hours) before an incident is automatically closed. Valid values are `1 2 4 8 12 24 48 72`. Defaults to 24. If `0` is provided, default of `24` is used and will have configuration drift during the apply phase until a valid value is provided.
  ///
  /// ```
  /// Warning: This resource will use the account ID linked to your API key. At the moment it is not possible to dynamically set the account ID.
  /// ```
  final pulumi.Input<int>? violationCloseTimer;
  /// Identifies the threshold parameters for opening a warning alert incident. See Thresholds below for details.
  final pulumi.Input<InfraAlertConditionWarning>? warning;
  /// If applicable, this identifies any Infrastructure host filters used; for example: `hostname LIKE '%cassandra%'`.
  final pulumi.Input<String>? where;

  /// Creates a new [InfraAlertConditionArgs].
  /// [comparison] The operator used to evaluate the threshold value.  Valid values are `above`, `below`, and `equal`.  Supported by the `infra_metric` and `infra_process_running` condition types.
  /// [critical] Identifies the threshold parameters for opening a critical alert incident. See Thresholds below for details.
  /// [description] The description of the Infrastructure alert condition.
  /// [enabled] Whether the condition is turned on or off.  Valid values are `true` and `false`.  Defaults to `true`.
  /// [event] The metric event; for example, `SystemSample` or `StorageSample`.  Supported by the `infra_metric` condition type.
  /// [integrationProvider] For alerts on integrations, use this instead of `event`.  Supported by the `infra_metric` condition type.
  /// [name] The Infrastructure alert condition's name.
  /// [policyId] The ID of the alert policy where this condition should be used.
  /// [processWhere] Any filters applied to processes; for example: `commandName = 'java'`.  Required by the `infra_process_running` condition type.
  /// [runbookUrl] Runbook URL to display in notifications.
  /// [select] The attribute name to identify the metric being targeted; for example, `cpuPercent`, `diskFreePercent`, or `memoryResidentSizeBytes`.  The underlying API will automatically populate this value for Infrastructure integrations (for example `diskFreePercent`), so make sure to explicitly include this value to avoid diff issues.  Supported by the `infra_metric` condition type.
  /// [type] The type of Infrastructure alert condition.  Valid values are  `infra_process_running`, `infra_metric`, and `infra_host_not_reporting`.
  /// [violationCloseTimer] Determines how much time will pass (in hours) before an incident is automatically closed. Valid values are `1 2 4 8 12 24 48 72`. Defaults to 24. If `0` is provided, default of `24` is used and will have configuration drift during the apply phase until a valid value is provided.
  /// [warning] Identifies the threshold parameters for opening a warning alert incident. See Thresholds below for details.
  /// [where] If applicable, this identifies any Infrastructure host filters used; for example: `hostname LIKE '%cassandra%'`.
  InfraAlertConditionArgs({
    String? comparison,
    InfraAlertConditionCritical? critical,
    String? description,
    bool? enabled,
    String? event,
    String? integrationProvider,
    String? name,
    required String policyId,
    String? processWhere,
    String? runbookUrl,
    String? select,
    required String type,
    int? violationCloseTimer,
    InfraAlertConditionWarning? warning,
    String? where,
  }) :
      comparison = pulumi.Input.asOptionalInput<String>(comparison),
      critical = pulumi.Input.asOptionalInput<InfraAlertConditionCritical>(critical),
      description = pulumi.Input.asOptionalInput<String>(description),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      event = pulumi.Input.asOptionalInput<String>(event),
      integrationProvider = pulumi.Input.asOptionalInput<String>(integrationProvider),
      name = pulumi.Input.asOptionalInput<String>(name),
      policyId = pulumi.Input.asInput<String>(policyId),
      processWhere = pulumi.Input.asOptionalInput<String>(processWhere),
      runbookUrl = pulumi.Input.asOptionalInput<String>(runbookUrl),
      select = pulumi.Input.asOptionalInput<String>(select),
      type = pulumi.Input.asInput<String>(type),
      violationCloseTimer = pulumi.Input.asOptionalInput<int>(violationCloseTimer),
      warning = pulumi.Input.asOptionalInput<InfraAlertConditionWarning>(warning),
      where = pulumi.Input.asOptionalInput<String>(where);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comparison': ?comparison,
      'critical': ?pulumi.Input.mapOptionalInputValue<InfraAlertConditionCritical, Map<String, dynamic>>(critical, (value) => value.toMap()),
      'description': ?description,
      'enabled': ?enabled,
      'event': ?event,
      'integrationProvider': ?integrationProvider,
      'name': ?name,
      'policyId': policyId,
      'processWhere': ?processWhere,
      'runbookUrl': ?runbookUrl,
      'select': ?select,
      'type': type,
      'violationCloseTimer': ?violationCloseTimer,
      'warning': ?pulumi.Input.mapOptionalInputValue<InfraAlertConditionWarning, Map<String, dynamic>>(warning, (value) => value.toMap()),
      'where': ?where,
    };
  }

  factory InfraAlertConditionArgs.fromMap(Map<String, dynamic> map) {
    return InfraAlertConditionArgs(
      comparison: map['comparison'] == null ? null : map['comparison'] as String,
      critical: map['critical'] == null ? null : InfraAlertConditionCritical.fromMap((map['critical'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      event: map['event'] == null ? null : map['event'] as String,
      integrationProvider: map['integrationProvider'] == null ? null : map['integrationProvider'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      policyId: map['policyId'] as String,
      processWhere: map['processWhere'] == null ? null : map['processWhere'] as String,
      runbookUrl: map['runbookUrl'] == null ? null : map['runbookUrl'] as String,
      select: map['select'] == null ? null : map['select'] as String,
      type: map['type'] as String,
      violationCloseTimer: map['violationCloseTimer'] == null ? null : map['violationCloseTimer'] as int,
      warning: map['warning'] == null ? null : InfraAlertConditionWarning.fromMap((map['warning'] as Map).cast<String, dynamic>()),
      where: map['where'] == null ? null : map['where'] as String,
    );
  }
}

