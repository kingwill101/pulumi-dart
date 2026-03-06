// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_response_plan_action.dart';
import 'get_response_plan_incident_template.dart';
import 'get_response_plan_integration.dart';

/// Result data returned by getResponsePlan.
class GetResponsePlanResult {
  /// (Optional) The actions that the response plan starts at the beginning of an incident.
  final List<GetResponsePlanAction> actions;
  final String arn;
  /// The Chatbot chat channel used for collaboration during an incident.
  final List<String> chatChannels;
  /// The long format of the response plan name. This field can contain spaces.
  final String displayName;
  /// The Amazon Resource Name (ARN) for the contacts and escalation plans that the response plan engages during an incident.
  final List<String> engagements;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<GetResponsePlanIncidentTemplate> incidentTemplates;
  /// Information about third-party services integrated into the response plan. The following values are supported:
  final List<GetResponsePlanIntegration> integrations;
  /// The name of the PagerDuty configuration.
  final String name;
  final String region;
  /// The tags applied to the response plan.
  final Map<String, String> tags;

  /// Creates a new [GetResponsePlanResult].
  /// [actions] (Optional) The actions that the response plan starts at the beginning of an incident.
  /// [arn] Required.
  /// [chatChannels] The Chatbot chat channel used for collaboration during an incident.
  /// [displayName] The long format of the response plan name. This field can contain spaces.
  /// [engagements] The Amazon Resource Name (ARN) for the contacts and escalation plans that the response plan engages during an incident.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [incidentTemplates] Required.
  /// [integrations] Information about third-party services integrated into the response plan. The following values are supported:
  /// [name] The name of the PagerDuty configuration.
  /// [region] Required.
  /// [tags] The tags applied to the response plan.
  const GetResponsePlanResult({
    required this.actions,
    required this.arn,
    required this.chatChannels,
    required this.displayName,
    required this.engagements,
    required this.id,
    required this.incidentTemplates,
    required this.integrations,
    required this.name,
    required this.region,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': pulumi.Input.encodeList<GetResponsePlanAction, Map<String, dynamic>>(actions, (value) => value.toMap()),
      'arn': arn,
      'chatChannels': chatChannels,
      'displayName': displayName,
      'engagements': engagements,
      'id': id,
      'incidentTemplates': pulumi.Input.encodeList<GetResponsePlanIncidentTemplate, Map<String, dynamic>>(incidentTemplates, (value) => value.toMap()),
      'integrations': pulumi.Input.encodeList<GetResponsePlanIntegration, Map<String, dynamic>>(integrations, (value) => value.toMap()),
      'name': name,
      'region': region,
      'tags': tags,
    };
  }

  factory GetResponsePlanResult.fromMap(Map<String, dynamic> map) {
    return GetResponsePlanResult(
      actions: pulumi.Input.decodeList<GetResponsePlanAction>(map['actions']!, (value) => GetResponsePlanAction.fromMap((value as Map).cast<String, dynamic>())),
      arn: map['arn'] as String,
      chatChannels: (map['chatChannels'] as List).cast<String>(),
      displayName: map['displayName'] as String,
      engagements: (map['engagements'] as List).cast<String>(),
      id: map['id'] as String,
      incidentTemplates: pulumi.Input.decodeList<GetResponsePlanIncidentTemplate>(map['incidentTemplates']!, (value) => GetResponsePlanIncidentTemplate.fromMap((value as Map).cast<String, dynamic>())),
      integrations: pulumi.Input.decodeList<GetResponsePlanIntegration>(map['integrations']!, (value) => GetResponsePlanIntegration.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

