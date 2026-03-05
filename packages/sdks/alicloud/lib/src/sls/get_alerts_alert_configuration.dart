// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_alerts_alert_configuration_annotation.dart';
import 'get_alerts_alert_configuration_condition_configuration.dart';
import 'get_alerts_alert_configuration_group_configuration.dart';
import 'get_alerts_alert_configuration_join_configuration.dart';
import 'get_alerts_alert_configuration_label.dart';
import 'get_alerts_alert_configuration_policy_configuration.dart';
import 'get_alerts_alert_configuration_query_list.dart';
import 'get_alerts_alert_configuration_severity_configuration.dart';
import 'get_alerts_alert_configuration_sink_alerthub.dart';
import 'get_alerts_alert_configuration_sink_cms.dart';
import 'get_alerts_alert_configuration_sink_event_store.dart';
import 'get_alerts_alert_configuration_template_configuration.dart';

class GetAlertsAlertConfiguration {
  /// Template Annotations.
  final pulumi.Input<List<GetAlertsAlertConfigurationAnnotation>> annotations;
  /// Whether to turn on automatic labeling.true (default): The automatic annotation function is enabled, and the system automatically adds information such as__county__to the alarm. For more information, see Automatic Labeling.false: Turn off the automatic annotation function.
  final pulumi.Input<bool> autoAnnotation;
  /// Alarm trigger condition.
  final pulumi.Input<GetAlertsAlertConfigurationConditionConfiguration> conditionConfiguration;
  /// The instrument cluster associated with the alarm. It is recommended to set to internal-alert-analysis.
  final pulumi.Input<String> dashboard;
  /// Group evaluation configuration.
  final pulumi.Input<GetAlertsAlertConfigurationGroupConfiguration> groupConfiguration;
  /// Set operation configuration.
  final pulumi.Input<List<GetAlertsAlertConfigurationJoinConfiguration>> joinConfigurations;
  /// Label.
  final pulumi.Input<List<GetAlertsAlertConfigurationLabel>> labels;
  /// Second-level timestamp representing the temporary shutdown deadline.
  final pulumi.Input<int> muteUntil;
  /// Whether no data triggers an alarm.true: If the number of times the query and analysis results (if there are multiple results, the result after the collection operation) is no data exceeds the continuous trigger threshold, an alarm is generated.false (default): Turn off the no data alarm function.
  final pulumi.Input<bool> noDataFire;
  /// Alarm severity when no data triggers an alarm.
  final pulumi.Input<int> noDataSeverity;
  /// Alert policy configuration.
  final pulumi.Input<GetAlertsAlertConfigurationPolicyConfiguration> policyConfiguration;
  /// Query the statistical list.
  final pulumi.Input<List<GetAlertsAlertConfigurationQueryList>> queryLists;
  /// Whether to send a recovery notification.true: A recovery alarm is triggered when the alarm is restored.false (default): Turn off the alarm recovery notification function.
  final pulumi.Input<bool> sendResolved;
  /// Trigger condition, set at least one trigger condition.
  final pulumi.Input<List<GetAlertsAlertConfigurationSeverityConfiguration>> severityConfigurations;
  /// Configuration of Alerts Sent to Alerthub.
  final pulumi.Input<GetAlertsAlertConfigurationSinkAlerthub> sinkAlerthub;
  /// Configure alerts sent to CloudMonitor.
  final pulumi.Input<GetAlertsAlertConfigurationSinkCms> sinkCms;
  /// Configuration of sending alarms to EventStore.
  final pulumi.Input<GetAlertsAlertConfigurationSinkEventStore> sinkEventStore;
  /// Customize the category of alarm monitoring rules.
  final pulumi.Input<List<String>> tags;
  /// Alarm rule template configuration.
  final pulumi.Input<GetAlertsAlertConfigurationTemplateConfiguration> templateConfiguration;
  /// Set the continuous trigger threshold. When the cumulative number of triggers reaches this value, an alarm is generated. The statistics are not counted when the trigger condition is not met.
  final pulumi.Input<int> threshold;
  /// Check the frequency type. Log Service checks the query and analysis results according to the frequency you configured. The values are as follows:Fixedate: checks query and analysis results at regular intervals.Cron: specifies the time interval by using the Cron expression, and checks the query and analysis results at the specified time interval.
  final pulumi.Input<String> type;
  /// Fixed as 2.0.
  final pulumi.Input<String> version;

  /// Creates a new [GetAlertsAlertConfiguration].
  /// [annotations] Template Annotations.
  /// [autoAnnotation] Whether to turn on automatic labeling.true (default): The automatic annotation function is enabled, and the system automatically adds information such as__county__to the alarm. For more information, see Automatic Labeling.false: Turn off the automatic annotation function.
  /// [conditionConfiguration] Alarm trigger condition.
  /// [dashboard] The instrument cluster associated with the alarm. It is recommended to set to internal-alert-analysis.
  /// [groupConfiguration] Group evaluation configuration.
  /// [joinConfigurations] Set operation configuration.
  /// [labels] Label.
  /// [muteUntil] Second-level timestamp representing the temporary shutdown deadline.
  /// [noDataFire] Whether no data triggers an alarm.true: If the number of times the query and analysis results (if there are multiple results, the result after the collection operation) is no data exceeds the continuous trigger threshold, an alarm is generated.false (default): Turn off the no data alarm function.
  /// [noDataSeverity] Alarm severity when no data triggers an alarm.
  /// [policyConfiguration] Alert policy configuration.
  /// [queryLists] Query the statistical list.
  /// [sendResolved] Whether to send a recovery notification.true: A recovery alarm is triggered when the alarm is restored.false (default): Turn off the alarm recovery notification function.
  /// [severityConfigurations] Trigger condition, set at least one trigger condition.
  /// [sinkAlerthub] Configuration of Alerts Sent to Alerthub.
  /// [sinkCms] Configure alerts sent to CloudMonitor.
  /// [sinkEventStore] Configuration of sending alarms to EventStore.
  /// [tags] Customize the category of alarm monitoring rules.
  /// [templateConfiguration] Alarm rule template configuration.
  /// [threshold] Set the continuous trigger threshold. When the cumulative number of triggers reaches this value, an alarm is generated. The statistics are not counted when the trigger condition is not met.
  /// [type] Check the frequency type. Log Service checks the query and analysis results according to the frequency you configured. The values are as follows:Fixedate: checks query and analysis results at regular intervals.Cron: specifies the time interval by using the Cron expression, and checks the query and analysis results at the specified time interval.
  /// [version] Fixed as 2.0.
  GetAlertsAlertConfiguration({
    required this.annotations,
    required this.autoAnnotation,
    required this.conditionConfiguration,
    required this.dashboard,
    required this.groupConfiguration,
    required this.joinConfigurations,
    required this.labels,
    required this.muteUntil,
    required this.noDataFire,
    required this.noDataSeverity,
    required this.policyConfiguration,
    required this.queryLists,
    required this.sendResolved,
    required this.severityConfigurations,
    required this.sinkAlerthub,
    required this.sinkCms,
    required this.sinkEventStore,
    required this.tags,
    required this.templateConfiguration,
    required this.threshold,
    required this.type,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': pulumi.Input.mapInputValue<List<GetAlertsAlertConfigurationAnnotation>, List<Map<String, dynamic>>>(annotations, (value) => pulumi.Input.encodeList<GetAlertsAlertConfigurationAnnotation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'autoAnnotation': autoAnnotation,
      'conditionConfiguration': pulumi.Input.mapInputValue<GetAlertsAlertConfigurationConditionConfiguration, Map<String, dynamic>>(conditionConfiguration, (value) => value.toMap()),
      'dashboard': dashboard,
      'groupConfiguration': pulumi.Input.mapInputValue<GetAlertsAlertConfigurationGroupConfiguration, Map<String, dynamic>>(groupConfiguration, (value) => value.toMap()),
      'joinConfigurations': pulumi.Input.mapInputValue<List<GetAlertsAlertConfigurationJoinConfiguration>, List<Map<String, dynamic>>>(joinConfigurations, (value) => pulumi.Input.encodeList<GetAlertsAlertConfigurationJoinConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'labels': pulumi.Input.mapInputValue<List<GetAlertsAlertConfigurationLabel>, List<Map<String, dynamic>>>(labels, (value) => pulumi.Input.encodeList<GetAlertsAlertConfigurationLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'muteUntil': muteUntil,
      'noDataFire': noDataFire,
      'noDataSeverity': noDataSeverity,
      'policyConfiguration': pulumi.Input.mapInputValue<GetAlertsAlertConfigurationPolicyConfiguration, Map<String, dynamic>>(policyConfiguration, (value) => value.toMap()),
      'queryLists': pulumi.Input.mapInputValue<List<GetAlertsAlertConfigurationQueryList>, List<Map<String, dynamic>>>(queryLists, (value) => pulumi.Input.encodeList<GetAlertsAlertConfigurationQueryList, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sendResolved': sendResolved,
      'severityConfigurations': pulumi.Input.mapInputValue<List<GetAlertsAlertConfigurationSeverityConfiguration>, List<Map<String, dynamic>>>(severityConfigurations, (value) => pulumi.Input.encodeList<GetAlertsAlertConfigurationSeverityConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sinkAlerthub': pulumi.Input.mapInputValue<GetAlertsAlertConfigurationSinkAlerthub, Map<String, dynamic>>(sinkAlerthub, (value) => value.toMap()),
      'sinkCms': pulumi.Input.mapInputValue<GetAlertsAlertConfigurationSinkCms, Map<String, dynamic>>(sinkCms, (value) => value.toMap()),
      'sinkEventStore': pulumi.Input.mapInputValue<GetAlertsAlertConfigurationSinkEventStore, Map<String, dynamic>>(sinkEventStore, (value) => value.toMap()),
      'tags': tags,
      'templateConfiguration': pulumi.Input.mapInputValue<GetAlertsAlertConfigurationTemplateConfiguration, Map<String, dynamic>>(templateConfiguration, (value) => value.toMap()),
      'threshold': threshold,
      'type': type,
      'version': version,
    };
  }

  factory GetAlertsAlertConfiguration.fromMap(Map<String, dynamic> map) {
    return GetAlertsAlertConfiguration(
      annotations: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAlertsAlertConfigurationAnnotation>(map['annotations']!, (value) => GetAlertsAlertConfigurationAnnotation.fromMap((value as Map).cast<String, dynamic>()))),
      autoAnnotation: pulumi.Input.fromValue(map['autoAnnotation'] as bool),
      conditionConfiguration: pulumi.Input.fromValue(GetAlertsAlertConfigurationConditionConfiguration.fromMap((map['conditionConfiguration']! as Map).cast<String, dynamic>())),
      dashboard: pulumi.Input.fromValue(map['dashboard'] as String),
      groupConfiguration: pulumi.Input.fromValue(GetAlertsAlertConfigurationGroupConfiguration.fromMap((map['groupConfiguration']! as Map).cast<String, dynamic>())),
      joinConfigurations: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAlertsAlertConfigurationJoinConfiguration>(map['joinConfigurations']!, (value) => GetAlertsAlertConfigurationJoinConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      labels: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAlertsAlertConfigurationLabel>(map['labels']!, (value) => GetAlertsAlertConfigurationLabel.fromMap((value as Map).cast<String, dynamic>()))),
      muteUntil: pulumi.Input.fromValue(map['muteUntil'] as int),
      noDataFire: pulumi.Input.fromValue(map['noDataFire'] as bool),
      noDataSeverity: pulumi.Input.fromValue(map['noDataSeverity'] as int),
      policyConfiguration: pulumi.Input.fromValue(GetAlertsAlertConfigurationPolicyConfiguration.fromMap((map['policyConfiguration']! as Map).cast<String, dynamic>())),
      queryLists: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAlertsAlertConfigurationQueryList>(map['queryLists']!, (value) => GetAlertsAlertConfigurationQueryList.fromMap((value as Map).cast<String, dynamic>()))),
      sendResolved: pulumi.Input.fromValue(map['sendResolved'] as bool),
      severityConfigurations: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAlertsAlertConfigurationSeverityConfiguration>(map['severityConfigurations']!, (value) => GetAlertsAlertConfigurationSeverityConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      sinkAlerthub: pulumi.Input.fromValue(GetAlertsAlertConfigurationSinkAlerthub.fromMap((map['sinkAlerthub']! as Map).cast<String, dynamic>())),
      sinkCms: pulumi.Input.fromValue(GetAlertsAlertConfigurationSinkCms.fromMap((map['sinkCms']! as Map).cast<String, dynamic>())),
      sinkEventStore: pulumi.Input.fromValue(GetAlertsAlertConfigurationSinkEventStore.fromMap((map['sinkEventStore']! as Map).cast<String, dynamic>())),
      tags: pulumi.Input.fromValue((map['tags'] as List).cast<String>()),
      templateConfiguration: pulumi.Input.fromValue(GetAlertsAlertConfigurationTemplateConfiguration.fromMap((map['templateConfiguration']! as Map).cast<String, dynamic>())),
      threshold: pulumi.Input.fromValue(map['threshold'] as int),
      type: pulumi.Input.fromValue(map['type'] as String),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}

