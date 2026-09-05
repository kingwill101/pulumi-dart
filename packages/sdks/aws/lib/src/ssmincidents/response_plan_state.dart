// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'response_plan_action.dart';
import 'response_plan_incident_template.dart';
import 'response_plan_integration.dart';

/// Input properties used for looking up and filtering ResponsePlan resources.
class ResponsePlanState {
  /// The actions that the response plan starts at the beginning of an incident.
  final pulumi.Input<ResponsePlanAction?>? action;
  /// The ARN of the response plan.
  final pulumi.Input<String?>? arn;
  /// The Chatbot chat channel used for collaboration during an incident.
  final pulumi.Input<List<String>?>? chatChannels;
  /// The long format of the response plan name. This field can contain spaces.
  final pulumi.Input<String?>? displayName;
  /// ARN for the contacts and escalation plans that the response plan engages during an incident.
  final pulumi.Input<List<String>?>? engagements;
  /// The `incidentTemplate` configuration block is required and supports the following arguments:
  final pulumi.Input<ResponsePlanIncidentTemplate?>? incidentTemplate;
  /// Information about third-party services integrated into the response plan. The following values are supported:
  final pulumi.Input<ResponsePlanIntegration?>? integration;
  /// The name of the response plan.
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// The tags applied to the response plan.
  final pulumi.Input<Map<String, String>?>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;

  /// Creates a new [ResponsePlanState].
  /// [action] The actions that the response plan starts at the beginning of an incident.
  /// [arn] The ARN of the response plan.
  /// [chatChannels] The Chatbot chat channel used for collaboration during an incident.
  /// [displayName] The long format of the response plan name. This field can contain spaces.
  /// [engagements] ARN for the contacts and escalation plans that the response plan engages during an incident.
  /// [incidentTemplate] The `incidentTemplate` configuration block is required and supports the following arguments:
  /// [integration] Information about third-party services integrated into the response plan. The following values are supported:
  /// [name] The name of the response plan.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] The tags applied to the response plan.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  const ResponsePlanState({
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
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResponsePlanAction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      chatChannels: (() { final guardedValue = map['chatChannels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      engagements: (() { final guardedValue = map['engagements']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      incidentTemplate: (() { final guardedValue = map['incidentTemplate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResponsePlanIncidentTemplate.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      integration: (() { final guardedValue = map['integration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResponsePlanIntegration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
