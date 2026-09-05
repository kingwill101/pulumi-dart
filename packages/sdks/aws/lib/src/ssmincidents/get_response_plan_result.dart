// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_response_plan_action.dart';
import 'get_response_plan_incident_template.dart';
import 'get_response_plan_integration.dart';

/// Result data returned by getResponsePlan.
class GetResponsePlanResult {
  /// (Optional) The actions that the response plan starts at the beginning of an incident.
  final List<GetResponsePlanAction>? actions;
  final String? arn;
  /// The Chatbot chat channel used for collaboration during an incident.
  final List<String>? chatChannels;
  /// The long format of the response plan name. This field can contain spaces.
  final String? displayName;
  /// ARN for the contacts and escalation plans that the response plan engages during an incident.
  final List<String>? engagements;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final List<GetResponsePlanIncidentTemplate>? incidentTemplates;
  /// Information about third-party services integrated into the response plan. The following values are supported:
  final List<GetResponsePlanIntegration>? integrations;
  /// The name of the PagerDuty configuration.
  final String? name;
  final String? region;
  /// The tags applied to the response plan.
  final Map<String, String>? tags;

  /// Creates a new [GetResponsePlanResult].
  /// [actions] (Optional) The actions that the response plan starts at the beginning of an incident.
  /// [arn] Optional.
  /// [chatChannels] The Chatbot chat channel used for collaboration during an incident.
  /// [displayName] The long format of the response plan name. This field can contain spaces.
  /// [engagements] ARN for the contacts and escalation plans that the response plan engages during an incident.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [incidentTemplates] Optional.
  /// [integrations] Information about third-party services integrated into the response plan. The following values are supported:
  /// [name] The name of the PagerDuty configuration.
  /// [region] Optional.
  /// [tags] The tags applied to the response plan.
  const GetResponsePlanResult({
    this.actions,
    this.arn,
    this.chatChannels,
    this.displayName,
    this.engagements,
    this.id,
    this.incidentTemplates,
    this.integrations,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?(() { final guardedValue = actions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetResponsePlanAction, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'arn': ?arn,
      'chatChannels': ?chatChannels,
      'displayName': ?displayName,
      'engagements': ?engagements,
      'id': ?id,
      'incidentTemplates': ?(() { final guardedValue = incidentTemplates; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetResponsePlanIncidentTemplate, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'integrations': ?(() { final guardedValue = integrations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetResponsePlanIntegration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetResponsePlanResult.fromMap(Map<String, dynamic> map) {
    return GetResponsePlanResult(
      actions: (() { final guardedValue = map['actions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetResponsePlanAction>(guardedValue, (value) => GetResponsePlanAction.fromMap((value as Map).cast<String, dynamic>())); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      chatChannels: (() { final guardedValue = map['chatChannels']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      engagements: (() { final guardedValue = map['engagements']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      incidentTemplates: (() { final guardedValue = map['incidentTemplates']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetResponsePlanIncidentTemplate>(guardedValue, (value) => GetResponsePlanIncidentTemplate.fromMap((value as Map).cast<String, dynamic>())); })(),
      integrations: (() { final guardedValue = map['integrations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetResponsePlanIntegration>(guardedValue, (value) => GetResponsePlanIntegration.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
