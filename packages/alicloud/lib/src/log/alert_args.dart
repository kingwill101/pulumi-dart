// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_annotation.dart';
import 'alert_group_configuration.dart';
import 'alert_join_configuration.dart';
import 'alert_label.dart';
import 'alert_notification_list.dart';
import 'alert_policy_configuration.dart';
import 'alert_query_list.dart';
import 'alert_schedule.dart';
import 'alert_severity_configuration.dart';
import 'alert_template_configuration.dart';

/// {@template pulumi_log_alert_alert_args_doc}
/// The set of arguments for Alert.
/// {@endtemplate}
/// {@macro pulumi_log_alert_alert_args_doc}
class AlertArgs {
  /// Alert description.
  final pulumi.Input<String>? alertDescription;
  /// Alert displayname.
  final pulumi.Input<String> alertDisplayname;
  /// Name of logstore for configuring alarm service.
  final pulumi.Input<String> alertName;
  /// Annotations for new alert.
  final pulumi.Input<List<AlertAnnotation>>? annotations;
  /// whether to add automatic annotation, default is false.
  final pulumi.Input<bool>? autoAnnotation;
  /// Conditional expression, such as: count> 100, Deprecated from 1.161.0+.
  final pulumi.Input<String>? condition;
  final pulumi.Input<String>? dashboard;
  /// Group configuration for new alert.
  final pulumi.Input<AlertGroupConfiguration>? groupConfiguration;
  /// Join configuration for different queries.
  final pulumi.Input<List<AlertJoinConfiguration>>? joinConfigurations;
  /// Labels for new alert.
  final pulumi.Input<List<AlertLabel>>? labels;
  /// Timestamp, notifications before closing again.
  final pulumi.Input<int>? muteUntil;
  /// Switch for whether new alert fires when no data happens, default is false.
  final pulumi.Input<bool>? noDataFire;
  /// when no data happens, the severity of new alert.
  final pulumi.Input<int>? noDataSeverity;
  /// Alarm information notification list, Deprecated from 1.161.0+.
  final pulumi.Input<List<AlertNotificationList>>? notificationLists;
  /// Notification threshold, which is not notified until the number of triggers is reached. The default is 1, Deprecated from 1.161.0+.
  final pulumi.Input<int>? notifyThreshold;
  /// Policy configuration for new alert.
  final pulumi.Input<AlertPolicyConfiguration>? policyConfiguration;
  /// The project name.
  final pulumi.Input<String> projectName;
  /// Multiple conditions for configured alarm query.
  final pulumi.Input<List<AlertQueryList>>? queryLists;
  /// schedule for alert.
  final pulumi.Input<AlertSchedule>? schedule;
  /// Execution interval. 60 seconds minimum, such as 60s, 1h. Deprecated from 1.176.0+. use interval in schedule.
  final pulumi.Input<String>? scheduleInterval;
  /// Default FixedRate. No need to configure this parameter. Deprecated from 1.176.0+. use type in schedule.
  final pulumi.Input<String>? scheduleType;
  /// when new alert is resolved, whether to notify, default is false.
  final pulumi.Input<bool>? sendResolved;
  /// Severity configuration for new alert.
  final pulumi.Input<List<AlertSeverityConfiguration>>? severityConfigurations;
  /// Template configuration for alert, when `type` is `tpl`.
  final pulumi.Input<AlertTemplateConfiguration>? templateConfiguration;
  /// Evaluation threshold, alert will not fire until the number of triggers is reached. The default is 1.
  final pulumi.Input<int>? threshold;
  /// Notification interval, default is no interval. Support number + unit type, for example 60s, 1h, Deprecated from 1.161.0+.
  final pulumi.Input<String>? throttling;
  /// The type of new alert, `default` for custom alert, `tpl` for template alert.
  final pulumi.Input<String>? type;
  /// The version of alert, new alert is 2.0.
  final pulumi.Input<String>? version;

  /// Creates a new [AlertArgs].
  /// [alertDescription] Alert description.
  /// [alertDisplayname] Alert displayname.
  /// [alertName] Name of logstore for configuring alarm service.
  /// [annotations] Annotations for new alert.
  /// [autoAnnotation] whether to add automatic annotation, default is false.
  /// [condition] Conditional expression, such as: count> 100, Deprecated from 1.161.0+.
  /// [dashboard] Optional.
  /// [groupConfiguration] Group configuration for new alert.
  /// [joinConfigurations] Join configuration for different queries.
  /// [labels] Labels for new alert.
  /// [muteUntil] Timestamp, notifications before closing again.
  /// [noDataFire] Switch for whether new alert fires when no data happens, default is false.
  /// [noDataSeverity] when no data happens, the severity of new alert.
  /// [notificationLists] Alarm information notification list, Deprecated from 1.161.0+.
  /// [notifyThreshold] Notification threshold, which is not notified until the number of triggers is reached. The default is 1, Deprecated from 1.161.0+.
  /// [policyConfiguration] Policy configuration for new alert.
  /// [projectName] The project name.
  /// [queryLists] Multiple conditions for configured alarm query.
  /// [schedule] schedule for alert.
  /// [scheduleInterval] Execution interval. 60 seconds minimum, such as 60s, 1h. Deprecated from 1.176.0+. use interval in schedule.
  /// [scheduleType] Default FixedRate. No need to configure this parameter. Deprecated from 1.176.0+. use type in schedule.
  /// [sendResolved] when new alert is resolved, whether to notify, default is false.
  /// [severityConfigurations] Severity configuration for new alert.
  /// [templateConfiguration] Template configuration for alert, when `type` is `tpl`.
  /// [threshold] Evaluation threshold, alert will not fire until the number of triggers is reached. The default is 1.
  /// [throttling] Notification interval, default is no interval. Support number + unit type, for example 60s, 1h, Deprecated from 1.161.0+.
  /// [type] The type of new alert, `default` for custom alert, `tpl` for template alert.
  /// [version] The version of alert, new alert is 2.0.
  AlertArgs({
    String? alertDescription,
    required String alertDisplayname,
    required String alertName,
    List<AlertAnnotation>? annotations,
    bool? autoAnnotation,
    String? condition,
    String? dashboard,
    AlertGroupConfiguration? groupConfiguration,
    List<AlertJoinConfiguration>? joinConfigurations,
    List<AlertLabel>? labels,
    int? muteUntil,
    bool? noDataFire,
    int? noDataSeverity,
    List<AlertNotificationList>? notificationLists,
    int? notifyThreshold,
    AlertPolicyConfiguration? policyConfiguration,
    required String projectName,
    List<AlertQueryList>? queryLists,
    AlertSchedule? schedule,
    String? scheduleInterval,
    String? scheduleType,
    bool? sendResolved,
    List<AlertSeverityConfiguration>? severityConfigurations,
    AlertTemplateConfiguration? templateConfiguration,
    int? threshold,
    String? throttling,
    String? type,
    String? version,
  }) :
      alertDescription = pulumi.Input.asOptionalInput<String>(alertDescription),
      alertDisplayname = pulumi.Input.asInput<String>(alertDisplayname),
      alertName = pulumi.Input.asInput<String>(alertName),
      annotations = pulumi.Input.asOptionalInput<List<AlertAnnotation>>(annotations),
      autoAnnotation = pulumi.Input.asOptionalInput<bool>(autoAnnotation),
      condition = pulumi.Input.asOptionalInput<String>(condition),
      dashboard = pulumi.Input.asOptionalInput<String>(dashboard),
      groupConfiguration = pulumi.Input.asOptionalInput<AlertGroupConfiguration>(groupConfiguration),
      joinConfigurations = pulumi.Input.asOptionalInput<List<AlertJoinConfiguration>>(joinConfigurations),
      labels = pulumi.Input.asOptionalInput<List<AlertLabel>>(labels),
      muteUntil = pulumi.Input.asOptionalInput<int>(muteUntil),
      noDataFire = pulumi.Input.asOptionalInput<bool>(noDataFire),
      noDataSeverity = pulumi.Input.asOptionalInput<int>(noDataSeverity),
      notificationLists = pulumi.Input.asOptionalInput<List<AlertNotificationList>>(notificationLists),
      notifyThreshold = pulumi.Input.asOptionalInput<int>(notifyThreshold),
      policyConfiguration = pulumi.Input.asOptionalInput<AlertPolicyConfiguration>(policyConfiguration),
      projectName = pulumi.Input.asInput<String>(projectName),
      queryLists = pulumi.Input.asOptionalInput<List<AlertQueryList>>(queryLists),
      schedule = pulumi.Input.asOptionalInput<AlertSchedule>(schedule),
      scheduleInterval = pulumi.Input.asOptionalInput<String>(scheduleInterval),
      scheduleType = pulumi.Input.asOptionalInput<String>(scheduleType),
      sendResolved = pulumi.Input.asOptionalInput<bool>(sendResolved),
      severityConfigurations = pulumi.Input.asOptionalInput<List<AlertSeverityConfiguration>>(severityConfigurations),
      templateConfiguration = pulumi.Input.asOptionalInput<AlertTemplateConfiguration>(templateConfiguration),
      threshold = pulumi.Input.asOptionalInput<int>(threshold),
      throttling = pulumi.Input.asOptionalInput<String>(throttling),
      type = pulumi.Input.asOptionalInput<String>(type),
      version = pulumi.Input.asOptionalInput<String>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertDescription': ?alertDescription,
      'alertDisplayname': alertDisplayname,
      'alertName': alertName,
      'annotations': ?pulumi.Input.mapOptionalInputValue<List<AlertAnnotation>, List<Map<String, dynamic>>>(annotations, (value) => pulumi.Input.encodeList<AlertAnnotation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'autoAnnotation': ?autoAnnotation,
      'condition': ?condition,
      'dashboard': ?dashboard,
      'groupConfiguration': ?pulumi.Input.mapOptionalInputValue<AlertGroupConfiguration, Map<String, dynamic>>(groupConfiguration, (value) => value.toMap()),
      'joinConfigurations': ?pulumi.Input.mapOptionalInputValue<List<AlertJoinConfiguration>, List<Map<String, dynamic>>>(joinConfigurations, (value) => pulumi.Input.encodeList<AlertJoinConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'labels': ?pulumi.Input.mapOptionalInputValue<List<AlertLabel>, List<Map<String, dynamic>>>(labels, (value) => pulumi.Input.encodeList<AlertLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'muteUntil': ?muteUntil,
      'noDataFire': ?noDataFire,
      'noDataSeverity': ?noDataSeverity,
      'notificationLists': ?pulumi.Input.mapOptionalInputValue<List<AlertNotificationList>, List<Map<String, dynamic>>>(notificationLists, (value) => pulumi.Input.encodeList<AlertNotificationList, Map<String, dynamic>>(value, (value) => value.toMap())),
      'notifyThreshold': ?notifyThreshold,
      'policyConfiguration': ?pulumi.Input.mapOptionalInputValue<AlertPolicyConfiguration, Map<String, dynamic>>(policyConfiguration, (value) => value.toMap()),
      'projectName': projectName,
      'queryLists': ?pulumi.Input.mapOptionalInputValue<List<AlertQueryList>, List<Map<String, dynamic>>>(queryLists, (value) => pulumi.Input.encodeList<AlertQueryList, Map<String, dynamic>>(value, (value) => value.toMap())),
      'schedule': ?pulumi.Input.mapOptionalInputValue<AlertSchedule, Map<String, dynamic>>(schedule, (value) => value.toMap()),
      'scheduleInterval': ?scheduleInterval,
      'scheduleType': ?scheduleType,
      'sendResolved': ?sendResolved,
      'severityConfigurations': ?pulumi.Input.mapOptionalInputValue<List<AlertSeverityConfiguration>, List<Map<String, dynamic>>>(severityConfigurations, (value) => pulumi.Input.encodeList<AlertSeverityConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'templateConfiguration': ?pulumi.Input.mapOptionalInputValue<AlertTemplateConfiguration, Map<String, dynamic>>(templateConfiguration, (value) => value.toMap()),
      'threshold': ?threshold,
      'throttling': ?throttling,
      'type': ?type,
      'version': ?version,
    };
  }

  factory AlertArgs.fromMap(Map<String, dynamic> map) {
    return AlertArgs(
      alertDescription: map['alertDescription'] == null ? null : map['alertDescription'] as String,
      alertDisplayname: map['alertDisplayname'] as String,
      alertName: map['alertName'] as String,
      annotations: map['annotations'] == null ? null : pulumi.Input.decodeList<AlertAnnotation>(map['annotations'], (value) => AlertAnnotation.fromMap((value as Map).cast<String, dynamic>())),
      autoAnnotation: map['autoAnnotation'] == null ? null : map['autoAnnotation'] as bool,
      condition: map['condition'] == null ? null : map['condition'] as String,
      dashboard: map['dashboard'] == null ? null : map['dashboard'] as String,
      groupConfiguration: map['groupConfiguration'] == null ? null : AlertGroupConfiguration.fromMap((map['groupConfiguration'] as Map).cast<String, dynamic>()),
      joinConfigurations: map['joinConfigurations'] == null ? null : pulumi.Input.decodeList<AlertJoinConfiguration>(map['joinConfigurations'], (value) => AlertJoinConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      labels: map['labels'] == null ? null : pulumi.Input.decodeList<AlertLabel>(map['labels'], (value) => AlertLabel.fromMap((value as Map).cast<String, dynamic>())),
      muteUntil: map['muteUntil'] == null ? null : map['muteUntil'] as int,
      noDataFire: map['noDataFire'] == null ? null : map['noDataFire'] as bool,
      noDataSeverity: map['noDataSeverity'] == null ? null : map['noDataSeverity'] as int,
      notificationLists: map['notificationLists'] == null ? null : pulumi.Input.decodeList<AlertNotificationList>(map['notificationLists'], (value) => AlertNotificationList.fromMap((value as Map).cast<String, dynamic>())),
      notifyThreshold: map['notifyThreshold'] == null ? null : map['notifyThreshold'] as int,
      policyConfiguration: map['policyConfiguration'] == null ? null : AlertPolicyConfiguration.fromMap((map['policyConfiguration'] as Map).cast<String, dynamic>()),
      projectName: map['projectName'] as String,
      queryLists: map['queryLists'] == null ? null : pulumi.Input.decodeList<AlertQueryList>(map['queryLists'], (value) => AlertQueryList.fromMap((value as Map).cast<String, dynamic>())),
      schedule: map['schedule'] == null ? null : AlertSchedule.fromMap((map['schedule'] as Map).cast<String, dynamic>()),
      scheduleInterval: map['scheduleInterval'] == null ? null : map['scheduleInterval'] as String,
      scheduleType: map['scheduleType'] == null ? null : map['scheduleType'] as String,
      sendResolved: map['sendResolved'] == null ? null : map['sendResolved'] as bool,
      severityConfigurations: map['severityConfigurations'] == null ? null : pulumi.Input.decodeList<AlertSeverityConfiguration>(map['severityConfigurations'], (value) => AlertSeverityConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      templateConfiguration: map['templateConfiguration'] == null ? null : AlertTemplateConfiguration.fromMap((map['templateConfiguration'] as Map).cast<String, dynamic>()),
      threshold: map['threshold'] == null ? null : map['threshold'] as int,
      throttling: map['throttling'] == null ? null : map['throttling'] as String,
      type: map['type'] == null ? null : map['type'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

