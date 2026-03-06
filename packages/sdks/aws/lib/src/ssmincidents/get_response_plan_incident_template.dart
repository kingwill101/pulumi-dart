// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_response_plan_incident_template_notification_target.dart';

class GetResponsePlanIncidentTemplate {
  /// A string used to stop Incident Manager from creating multiple incident records for the same incident.
  final pulumi.Input<String> dedupeString;
  /// The impact value of a generated incident. The following values are supported:
  final pulumi.Input<int> impact;
  /// The tags assigned to an incident template. When an incident starts, Incident Manager assigns the tags specified in the template to the incident.
  final pulumi.Input<Map<String, String>> incidentTags;
  /// The Amazon Simple Notification Service (Amazon SNS) targets that this incident notifies when it is updated. The `notification_target` configuration block supports the following argument:
  final pulumi.Input<List<GetResponsePlanIncidentTemplateNotificationTarget>> notificationTargets;
  /// The summary of an incident.
  final pulumi.Input<String> summary;
  /// The title of a generated incident.
  final pulumi.Input<String> title;

  /// Creates a new [GetResponsePlanIncidentTemplate].
  /// [dedupeString] A string used to stop Incident Manager from creating multiple incident records for the same incident.
  /// [impact] The impact value of a generated incident. The following values are supported:
  /// [incidentTags] The tags assigned to an incident template. When an incident starts, Incident Manager assigns the tags specified in the template to the incident.
  /// [notificationTargets] The Amazon Simple Notification Service (Amazon SNS) targets that this incident notifies when it is updated. The `notification_target` configuration block supports the following argument:
  /// [summary] The summary of an incident.
  /// [title] The title of a generated incident.
  const GetResponsePlanIncidentTemplate({
    required this.dedupeString,
    required this.impact,
    required this.incidentTags,
    required this.notificationTargets,
    required this.summary,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dedupeString': dedupeString,
      'impact': impact,
      'incidentTags': incidentTags,
      'notificationTargets': pulumi.Input.mapInputValue<List<GetResponsePlanIncidentTemplateNotificationTarget>, List<Map<String, dynamic>>>(notificationTargets, (value) => pulumi.Input.encodeList<GetResponsePlanIncidentTemplateNotificationTarget, Map<String, dynamic>>(value, (value) => value.toMap())),
      'summary': summary,
      'title': title,
    };
  }

  factory GetResponsePlanIncidentTemplate.fromMap(Map<String, dynamic> map) {
    return GetResponsePlanIncidentTemplate(
      dedupeString: pulumi.Input.fromValue(map['dedupeString'] as String),
      impact: pulumi.Input.fromValue(map['impact'] as int),
      incidentTags: pulumi.Input.fromValue((map['incidentTags'] as Map).cast<String, String>()),
      notificationTargets: pulumi.Input.fromValue(pulumi.Input.decodeList<GetResponsePlanIncidentTemplateNotificationTarget>(map['notificationTargets']!, (value) => GetResponsePlanIncidentTemplateNotificationTarget.fromMap((value as Map).cast<String, dynamic>()))),
      summary: pulumi.Input.fromValue(map['summary'] as String),
      title: pulumi.Input.fromValue(map['title'] as String),
    );
  }
}

