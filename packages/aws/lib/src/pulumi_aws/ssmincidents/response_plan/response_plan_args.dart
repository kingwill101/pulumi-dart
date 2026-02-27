// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../response_plan_action/response_plan_action.dart';
import '../response_plan_incident_template/response_plan_incident_template.dart';
import '../response_plan_integration/response_plan_integration.dart';

/// The set of arguments for ResponsePlan.
class ResponsePlanArgs {
  /// The actions that the response plan starts at the beginning of an incident.
  final Input<ResponsePlanAction>? action;

  /// The Chatbot chat channel used for collaboration during an incident.
  final Input<List<String>>? chatChannels;

  /// The long format of the response plan name. This field can contain spaces.
  final Input<String>? displayName;

  /// The Amazon Resource Name (ARN) for the contacts and escalation plans that the response plan engages during an incident.
  final Input<List<String>>? engagements;

  /// The `incident_template` configuration block is required and supports the following arguments:
  final Input<ResponsePlanIncidentTemplate> incidentTemplate;

  /// Information about third-party services integrated into the response plan. The following values are supported:
  final Input<ResponsePlanIntegration>? integration;

  /// The name of the response plan.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The tags applied to the response plan.
  final Input<Map<String, String>>? tags;

  ResponsePlanArgs({
    this.action,
    this.chatChannels,
    this.displayName,
    this.engagements,
    required this.incidentTemplate,
    this.integration,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final actionValue = action;
    if (actionValue != null) {
      map['action'] =
          Input.mapOptionalInputValue<ResponsePlanAction, Map<String, dynamic>>(
              actionValue, (value) => value.toMap());
    }
    final chatChannelsValue = chatChannels;
    if (chatChannelsValue != null) {
      map['chatChannels'] = chatChannelsValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final engagementsValue = engagements;
    if (engagementsValue != null) {
      map['engagements'] = engagementsValue;
    }
    map['incidentTemplate'] =
        Input.mapInputValue<ResponsePlanIncidentTemplate, Map<String, dynamic>>(
            incidentTemplate, (value) => value.toMap());
    final integrationValue = integration;
    if (integrationValue != null) {
      map['integration'] = Input.mapOptionalInputValue<ResponsePlanIntegration,
          Map<String, dynamic>>(integrationValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory ResponsePlanArgs.fromMap(Map<String, dynamic> map) {
    return ResponsePlanArgs(
      action: Input.asOptionalInput<ResponsePlanAction>(map['action']),
      chatChannels: Input.asOptionalInput<List<String>>(map['chatChannels']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      engagements: Input.asOptionalInput<List<String>>(map['engagements']),
      incidentTemplate:
          Input.asInput<ResponsePlanIncidentTemplate>(map['incidentTemplate']),
      integration:
          Input.asOptionalInput<ResponsePlanIntegration>(map['integration']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
