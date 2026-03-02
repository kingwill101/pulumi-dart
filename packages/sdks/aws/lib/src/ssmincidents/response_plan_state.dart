// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'response_plan_action.dart';
import 'response_plan_incident_template.dart';
import 'response_plan_integration.dart';

/// Input properties used for looking up and filtering ResponsePlan resources.
class ResponsePlanState {
  /// The actions that the response plan starts at the beginning of an incident.
  final pulumi.Input<ResponsePlanAction>? action;
  /// The ARN of the response plan.
  final pulumi.Input<String>? arn;
  /// The Chatbot chat channel used for collaboration during an incident.
  final pulumi.Input<List<String>>? chatChannels;
  /// The long format of the response plan name. This field can contain spaces.
  final pulumi.Input<String>? displayName;
  /// The Amazon Resource Name (ARN) for the contacts and escalation plans that the response plan engages during an incident.
  final pulumi.Input<List<String>>? engagements;
  /// The `incident_template` configuration block is required and supports the following arguments:
  final pulumi.Input<ResponsePlanIncidentTemplate>? incidentTemplate;
  /// Information about third-party services integrated into the response plan. The following values are supported:
  final pulumi.Input<ResponsePlanIntegration>? integration;
  /// The name of the response plan.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The tags applied to the response plan.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [ResponsePlanState].
  /// [action] The actions that the response plan starts at the beginning of an incident.
  /// [arn] The ARN of the response plan.
  /// [chatChannels] The Chatbot chat channel used for collaboration during an incident.
  /// [displayName] The long format of the response plan name. This field can contain spaces.
  /// [engagements] The Amazon Resource Name (ARN) for the contacts and escalation plans that the response plan engages during an incident.
  /// [incidentTemplate] The `incident_template` configuration block is required and supports the following arguments:
  /// [integration] Information about third-party services integrated into the response plan. The following values are supported:
  /// [name] The name of the response plan.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] The tags applied to the response plan.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  ResponsePlanState({
    this.action,
    this.arn,
    this.chatChannels,
    this.displayName,
    this.engagements,
    this.incidentTemplate,
    this.integration,
    this.name,
    this.region,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?pulumi.Input.mapOptionalInputValue<ResponsePlanAction, Map<String, dynamic>>(action, (value) => value.toMap()),
      'arn': ?arn,
      'chatChannels': ?chatChannels,
      'displayName': ?displayName,
      'engagements': ?engagements,
      'incidentTemplate': ?pulumi.Input.mapOptionalInputValue<ResponsePlanIncidentTemplate, Map<String, dynamic>>(incidentTemplate, (value) => value.toMap()),
      'integration': ?pulumi.Input.mapOptionalInputValue<ResponsePlanIntegration, Map<String, dynamic>>(integration, (value) => value.toMap()),
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory ResponsePlanState.fromMap(Map<String, dynamic> map) {
    return ResponsePlanState(
      action: map['action'] == null ? null : ((ResponsePlanAction.fromMap((map['action']! as Map).cast<String, dynamic>())).input()).input(),
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      chatChannels: map['chatChannels'] == null ? null : (((map['chatChannels'] as List).cast<String>()).input()).input(),
      displayName: map['displayName'] == null ? null : ((map['displayName'] as String).input()).input(),
      engagements: map['engagements'] == null ? null : (((map['engagements'] as List).cast<String>()).input()).input(),
      incidentTemplate: map['incidentTemplate'] == null ? null : ((ResponsePlanIncidentTemplate.fromMap((map['incidentTemplate']! as Map).cast<String, dynamic>())).input()).input(),
      integration: map['integration'] == null ? null : ((ResponsePlanIntegration.fromMap((map['integration']! as Map).cast<String, dynamic>())).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

