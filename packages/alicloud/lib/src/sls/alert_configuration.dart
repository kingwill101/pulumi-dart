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
  final List<AlertConfigurationAnnotation>? annotations;
  /// Whether to turn on automatic labeling. true (default): The automatic annotation function is enabled, and the system automatically adds information such as__county__to the alarm. For more information, see Automatic Labeling. false: Turn off the automatic annotation function.
  final bool? autoAnnotation;
  /// Alarm trigger condition. See `condition_configuration` below.
  final AlertConfigurationConditionConfiguration? conditionConfiguration;
  /// The instrument cluster associated with the alarm. It is recommended to set to internal-alert-analysis.
  final String? dashboard;
  /// Group evaluation configuration. See `group_configuration` below.
  final AlertConfigurationGroupConfiguration? groupConfiguration;
  /// Set operation configuration. See `join_configurations` below.
  final List<AlertConfigurationJoinConfiguration>? joinConfigurations;
  /// Label. See `labels` below.
  final List<AlertConfigurationLabel>? labels;
  /// Second-level timestamp representing the temporary shutdown deadline.
  final int? muteUntil;
  /// Whether no data triggers an alarm. true: If the number of times the query and analysis results (if there are multiple results, the result after the collection operation) is no data exceeds the continuous trigger threshold, an alarm is generated. false (default): Turn off the no data alarm function.
  final bool? noDataFire;
  /// Alarm severity when no data triggers an alarm.
  final int? noDataSeverity;
  /// Alert policy configuration. See `policy_configuration` below.
  final AlertConfigurationPolicyConfiguration? policyConfiguration;
  /// Query the statistical list. See `query_list` below.
  final List<AlertConfigurationQueryList>? queryLists;
  /// Whether to send a recovery notification. true: A recovery alarm is triggered when the alarm is restored. false (default): Turn off the alarm recovery notification function.
  final bool? sendResolved;
  /// Trigger condition, set at least one trigger condition. See `severity_configurations` below.
  final List<AlertConfigurationSeverityConfiguration>? severityConfigurations;
  /// Configuration of Alerts Sent to Alerthub. See `sink_alerthub` below.
  final AlertConfigurationSinkAlerthub? sinkAlerthub;
  /// Configure alerts sent to CloudMonitor. See `sink_cms` below.
  final AlertConfigurationSinkCms? sinkCms;
  /// Configuration of sending alarms to EventStore. See `sink_event_store` below.
  final AlertConfigurationSinkEventStore? sinkEventStore;
  /// Customize the category of alarm monitoring rules.
  final List<String>? tags;
  /// Alarm rule template configuration. See `template_configuration` below.
  final AlertConfigurationTemplateConfiguration? templateConfiguration;
  /// Set the continuous trigger threshold. When the cumulative number of triggers reaches this value, an alarm is generated. The statistics are not counted when the trigger condition is not met.
  final int? threshold;
  /// Template Type.
  final String? type;
  /// Template Version.
  final String? version;

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
      'annotations': ?annotations == null ? null : pulumi.Input.encodeList<AlertConfigurationAnnotation, Map<String, dynamic>>(annotations!, (value) => value.toMap()),
      'autoAnnotation': ?autoAnnotation,
      'conditionConfiguration': ?conditionConfiguration == null ? null : conditionConfiguration!.toMap(),
      'dashboard': ?dashboard,
      'groupConfiguration': ?groupConfiguration == null ? null : groupConfiguration!.toMap(),
      'joinConfigurations': ?joinConfigurations == null ? null : pulumi.Input.encodeList<AlertConfigurationJoinConfiguration, Map<String, dynamic>>(joinConfigurations!, (value) => value.toMap()),
      'labels': ?labels == null ? null : pulumi.Input.encodeList<AlertConfigurationLabel, Map<String, dynamic>>(labels!, (value) => value.toMap()),
      'muteUntil': ?muteUntil,
      'noDataFire': ?noDataFire,
      'noDataSeverity': ?noDataSeverity,
      'policyConfiguration': ?policyConfiguration == null ? null : policyConfiguration!.toMap(),
      'queryLists': ?queryLists == null ? null : pulumi.Input.encodeList<AlertConfigurationQueryList, Map<String, dynamic>>(queryLists!, (value) => value.toMap()),
      'sendResolved': ?sendResolved,
      'severityConfigurations': ?severityConfigurations == null ? null : pulumi.Input.encodeList<AlertConfigurationSeverityConfiguration, Map<String, dynamic>>(severityConfigurations!, (value) => value.toMap()),
      'sinkAlerthub': ?sinkAlerthub == null ? null : sinkAlerthub!.toMap(),
      'sinkCms': ?sinkCms == null ? null : sinkCms!.toMap(),
      'sinkEventStore': ?sinkEventStore == null ? null : sinkEventStore!.toMap(),
      'tags': ?tags,
      'templateConfiguration': ?templateConfiguration == null ? null : templateConfiguration!.toMap(),
      'threshold': ?threshold,
      'type': ?type,
      'version': ?version,
    };
  }

  factory AlertConfiguration.fromMap(Map<String, dynamic> map) {
    return AlertConfiguration(
      annotations: map['annotations'] == null ? null : pulumi.Input.decodeList<AlertConfigurationAnnotation>(map['annotations'], (value) => AlertConfigurationAnnotation.fromMap((value as Map).cast<String, dynamic>())),
      autoAnnotation: map['autoAnnotation'] == null ? null : map['autoAnnotation'] as bool,
      conditionConfiguration: map['conditionConfiguration'] == null ? null : AlertConfigurationConditionConfiguration.fromMap((map['conditionConfiguration'] as Map).cast<String, dynamic>()),
      dashboard: map['dashboard'] == null ? null : map['dashboard'] as String,
      groupConfiguration: map['groupConfiguration'] == null ? null : AlertConfigurationGroupConfiguration.fromMap((map['groupConfiguration'] as Map).cast<String, dynamic>()),
      joinConfigurations: map['joinConfigurations'] == null ? null : pulumi.Input.decodeList<AlertConfigurationJoinConfiguration>(map['joinConfigurations'], (value) => AlertConfigurationJoinConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      labels: map['labels'] == null ? null : pulumi.Input.decodeList<AlertConfigurationLabel>(map['labels'], (value) => AlertConfigurationLabel.fromMap((value as Map).cast<String, dynamic>())),
      muteUntil: map['muteUntil'] == null ? null : map['muteUntil'] as int,
      noDataFire: map['noDataFire'] == null ? null : map['noDataFire'] as bool,
      noDataSeverity: map['noDataSeverity'] == null ? null : map['noDataSeverity'] as int,
      policyConfiguration: map['policyConfiguration'] == null ? null : AlertConfigurationPolicyConfiguration.fromMap((map['policyConfiguration'] as Map).cast<String, dynamic>()),
      queryLists: map['queryLists'] == null ? null : pulumi.Input.decodeList<AlertConfigurationQueryList>(map['queryLists'], (value) => AlertConfigurationQueryList.fromMap((value as Map).cast<String, dynamic>())),
      sendResolved: map['sendResolved'] == null ? null : map['sendResolved'] as bool,
      severityConfigurations: map['severityConfigurations'] == null ? null : pulumi.Input.decodeList<AlertConfigurationSeverityConfiguration>(map['severityConfigurations'], (value) => AlertConfigurationSeverityConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      sinkAlerthub: map['sinkAlerthub'] == null ? null : AlertConfigurationSinkAlerthub.fromMap((map['sinkAlerthub'] as Map).cast<String, dynamic>()),
      sinkCms: map['sinkCms'] == null ? null : AlertConfigurationSinkCms.fromMap((map['sinkCms'] as Map).cast<String, dynamic>()),
      sinkEventStore: map['sinkEventStore'] == null ? null : AlertConfigurationSinkEventStore.fromMap((map['sinkEventStore'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as List).cast<String>(),
      templateConfiguration: map['templateConfiguration'] == null ? null : AlertConfigurationTemplateConfiguration.fromMap((map['templateConfiguration'] as Map).cast<String, dynamic>()),
      threshold: map['threshold'] == null ? null : map['threshold'] as int,
      type: map['type'] == null ? null : map['type'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

