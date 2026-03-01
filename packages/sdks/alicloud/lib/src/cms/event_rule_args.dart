// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_rule_contact_parameter.dart';
import 'event_rule_event_pattern.dart';
import 'event_rule_fc_parameter.dart';
import 'event_rule_mns_parameter.dart';
import 'event_rule_open_api_parameter.dart';
import 'event_rule_sls_parameter.dart';
import 'event_rule_webhook_parameter.dart';

/// {@template pulumi_cms_event_rule_event_rule_args_doc}
/// The set of arguments for EventRule.
/// {@endtemplate}
/// {@macro pulumi_cms_event_rule_event_rule_args_doc}
class EventRuleArgs {
  /// The information about the alert contact groups that receive alert notifications. See `contact_parameters` below.
  final pulumi.Input<List<EventRuleContactParameter>>? contactParameters;
  /// The description of the event-triggered alert rule.
  final pulumi.Input<String>? description;
  /// Event mode, used to describe the trigger conditions for this event. See `event_pattern` below.
  final pulumi.Input<EventRuleEventPattern> eventPattern;
  /// The information about the recipients in Function Compute. See `fc_parameters` below.
  final pulumi.Input<List<EventRuleFcParameter>>? fcParameters;
  /// The ID of the application group to which the event-triggered alert rule belongs.
  final pulumi.Input<String>? groupId;
  /// The information about the recipients in Message Service (MNS). See `mns_parameters` below.
  final pulumi.Input<List<EventRuleMnsParameter>>? mnsParameters;
  /// The parameters of API callback notification. See `open_api_parameters` below.
  final pulumi.Input<List<EventRuleOpenApiParameter>>? openApiParameters;
  /// The name of the event-triggered alert rule.
  final pulumi.Input<String> ruleName;
  /// The silence time.
  final pulumi.Input<int>? silenceTime;
  /// The information about the recipients in Simple Log Service. See `sls_parameters` below.
  final pulumi.Input<List<EventRuleSlsParameter>>? slsParameters;
  /// The status of the resource. Valid values: `ENABLED`, `DISABLED`.
  final pulumi.Input<String>? status;
  /// The information about the callback URLs that are used to receive alert notifications. See `webhook_parameters` below.
  final pulumi.Input<List<EventRuleWebhookParameter>>? webhookParameters;

  /// Creates a new [EventRuleArgs].
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
  EventRuleArgs({
    pulumi.Output<List<EventRuleContactParameter>>? contactParameters,
    pulumi.Output<String>? description,
    required pulumi.Output<EventRuleEventPattern> eventPattern,
    pulumi.Output<List<EventRuleFcParameter>>? fcParameters,
    pulumi.Output<String>? groupId,
    pulumi.Output<List<EventRuleMnsParameter>>? mnsParameters,
    pulumi.Output<List<EventRuleOpenApiParameter>>? openApiParameters,
    required pulumi.Output<String> ruleName,
    pulumi.Output<int>? silenceTime,
    pulumi.Output<List<EventRuleSlsParameter>>? slsParameters,
    pulumi.Output<String>? status,
    pulumi.Output<List<EventRuleWebhookParameter>>? webhookParameters,
  }) :
      contactParameters = pulumi.Input.asOptionalInput<List<EventRuleContactParameter>>(contactParameters),
      description = pulumi.Input.asOptionalInput<String>(description),
      eventPattern = pulumi.Input.asInput<EventRuleEventPattern>(eventPattern),
      fcParameters = pulumi.Input.asOptionalInput<List<EventRuleFcParameter>>(fcParameters),
      groupId = pulumi.Input.asOptionalInput<String>(groupId),
      mnsParameters = pulumi.Input.asOptionalInput<List<EventRuleMnsParameter>>(mnsParameters),
      openApiParameters = pulumi.Input.asOptionalInput<List<EventRuleOpenApiParameter>>(openApiParameters),
      ruleName = pulumi.Input.asInput<String>(ruleName),
      silenceTime = pulumi.Input.asOptionalInput<int>(silenceTime),
      slsParameters = pulumi.Input.asOptionalInput<List<EventRuleSlsParameter>>(slsParameters),
      status = pulumi.Input.asOptionalInput<String>(status),
      webhookParameters = pulumi.Input.asOptionalInput<List<EventRuleWebhookParameter>>(webhookParameters);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contactParameters': ?pulumi.Input.mapOptionalInputValue<List<EventRuleContactParameter>, List<Map<String, dynamic>>>(contactParameters, (value) => pulumi.Input.encodeList<EventRuleContactParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'eventPattern': pulumi.Input.mapInputValue<EventRuleEventPattern, Map<String, dynamic>>(eventPattern, (value) => value.toMap()),
      'fcParameters': ?pulumi.Input.mapOptionalInputValue<List<EventRuleFcParameter>, List<Map<String, dynamic>>>(fcParameters, (value) => pulumi.Input.encodeList<EventRuleFcParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'groupId': ?groupId,
      'mnsParameters': ?pulumi.Input.mapOptionalInputValue<List<EventRuleMnsParameter>, List<Map<String, dynamic>>>(mnsParameters, (value) => pulumi.Input.encodeList<EventRuleMnsParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'openApiParameters': ?pulumi.Input.mapOptionalInputValue<List<EventRuleOpenApiParameter>, List<Map<String, dynamic>>>(openApiParameters, (value) => pulumi.Input.encodeList<EventRuleOpenApiParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ruleName': ruleName,
      'silenceTime': ?silenceTime,
      'slsParameters': ?pulumi.Input.mapOptionalInputValue<List<EventRuleSlsParameter>, List<Map<String, dynamic>>>(slsParameters, (value) => pulumi.Input.encodeList<EventRuleSlsParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'status': ?status,
      'webhookParameters': ?pulumi.Input.mapOptionalInputValue<List<EventRuleWebhookParameter>, List<Map<String, dynamic>>>(webhookParameters, (value) => pulumi.Input.encodeList<EventRuleWebhookParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory EventRuleArgs.fromMap(Map<String, dynamic> map) {
    return EventRuleArgs(
      contactParameters: map['contactParameters'] == null ? null : pulumi.Output.create<List<EventRuleContactParameter>>(pulumi.Input.decodeList<EventRuleContactParameter>(map['contactParameters'], (value) => EventRuleContactParameter.fromMap((value as Map).cast<String, dynamic>()))),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      eventPattern: pulumi.Output.create<EventRuleEventPattern>(EventRuleEventPattern.fromMap((map['eventPattern'] as Map).cast<String, dynamic>())),
      fcParameters: map['fcParameters'] == null ? null : pulumi.Output.create<List<EventRuleFcParameter>>(pulumi.Input.decodeList<EventRuleFcParameter>(map['fcParameters'], (value) => EventRuleFcParameter.fromMap((value as Map).cast<String, dynamic>()))),
      groupId: map['groupId'] == null ? null : pulumi.Output.create<String>(map['groupId'] as String),
      mnsParameters: map['mnsParameters'] == null ? null : pulumi.Output.create<List<EventRuleMnsParameter>>(pulumi.Input.decodeList<EventRuleMnsParameter>(map['mnsParameters'], (value) => EventRuleMnsParameter.fromMap((value as Map).cast<String, dynamic>()))),
      openApiParameters: map['openApiParameters'] == null ? null : pulumi.Output.create<List<EventRuleOpenApiParameter>>(pulumi.Input.decodeList<EventRuleOpenApiParameter>(map['openApiParameters'], (value) => EventRuleOpenApiParameter.fromMap((value as Map).cast<String, dynamic>()))),
      ruleName: pulumi.Output.create<String>(map['ruleName'] as String),
      silenceTime: map['silenceTime'] == null ? null : pulumi.Output.create<int>(map['silenceTime'] as int),
      slsParameters: map['slsParameters'] == null ? null : pulumi.Output.create<List<EventRuleSlsParameter>>(pulumi.Input.decodeList<EventRuleSlsParameter>(map['slsParameters'], (value) => EventRuleSlsParameter.fromMap((value as Map).cast<String, dynamic>()))),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      webhookParameters: map['webhookParameters'] == null ? null : pulumi.Output.create<List<EventRuleWebhookParameter>>(pulumi.Input.decodeList<EventRuleWebhookParameter>(map['webhookParameters'], (value) => EventRuleWebhookParameter.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

