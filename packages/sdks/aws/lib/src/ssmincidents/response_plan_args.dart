// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'response_plan_action.dart';
import 'response_plan_incident_template.dart';
import 'response_plan_integration.dart';

/// {@template pulumi_ssmincidents_response_plan_response_plan_args_doc}
/// The set of arguments for ResponsePlan.
/// {@endtemplate}
/// {@macro pulumi_ssmincidents_response_plan_response_plan_args_doc}
class ResponsePlanArgs {
  /// The actions that the response plan starts at the beginning of an incident.
  final pulumi.Input<ResponsePlanAction>? action;
  /// The Chatbot chat channel used for collaboration during an incident.
  final pulumi.Input<List<String>>? chatChannels;
  /// The long format of the response plan name. This field can contain spaces.
  final pulumi.Input<String>? displayName;
  /// The Amazon Resource Name (ARN) for the contacts and escalation plans that the response plan engages during an incident.
  final pulumi.Input<List<String>>? engagements;
  /// The `incident_template` configuration block is required and supports the following arguments:
  final pulumi.Input<ResponsePlanIncidentTemplate> incidentTemplate;
  /// Information about third-party services integrated into the response plan. The following values are supported:
  final pulumi.Input<ResponsePlanIntegration>? integration;
  /// The name of the response plan.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The tags applied to the response plan.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ResponsePlanArgs].
  /// [action] The actions that the response plan starts at the beginning of an incident.
  /// [chatChannels] The Chatbot chat channel used for collaboration during an incident.
  /// [displayName] The long format of the response plan name. This field can contain spaces.
  /// [engagements] The Amazon Resource Name (ARN) for the contacts and escalation plans that the response plan engages during an incident.
  /// [incidentTemplate] The `incident_template` configuration block is required and supports the following arguments:
  /// [integration] Information about third-party services integrated into the response plan. The following values are supported:
  /// [name] The name of the response plan.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] The tags applied to the response plan.
  ResponsePlanArgs({
    pulumi.Output<ResponsePlanAction>? action,
    pulumi.Output<List<String>>? chatChannels,
    pulumi.Output<String>? displayName,
    pulumi.Output<List<String>>? engagements,
    required pulumi.Output<ResponsePlanIncidentTemplate> incidentTemplate,
    pulumi.Output<ResponsePlanIntegration>? integration,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      action = pulumi.Input.asOptionalInput<ResponsePlanAction>(action),
      chatChannels = pulumi.Input.asOptionalInput<List<String>>(chatChannels),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      engagements = pulumi.Input.asOptionalInput<List<String>>(engagements),
      incidentTemplate = pulumi.Input.asInput<ResponsePlanIncidentTemplate>(incidentTemplate),
      integration = pulumi.Input.asOptionalInput<ResponsePlanIntegration>(integration),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?pulumi.Input.mapOptionalInputValue<ResponsePlanAction, Map<String, dynamic>>(action, (value) => value.toMap()),
      'chatChannels': ?chatChannels,
      'displayName': ?displayName,
      'engagements': ?engagements,
      'incidentTemplate': pulumi.Input.mapInputValue<ResponsePlanIncidentTemplate, Map<String, dynamic>>(incidentTemplate, (value) => value.toMap()),
      'integration': ?pulumi.Input.mapOptionalInputValue<ResponsePlanIntegration, Map<String, dynamic>>(integration, (value) => value.toMap()),
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory ResponsePlanArgs.fromMap(Map<String, dynamic> map) {
    return ResponsePlanArgs(
      action: map['action'] == null ? null : pulumi.Output.create<ResponsePlanAction>(ResponsePlanAction.fromMap((map['action'] as Map).cast<String, dynamic>())),
      chatChannels: map['chatChannels'] == null ? null : pulumi.Output.create<List<String>>((map['chatChannels'] as List).cast<String>()),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      engagements: map['engagements'] == null ? null : pulumi.Output.create<List<String>>((map['engagements'] as List).cast<String>()),
      incidentTemplate: pulumi.Output.create<ResponsePlanIncidentTemplate>(ResponsePlanIncidentTemplate.fromMap((map['incidentTemplate'] as Map).cast<String, dynamic>())),
      integration: map['integration'] == null ? null : pulumi.Output.create<ResponsePlanIntegration>(ResponsePlanIntegration.fromMap((map['integration'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

