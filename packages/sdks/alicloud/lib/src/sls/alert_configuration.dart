// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_configuration_annotation.dart';
import 'alert_configuration_condition_configuration.dart';
import 'alert_configuration_group_configuration.dart';
import 'alert_configuration_join_configuration.dart';
import 'alert_configuration_label.dart';
import 'alert_configuration_policy_configuration.dart';
import 'alert_configuration_query_list.dart';
import 'alert_configuration_severity_configuration.dart';
import 'alert_configuration_sink_alerthub.dart';
import 'alert_configuration_sink_cms.dart';
import 'alert_configuration_sink_event_store.dart';
import 'alert_configuration_template_configuration.dart';

class AlertConfiguration {
  /// Template Annotations.
  final pulumi.Input<List<AlertConfigurationAnnotation>>? annotations;
  /// Whether to turn on automatic labeling. true (default): The automatic annotation function is enabled, and the system automatically adds information such as__county__to the alarm. For more information, see Automatic Labeling. false: Turn off the automatic annotation function.
  final pulumi.Input<bool>? autoAnnotation;
  /// Alarm trigger condition. See `condition_configuration` below.
  final pulumi.Input<AlertConfigurationConditionConfiguration>? conditionConfiguration;
  /// The instrument cluster associated with the alarm. It is recommended to set to internal-alert-analysis.
  final pulumi.Input<String>? dashboard;
  /// Group evaluation configuration. See `group_configuration` below.
  final pulumi.Input<AlertConfigurationGroupConfiguration>? groupConfiguration;
  /// Set operation configuration. See `join_configurations` below.
  final pulumi.Input<List<AlertConfigurationJoinConfiguration>>? joinConfigurations;
  /// Label. See `labels` below.
  final pulumi.Input<List<AlertConfigurationLabel>>? labels;
  /// Second-level timestamp representing the temporary shutdown deadline.
  final pulumi.Input<int>? muteUntil;
  /// Whether no data triggers an alarm. true: If the number of times the query and analysis results (if there are multiple results, the result after the collection operation) is no data exceeds the continuous trigger threshold, an alarm is generated. false (default): Turn off the no data alarm function.
  final pulumi.Input<bool>? noDataFire;
  /// Alarm severity when no data triggers an alarm.
  final pulumi.Input<int>? noDataSeverity;
  /// Alert policy configuration. See `policy_configuration` below.
  final pulumi.Input<AlertConfigurationPolicyConfiguration>? policyConfiguration;
  /// Query the statistical list. See `query_list` below.
  final pulumi.Input<List<AlertConfigurationQueryList>>? queryLists;
  /// Whether to send a recovery notification. true: A recovery alarm is triggered when the alarm is restored. false (default): Turn off the alarm recovery notification function.
  final pulumi.Input<bool>? sendResolved;
  /// Trigger condition, set at least one trigger condition. See `severity_configurations` below.
  final pulumi.Input<List<AlertConfigurationSeverityConfiguration>>? severityConfigurations;
  /// Configuration of Alerts Sent to Alerthub. See `sink_alerthub` below.
  final pulumi.Input<AlertConfigurationSinkAlerthub>? sinkAlerthub;
  /// Configure alerts sent to CloudMonitor. See `sink_cms` below.
  final pulumi.Input<AlertConfigurationSinkCms>? sinkCms;
  /// Configuration of sending alarms to EventStore. See `sink_event_store` below.
  final pulumi.Input<AlertConfigurationSinkEventStore>? sinkEventStore;
  /// Customize the category of alarm monitoring rules.
  final pulumi.Input<List<String>>? tags;
  /// Alarm rule template configuration. See `template_configuration` below.
  final pulumi.Input<AlertConfigurationTemplateConfiguration>? templateConfiguration;
  /// Set the continuous trigger threshold. When the cumulative number of triggers reaches this value, an alarm is generated. The statistics are not counted when the trigger condition is not met.
  final pulumi.Input<int>? threshold;
  /// Template Type.
  final pulumi.Input<String>? type;
  /// Template Version.
  final pulumi.Input<String>? version;

  /// Creates a new [AlertConfiguration].
  /// [annotations] Template Annotations.
  /// [autoAnnotation] Whether to turn on automatic labeling. true (default): The automatic annotation function is enabled, and the system automatically adds information such as__county__to the alarm. For more information, see Automatic Labeling. false: Turn off the automatic annotation function.
  /// [conditionConfiguration] Alarm trigger condition. See `condition_configuration` below.
  /// [dashboard] The instrument cluster associated with the alarm. It is recommended to set to internal-alert-analysis.
  /// [groupConfiguration] Group evaluation configuration. See `group_configuration` below.
  /// [joinConfigurations] Set operation configuration. See `join_configurations` below.
  /// [labels] Label. See `labels` below.
  /// [muteUntil] Second-level timestamp representing the temporary shutdown deadline.
  /// [noDataFire] Whether no data triggers an alarm. true: If the number of times the query and analysis results (if there are multiple results, the result after the collection operation) is no data exceeds the continuous trigger threshold, an alarm is generated. false (default): Turn off the no data alarm function.
  /// [noDataSeverity] Alarm severity when no data triggers an alarm.
  /// [policyConfiguration] Alert policy configuration. See `policy_configuration` below.
  /// [queryLists] Query the statistical list. See `query_list` below.
  /// [sendResolved] Whether to send a recovery notification. true: A recovery alarm is triggered when the alarm is restored. false (default): Turn off the alarm recovery notification function.
  /// [severityConfigurations] Trigger condition, set at least one trigger condition. See `severity_configurations` below.
  /// [sinkAlerthub] Configuration of Alerts Sent to Alerthub. See `sink_alerthub` below.
  /// [sinkCms] Configure alerts sent to CloudMonitor. See `sink_cms` below.
  /// [sinkEventStore] Configuration of sending alarms to EventStore. See `sink_event_store` below.
  /// [tags] Customize the category of alarm monitoring rules.
  /// [templateConfiguration] Alarm rule template configuration. See `template_configuration` below.
  /// [threshold] Set the continuous trigger threshold. When the cumulative number of triggers reaches this value, an alarm is generated. The statistics are not counted when the trigger condition is not met.
  /// [type] Template Type.
  /// [version] Template Version.
  AlertConfiguration({
    this.annotations,
    this.autoAnnotation,
    this.conditionConfiguration,
    this.dashboard,
    this.groupConfiguration,
    this.joinConfigurations,
    this.labels,
    this.muteUntil,
    this.noDataFire,
    this.noDataSeverity,
    this.policyConfiguration,
    this.queryLists,
    this.sendResolved,
    this.severityConfigurations,
    this.sinkAlerthub,
    this.sinkCms,
    this.sinkEventStore,
    this.tags,
    this.templateConfiguration,
    this.threshold,
    this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?pulumi.Input.mapOptionalInputValue<List<AlertConfigurationAnnotation>, List<Map<String, dynamic>>>(annotations, (value) => pulumi.Input.encodeList<AlertConfigurationAnnotation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'autoAnnotation': ?autoAnnotation,
      'conditionConfiguration': ?pulumi.Input.mapOptionalInputValue<AlertConfigurationConditionConfiguration, Map<String, dynamic>>(conditionConfiguration, (value) => value.toMap()),
      'dashboard': ?dashboard,
      'groupConfiguration': ?pulumi.Input.mapOptionalInputValue<AlertConfigurationGroupConfiguration, Map<String, dynamic>>(groupConfiguration, (value) => value.toMap()),
      'joinConfigurations': ?pulumi.Input.mapOptionalInputValue<List<AlertConfigurationJoinConfiguration>, List<Map<String, dynamic>>>(joinConfigurations, (value) => pulumi.Input.encodeList<AlertConfigurationJoinConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'labels': ?pulumi.Input.mapOptionalInputValue<List<AlertConfigurationLabel>, List<Map<String, dynamic>>>(labels, (value) => pulumi.Input.encodeList<AlertConfigurationLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'muteUntil': ?muteUntil,
      'noDataFire': ?noDataFire,
      'noDataSeverity': ?noDataSeverity,
      'policyConfiguration': ?pulumi.Input.mapOptionalInputValue<AlertConfigurationPolicyConfiguration, Map<String, dynamic>>(policyConfiguration, (value) => value.toMap()),
      'queryLists': ?pulumi.Input.mapOptionalInputValue<List<AlertConfigurationQueryList>, List<Map<String, dynamic>>>(queryLists, (value) => pulumi.Input.encodeList<AlertConfigurationQueryList, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sendResolved': ?sendResolved,
      'severityConfigurations': ?pulumi.Input.mapOptionalInputValue<List<AlertConfigurationSeverityConfiguration>, List<Map<String, dynamic>>>(severityConfigurations, (value) => pulumi.Input.encodeList<AlertConfigurationSeverityConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sinkAlerthub': ?pulumi.Input.mapOptionalInputValue<AlertConfigurationSinkAlerthub, Map<String, dynamic>>(sinkAlerthub, (value) => value.toMap()),
      'sinkCms': ?pulumi.Input.mapOptionalInputValue<AlertConfigurationSinkCms, Map<String, dynamic>>(sinkCms, (value) => value.toMap()),
      'sinkEventStore': ?pulumi.Input.mapOptionalInputValue<AlertConfigurationSinkEventStore, Map<String, dynamic>>(sinkEventStore, (value) => value.toMap()),
      'tags': ?tags,
      'templateConfiguration': ?pulumi.Input.mapOptionalInputValue<AlertConfigurationTemplateConfiguration, Map<String, dynamic>>(templateConfiguration, (value) => value.toMap()),
      'threshold': ?threshold,
      'type': ?type,
      'version': ?version,
    };
  }

  factory AlertConfiguration.fromMap(Map<String, dynamic> map) {
    return AlertConfiguration(
      annotations: map['annotations'] == null ? null : (pulumi.Input.decodeList<AlertConfigurationAnnotation>(map['annotations'], (value) => AlertConfigurationAnnotation.fromMap((value as Map).cast<String, dynamic>()))).input(),
      autoAnnotation: map['autoAnnotation'] == null ? null : (map['autoAnnotation'] as bool).input(),
      conditionConfiguration: map['conditionConfiguration'] == null ? null : (AlertConfigurationConditionConfiguration.fromMap((map['conditionConfiguration'] as Map).cast<String, dynamic>())).input(),
      dashboard: map['dashboard'] == null ? null : (map['dashboard'] as String).input(),
      groupConfiguration: map['groupConfiguration'] == null ? null : (AlertConfigurationGroupConfiguration.fromMap((map['groupConfiguration'] as Map).cast<String, dynamic>())).input(),
      joinConfigurations: map['joinConfigurations'] == null ? null : (pulumi.Input.decodeList<AlertConfigurationJoinConfiguration>(map['joinConfigurations'], (value) => AlertConfigurationJoinConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input(),
      labels: map['labels'] == null ? null : (pulumi.Input.decodeList<AlertConfigurationLabel>(map['labels'], (value) => AlertConfigurationLabel.fromMap((value as Map).cast<String, dynamic>()))).input(),
      muteUntil: map['muteUntil'] == null ? null : (map['muteUntil'] as int).input(),
      noDataFire: map['noDataFire'] == null ? null : (map['noDataFire'] as bool).input(),
      noDataSeverity: map['noDataSeverity'] == null ? null : (map['noDataSeverity'] as int).input(),
      policyConfiguration: map['policyConfiguration'] == null ? null : (AlertConfigurationPolicyConfiguration.fromMap((map['policyConfiguration'] as Map).cast<String, dynamic>())).input(),
      queryLists: map['queryLists'] == null ? null : (pulumi.Input.decodeList<AlertConfigurationQueryList>(map['queryLists'], (value) => AlertConfigurationQueryList.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sendResolved: map['sendResolved'] == null ? null : (map['sendResolved'] as bool).input(),
      severityConfigurations: map['severityConfigurations'] == null ? null : (pulumi.Input.decodeList<AlertConfigurationSeverityConfiguration>(map['severityConfigurations'], (value) => AlertConfigurationSeverityConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sinkAlerthub: map['sinkAlerthub'] == null ? null : (AlertConfigurationSinkAlerthub.fromMap((map['sinkAlerthub'] as Map).cast<String, dynamic>())).input(),
      sinkCms: map['sinkCms'] == null ? null : (AlertConfigurationSinkCms.fromMap((map['sinkCms'] as Map).cast<String, dynamic>())).input(),
      sinkEventStore: map['sinkEventStore'] == null ? null : (AlertConfigurationSinkEventStore.fromMap((map['sinkEventStore'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as List).cast<String>()).input(),
      templateConfiguration: map['templateConfiguration'] == null ? null : (AlertConfigurationTemplateConfiguration.fromMap((map['templateConfiguration'] as Map).cast<String, dynamic>())).input(),
      threshold: map['threshold'] == null ? null : (map['threshold'] as int).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
    );
  }
}

