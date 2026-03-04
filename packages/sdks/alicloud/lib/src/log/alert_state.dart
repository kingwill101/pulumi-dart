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

/// Input properties used for looking up and filtering Alert resources.
class AlertState {
  /// Alert description.
  final pulumi.Input<String>? alertDescription;

  /// Alert displayname.
  final pulumi.Input<String>? alertDisplayname;

  /// Name of logstore for configuring alarm service.
  final pulumi.Input<String>? alertName;

  /// Annotations for new alert.
  final pulumi.Input<List<AlertAnnotation>>? annotations;

  /// whether to add automatic annotation, default is false.
  final pulumi.Input<bool>? autoAnnotation;

  /// Conditional expression, such as: count&gt; 100, Deprecated from 1.161.0+.
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
  final pulumi.Input<String>? projectName;

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

  /// Creates a new [AlertState].
  /// [alertDescription] Alert description.
  /// [alertDisplayname] Alert displayname.
  /// [alertName] Name of logstore for configuring alarm service.
  /// [annotations] Annotations for new alert.
  /// [autoAnnotation] whether to add automatic annotation, default is false.
  /// [condition] Conditional expression, such as: count&gt; 100, Deprecated from 1.161.0+.
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
  AlertState({
    this.alertDescription,
    this.alertDisplayname,
    this.alertName,
    this.annotations,
    this.autoAnnotation,
    this.condition,
    this.dashboard,
    this.groupConfiguration,
    this.joinConfigurations,
    this.labels,
    this.muteUntil,
    this.noDataFire,
    this.noDataSeverity,
    this.notificationLists,
    this.notifyThreshold,
    this.policyConfiguration,
    this.projectName,
    this.queryLists,
    this.schedule,
    this.scheduleInterval,
    this.scheduleType,
    this.sendResolved,
    this.severityConfigurations,
    this.templateConfiguration,
    this.threshold,
    this.throttling,
    this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertDescription': ?alertDescription,
      'alertDisplayname': ?alertDisplayname,
      'alertName': ?alertName,
      'annotations':
          ?pulumi.Input.mapOptionalInputValue<
            List<AlertAnnotation>,
            List<Map<String, dynamic>>
          >(
            annotations,
            (value) =>
                pulumi.Input.encodeList<AlertAnnotation, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'autoAnnotation': ?autoAnnotation,
      'condition': ?condition,
      'dashboard': ?dashboard,
      'groupConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            AlertGroupConfiguration,
            Map<String, dynamic>
          >(groupConfiguration, (value) => value.toMap()),
      'joinConfigurations':
          ?pulumi.Input.mapOptionalInputValue<
            List<AlertJoinConfiguration>,
            List<Map<String, dynamic>>
          >(
            joinConfigurations,
            (value) =>
                pulumi.Input.encodeList<
                  AlertJoinConfiguration,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'labels':
          ?pulumi.Input.mapOptionalInputValue<
            List<AlertLabel>,
            List<Map<String, dynamic>>
          >(
            labels,
            (value) =>
                pulumi.Input.encodeList<AlertLabel, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'muteUntil': ?muteUntil,
      'noDataFire': ?noDataFire,
      'noDataSeverity': ?noDataSeverity,
      'notificationLists':
          ?pulumi.Input.mapOptionalInputValue<
            List<AlertNotificationList>,
            List<Map<String, dynamic>>
          >(
            notificationLists,
            (value) =>
                pulumi.Input.encodeList<
                  AlertNotificationList,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'notifyThreshold': ?notifyThreshold,
      'policyConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            AlertPolicyConfiguration,
            Map<String, dynamic>
          >(policyConfiguration, (value) => value.toMap()),
      'projectName': ?projectName,
      'queryLists':
          ?pulumi.Input.mapOptionalInputValue<
            List<AlertQueryList>,
            List<Map<String, dynamic>>
          >(
            queryLists,
            (value) =>
                pulumi.Input.encodeList<AlertQueryList, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'schedule':
          ?pulumi.Input.mapOptionalInputValue<
            AlertSchedule,
            Map<String, dynamic>
          >(schedule, (value) => value.toMap()),
      'scheduleInterval': ?scheduleInterval,
      'scheduleType': ?scheduleType,
      'sendResolved': ?sendResolved,
      'severityConfigurations':
          ?pulumi.Input.mapOptionalInputValue<
            List<AlertSeverityConfiguration>,
            List<Map<String, dynamic>>
          >(
            severityConfigurations,
            (value) =>
                pulumi.Input.encodeList<
                  AlertSeverityConfiguration,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'templateConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            AlertTemplateConfiguration,
            Map<String, dynamic>
          >(templateConfiguration, (value) => value.toMap()),
      'threshold': ?threshold,
      'throttling': ?throttling,
      'type': ?type,
      'version': ?version,
    };
  }

  factory AlertState.fromMap(Map<String, dynamic> map) {
    return AlertState(
      alertDescription: (() {
        final guardedValue = map['alertDescription'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      alertDisplayname: (() {
        final guardedValue = map['alertDisplayname'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      alertName: (() {
        final guardedValue = map['alertName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      annotations: (() {
        final guardedValue = map['annotations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<AlertAnnotation>(
            guardedValue,
            (value) =>
                AlertAnnotation.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      autoAnnotation: (() {
        final guardedValue = map['autoAnnotation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      condition: (() {
        final guardedValue = map['condition'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dashboard: (() {
        final guardedValue = map['dashboard'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      groupConfiguration: (() {
        final guardedValue = map['groupConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AlertGroupConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      joinConfigurations: (() {
        final guardedValue = map['joinConfigurations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<AlertJoinConfiguration>(
            guardedValue,
            (value) => AlertJoinConfiguration.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<AlertLabel>(
            guardedValue,
            (value) =>
                AlertLabel.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      muteUntil: (() {
        final guardedValue = map['muteUntil'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      noDataFire: (() {
        final guardedValue = map['noDataFire'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      noDataSeverity: (() {
        final guardedValue = map['noDataSeverity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      notificationLists: (() {
        final guardedValue = map['notificationLists'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<AlertNotificationList>(
            guardedValue,
            (value) => AlertNotificationList.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      notifyThreshold: (() {
        final guardedValue = map['notifyThreshold'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      policyConfiguration: (() {
        final guardedValue = map['policyConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AlertPolicyConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      projectName: (() {
        final guardedValue = map['projectName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      queryLists: (() {
        final guardedValue = map['queryLists'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<AlertQueryList>(
            guardedValue,
            (value) =>
                AlertQueryList.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      schedule: (() {
        final guardedValue = map['schedule'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AlertSchedule.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      scheduleInterval: (() {
        final guardedValue = map['scheduleInterval'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      scheduleType: (() {
        final guardedValue = map['scheduleType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sendResolved: (() {
        final guardedValue = map['sendResolved'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      severityConfigurations: (() {
        final guardedValue = map['severityConfigurations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<AlertSeverityConfiguration>(
            guardedValue,
            (value) => AlertSeverityConfiguration.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      templateConfiguration: (() {
        final guardedValue = map['templateConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AlertTemplateConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      threshold: (() {
        final guardedValue = map['threshold'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      throttling: (() {
        final guardedValue = map['throttling'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      version: (() {
        final guardedValue = map['version'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
