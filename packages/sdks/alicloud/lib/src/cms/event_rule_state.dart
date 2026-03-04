// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_rule_contact_parameter.dart';
import 'event_rule_event_pattern.dart';
import 'event_rule_fc_parameter.dart';
import 'event_rule_mns_parameter.dart';
import 'event_rule_open_api_parameter.dart';
import 'event_rule_sls_parameter.dart';
import 'event_rule_webhook_parameter.dart';

/// Input properties used for looking up and filtering EventRule resources.
class EventRuleState {
  /// The information about the alert contact groups that receive alert notifications. See `contact_parameters` below.
  final pulumi.Input<List<EventRuleContactParameter>>? contactParameters;

  /// The description of the event-triggered alert rule.
  final pulumi.Input<String>? description;

  /// Event mode, used to describe the trigger conditions for this event. See `event_pattern` below.
  final pulumi.Input<EventRuleEventPattern>? eventPattern;

  /// The information about the recipients in Function Compute. See `fc_parameters` below.
  final pulumi.Input<List<EventRuleFcParameter>>? fcParameters;

  /// The ID of the application group to which the event-triggered alert rule belongs.
  final pulumi.Input<String>? groupId;

  /// The information about the recipients in Message Service (MNS). See `mns_parameters` below.
  final pulumi.Input<List<EventRuleMnsParameter>>? mnsParameters;

  /// The parameters of API callback notification. See `open_api_parameters` below.
  final pulumi.Input<List<EventRuleOpenApiParameter>>? openApiParameters;

  /// The name of the event-triggered alert rule.
  final pulumi.Input<String>? ruleName;

  /// The silence time.
  final pulumi.Input<int>? silenceTime;

  /// The information about the recipients in Simple Log Service. See `sls_parameters` below.
  final pulumi.Input<List<EventRuleSlsParameter>>? slsParameters;

  /// The status of the resource. Valid values: `ENABLED`, `DISABLED`.
  final pulumi.Input<String>? status;

  /// The information about the callback URLs that are used to receive alert notifications. See `webhook_parameters` below.
  final pulumi.Input<List<EventRuleWebhookParameter>>? webhookParameters;

  /// Creates a new [EventRuleState].
  /// [contactParameters] The information about the alert contact groups that receive alert notifications. See `contact_parameters` below.
  /// [description] The description of the event-triggered alert rule.
  /// [eventPattern] Event mode, used to describe the trigger conditions for this event. See `event_pattern` below.
  /// [fcParameters] The information about the recipients in Function Compute. See `fc_parameters` below.
  /// [groupId] The ID of the application group to which the event-triggered alert rule belongs.
  /// [mnsParameters] The information about the recipients in Message Service (MNS). See `mns_parameters` below.
  /// [openApiParameters] The parameters of API callback notification. See `open_api_parameters` below.
  /// [ruleName] The name of the event-triggered alert rule.
  /// [silenceTime] The silence time.
  /// [slsParameters] The information about the recipients in Simple Log Service. See `sls_parameters` below.
  /// [status] The status of the resource. Valid values: `ENABLED`, `DISABLED`.
  /// [webhookParameters] The information about the callback URLs that are used to receive alert notifications. See `webhook_parameters` below.
  EventRuleState({
    this.contactParameters,
    this.description,
    this.eventPattern,
    this.fcParameters,
    this.groupId,
    this.mnsParameters,
    this.openApiParameters,
    this.ruleName,
    this.silenceTime,
    this.slsParameters,
    this.status,
    this.webhookParameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contactParameters':
          ?pulumi.Input.mapOptionalInputValue<
            List<EventRuleContactParameter>,
            List<Map<String, dynamic>>
          >(
            contactParameters,
            (value) =>
                pulumi.Input.encodeList<
                  EventRuleContactParameter,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'description': ?description,
      'eventPattern':
          ?pulumi.Input.mapOptionalInputValue<
            EventRuleEventPattern,
            Map<String, dynamic>
          >(eventPattern, (value) => value.toMap()),
      'fcParameters':
          ?pulumi.Input.mapOptionalInputValue<
            List<EventRuleFcParameter>,
            List<Map<String, dynamic>>
          >(
            fcParameters,
            (value) =>
                pulumi.Input.encodeList<
                  EventRuleFcParameter,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'groupId': ?groupId,
      'mnsParameters':
          ?pulumi.Input.mapOptionalInputValue<
            List<EventRuleMnsParameter>,
            List<Map<String, dynamic>>
          >(
            mnsParameters,
            (value) =>
                pulumi.Input.encodeList<
                  EventRuleMnsParameter,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'openApiParameters':
          ?pulumi.Input.mapOptionalInputValue<
            List<EventRuleOpenApiParameter>,
            List<Map<String, dynamic>>
          >(
            openApiParameters,
            (value) =>
                pulumi.Input.encodeList<
                  EventRuleOpenApiParameter,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'ruleName': ?ruleName,
      'silenceTime': ?silenceTime,
      'slsParameters':
          ?pulumi.Input.mapOptionalInputValue<
            List<EventRuleSlsParameter>,
            List<Map<String, dynamic>>
          >(
            slsParameters,
            (value) =>
                pulumi.Input.encodeList<
                  EventRuleSlsParameter,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'status': ?status,
      'webhookParameters':
          ?pulumi.Input.mapOptionalInputValue<
            List<EventRuleWebhookParameter>,
            List<Map<String, dynamic>>
          >(
            webhookParameters,
            (value) =>
                pulumi.Input.encodeList<
                  EventRuleWebhookParameter,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory EventRuleState.fromMap(Map<String, dynamic> map) {
    return EventRuleState(
      contactParameters: (() {
        final guardedValue = map['contactParameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<EventRuleContactParameter>(
            guardedValue,
            (value) => EventRuleContactParameter.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      eventPattern: (() {
        final guardedValue = map['eventPattern'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EventRuleEventPattern.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      fcParameters: (() {
        final guardedValue = map['fcParameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<EventRuleFcParameter>(
            guardedValue,
            (value) => EventRuleFcParameter.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      groupId: (() {
        final guardedValue = map['groupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      mnsParameters: (() {
        final guardedValue = map['mnsParameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<EventRuleMnsParameter>(
            guardedValue,
            (value) => EventRuleMnsParameter.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      openApiParameters: (() {
        final guardedValue = map['openApiParameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<EventRuleOpenApiParameter>(
            guardedValue,
            (value) => EventRuleOpenApiParameter.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      ruleName: (() {
        final guardedValue = map['ruleName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      silenceTime: (() {
        final guardedValue = map['silenceTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      slsParameters: (() {
        final guardedValue = map['slsParameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<EventRuleSlsParameter>(
            guardedValue,
            (value) => EventRuleSlsParameter.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      webhookParameters: (() {
        final guardedValue = map['webhookParameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<EventRuleWebhookParameter>(
            guardedValue,
            (value) => EventRuleWebhookParameter.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
