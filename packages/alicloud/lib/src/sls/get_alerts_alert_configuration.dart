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
  final List<GetAlertsAlertConfigurationAnnotation> annotations;
  /// Whether to turn on automatic labeling.true (default): The automatic annotation function is enabled, and the system automatically adds information such as__county__to the alarm. For more information, see Automatic Labeling.false: Turn off the automatic annotation function.
  final bool autoAnnotation;
  /// Alarm trigger condition.
  final GetAlertsAlertConfigurationConditionConfiguration conditionConfiguration;
  /// The instrument cluster associated with the alarm. It is recommended to set to internal-alert-analysis.
  final String dashboard;
  /// Group evaluation configuration.
  final GetAlertsAlertConfigurationGroupConfiguration groupConfiguration;
  /// Set operation configuration.
  final List<GetAlertsAlertConfigurationJoinConfiguration> joinConfigurations;
  /// Label.
  final List<GetAlertsAlertConfigurationLabel> labels;
  /// Second-level timestamp representing the temporary shutdown deadline.
  final int muteUntil;
  /// Whether no data triggers an alarm.true: If the number of times the query and analysis results (if there are multiple results, the result after the collection operation) is no data exceeds the continuous trigger threshold, an alarm is generated.false (default): Turn off the no data alarm function.
  final bool noDataFire;
  /// Alarm severity when no data triggers an alarm.
  final int noDataSeverity;
  /// Alert policy configuration.
  final GetAlertsAlertConfigurationPolicyConfiguration policyConfiguration;
  /// Query the statistical list.
  final List<GetAlertsAlertConfigurationQueryList> queryLists;
  /// Whether to send a recovery notification.true: A recovery alarm is triggered when the alarm is restored.false (default): Turn off the alarm recovery notification function.
  final bool sendResolved;
  /// Trigger condition, set at least one trigger condition.
  final List<GetAlertsAlertConfigurationSeverityConfiguration> severityConfigurations;
  /// Configuration of Alerts Sent to Alerthub.
  final GetAlertsAlertConfigurationSinkAlerthub sinkAlerthub;
  /// Configure alerts sent to CloudMonitor.
  final GetAlertsAlertConfigurationSinkCms sinkCms;
  /// Configuration of sending alarms to EventStore.
  final GetAlertsAlertConfigurationSinkEventStore sinkEventStore;
  /// Customize the category of alarm monitoring rules.
  final List<String> tags;
  /// Alarm rule template configuration.
  final GetAlertsAlertConfigurationTemplateConfiguration templateConfiguration;
  /// Set the continuous trigger threshold. When the cumulative number of triggers reaches this value, an alarm is generated. The statistics are not counted when the trigger condition is not met.
  final int threshold;
  /// Check the frequency type. Log Service checks the query and analysis results according to the frequency you configured. The values are as follows:Fixedate: checks query and analysis results at regular intervals.Cron: specifies the time interval by using the Cron expression, and checks the query and analysis results at the specified time interval.
  final String type;
  /// Fixed as 2.0.
  final String version;

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
      'annotations': pulumi.Input.encodeList<GetAlertsAlertConfigurationAnnotation, Map<String, dynamic>>(annotations, (value) => value.toMap()),
      'autoAnnotation': autoAnnotation,
      'conditionConfiguration': conditionConfiguration.toMap(),
      'dashboard': dashboard,
      'groupConfiguration': groupConfiguration.toMap(),
      'joinConfigurations': pulumi.Input.encodeList<GetAlertsAlertConfigurationJoinConfiguration, Map<String, dynamic>>(joinConfigurations, (value) => value.toMap()),
      'labels': pulumi.Input.encodeList<GetAlertsAlertConfigurationLabel, Map<String, dynamic>>(labels, (value) => value.toMap()),
      'muteUntil': muteUntil,
      'noDataFire': noDataFire,
      'noDataSeverity': noDataSeverity,
      'policyConfiguration': policyConfiguration.toMap(),
      'queryLists': pulumi.Input.encodeList<GetAlertsAlertConfigurationQueryList, Map<String, dynamic>>(queryLists, (value) => value.toMap()),
      'sendResolved': sendResolved,
      'severityConfigurations': pulumi.Input.encodeList<GetAlertsAlertConfigurationSeverityConfiguration, Map<String, dynamic>>(severityConfigurations, (value) => value.toMap()),
      'sinkAlerthub': sinkAlerthub.toMap(),
      'sinkCms': sinkCms.toMap(),
      'sinkEventStore': sinkEventStore.toMap(),
      'tags': tags,
      'templateConfiguration': templateConfiguration.toMap(),
      'threshold': threshold,
      'type': type,
      'version': version,
    };
  }

  factory GetAlertsAlertConfiguration.fromMap(Map<String, dynamic> map) {
    return GetAlertsAlertConfiguration(
      annotations: pulumi.Input.decodeList<GetAlertsAlertConfigurationAnnotation>(map['annotations'], (value) => GetAlertsAlertConfigurationAnnotation.fromMap((value as Map).cast<String, dynamic>())),
      autoAnnotation: map['autoAnnotation'] as bool,
      conditionConfiguration: GetAlertsAlertConfigurationConditionConfiguration.fromMap((map['conditionConfiguration'] as Map).cast<String, dynamic>()),
      dashboard: map['dashboard'] as String,
      groupConfiguration: GetAlertsAlertConfigurationGroupConfiguration.fromMap((map['groupConfiguration'] as Map).cast<String, dynamic>()),
      joinConfigurations: pulumi.Input.decodeList<GetAlertsAlertConfigurationJoinConfiguration>(map['joinConfigurations'], (value) => GetAlertsAlertConfigurationJoinConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      labels: pulumi.Input.decodeList<GetAlertsAlertConfigurationLabel>(map['labels'], (value) => GetAlertsAlertConfigurationLabel.fromMap((value as Map).cast<String, dynamic>())),
      muteUntil: map['muteUntil'] as int,
      noDataFire: map['noDataFire'] as bool,
      noDataSeverity: map['noDataSeverity'] as int,
      policyConfiguration: GetAlertsAlertConfigurationPolicyConfiguration.fromMap((map['policyConfiguration'] as Map).cast<String, dynamic>()),
      queryLists: pulumi.Input.decodeList<GetAlertsAlertConfigurationQueryList>(map['queryLists'], (value) => GetAlertsAlertConfigurationQueryList.fromMap((value as Map).cast<String, dynamic>())),
      sendResolved: map['sendResolved'] as bool,
      severityConfigurations: pulumi.Input.decodeList<GetAlertsAlertConfigurationSeverityConfiguration>(map['severityConfigurations'], (value) => GetAlertsAlertConfigurationSeverityConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      sinkAlerthub: GetAlertsAlertConfigurationSinkAlerthub.fromMap((map['sinkAlerthub'] as Map).cast<String, dynamic>()),
      sinkCms: GetAlertsAlertConfigurationSinkCms.fromMap((map['sinkCms'] as Map).cast<String, dynamic>()),
      sinkEventStore: GetAlertsAlertConfigurationSinkEventStore.fromMap((map['sinkEventStore'] as Map).cast<String, dynamic>()),
      tags: (map['tags'] as List).cast<String>(),
      templateConfiguration: GetAlertsAlertConfigurationTemplateConfiguration.fromMap((map['templateConfiguration'] as Map).cast<String, dynamic>()),
      threshold: map['threshold'] as int,
      type: map['type'] as String,
      version: map['version'] as String,
    );
  }
}

