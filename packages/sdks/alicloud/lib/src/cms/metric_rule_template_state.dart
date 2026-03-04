// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metric_rule_template_alert_template.dart';

/// Input properties used for looking up and filtering MetricRuleTemplate resources.
class MetricRuleTemplateState {
  /// The details of alert rules that are generated based on the alert template. See `alert_templates` below.
  final pulumi.Input<List<MetricRuleTemplateAlertTemplate>>? alertTemplates;

  /// The mode in which the alert template is applied. Valid values:
  /// - `GROUP_INSTANCE_FIRST`: The metrics in the application group take precedence.
  /// - `ALARM_TEMPLATE_FIRST `: The metrics specified in the alert template take precedence.
  final pulumi.Input<String>? applyMode;

  /// The description of the alert template.
  final pulumi.Input<String>? description;

  /// The end of the time period during which the alert rule is effective. Valid values: `00` to `23`. The value `00` indicates 00:59 and the value `23` indicates 23:59.
  final pulumi.Input<String>? enableEndTime;

  /// The beginning of the time period during which the alert rule is effective. Valid values: `00` to `23`. The value `00` indicates 00:00 and the value `23` indicates 23:00.
  final pulumi.Input<String>? enableStartTime;

  /// The ID of the application group.
  final pulumi.Input<String>? groupId;

  /// The name of the alert template.
  final pulumi.Input<String>? metricRuleTemplateName;

  /// The alert notification method. Valid values:
  final pulumi.Input<String>? notifyLevel;

  /// The version of the alert template.
  final pulumi.Input<String>? restVersion;

  /// The mute period during which notifications are not repeatedly sent for an alert. Unit: seconds. Default value: `86400`. Valid values: `0` to `86400`.
  final pulumi.Input<int>? silenceTime;

  /// The callback URL to which a POST request is sent when an alert is triggered based on the alert rule.
  final pulumi.Input<String>? webhook;

  /// Creates a new [MetricRuleTemplateState].
  /// [alertTemplates] The details of alert rules that are generated based on the alert template. See `alert_templates` below.
  /// [applyMode] The mode in which the alert template is applied. Valid values:
  /// [description] The description of the alert template.
  /// [enableEndTime] The end of the time period during which the alert rule is effective. Valid values: `00` to `23`. The value `00` indicates 00:59 and the value `23` indicates 23:59.
  /// [enableStartTime] The beginning of the time period during which the alert rule is effective. Valid values: `00` to `23`. The value `00` indicates 00:00 and the value `23` indicates 23:00.
  /// [groupId] The ID of the application group.
  /// [metricRuleTemplateName] The name of the alert template.
  /// [notifyLevel] The alert notification method. Valid values:
  /// [restVersion] The version of the alert template.
  /// [silenceTime] The mute period during which notifications are not repeatedly sent for an alert. Unit: seconds. Default value: `86400`. Valid values: `0` to `86400`.
  /// [webhook] The callback URL to which a POST request is sent when an alert is triggered based on the alert rule.
  MetricRuleTemplateState({
    this.alertTemplates,
    this.applyMode,
    this.description,
    this.enableEndTime,
    this.enableStartTime,
    this.groupId,
    this.metricRuleTemplateName,
    this.notifyLevel,
    this.restVersion,
    this.silenceTime,
    this.webhook,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertTemplates':
          ?pulumi.Input.mapOptionalInputValue<
            List<MetricRuleTemplateAlertTemplate>,
            List<Map<String, dynamic>>
          >(
            alertTemplates,
            (value) =>
                pulumi.Input.encodeList<
                  MetricRuleTemplateAlertTemplate,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'applyMode': ?applyMode,
      'description': ?description,
      'enableEndTime': ?enableEndTime,
      'enableStartTime': ?enableStartTime,
      'groupId': ?groupId,
      'metricRuleTemplateName': ?metricRuleTemplateName,
      'notifyLevel': ?notifyLevel,
      'restVersion': ?restVersion,
      'silenceTime': ?silenceTime,
      'webhook': ?webhook,
    };
  }

  factory MetricRuleTemplateState.fromMap(Map<String, dynamic> map) {
    return MetricRuleTemplateState(
      alertTemplates: (() {
        final guardedValue = map['alertTemplates'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<MetricRuleTemplateAlertTemplate>(
            guardedValue,
            (value) => MetricRuleTemplateAlertTemplate.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      applyMode: (() {
        final guardedValue = map['applyMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enableEndTime: (() {
        final guardedValue = map['enableEndTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enableStartTime: (() {
        final guardedValue = map['enableStartTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      groupId: (() {
        final guardedValue = map['groupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      metricRuleTemplateName: (() {
        final guardedValue = map['metricRuleTemplateName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      notifyLevel: (() {
        final guardedValue = map['notifyLevel'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      restVersion: (() {
        final guardedValue = map['restVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      silenceTime: (() {
        final guardedValue = map['silenceTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      webhook: (() {
        final guardedValue = map['webhook'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
