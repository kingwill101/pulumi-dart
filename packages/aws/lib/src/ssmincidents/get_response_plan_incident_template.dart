// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_response_plan_incident_template_notification_target.dart';

class GetResponsePlanIncidentTemplate {
  /// A string used to stop Incident Manager from creating multiple incident records for the same incident.
  final String dedupeString;

  /// The impact value of a generated incident. The following values are supported:
  final int impact;

  /// The tags assigned to an incident template. When an incident starts, Incident Manager assigns the tags specified in the template to the incident.
  final Map<String, String> incidentTags;

  /// The Amazon Simple Notification Service (Amazon SNS) targets that this incident notifies when it is updated. The `notification_target` configuration block supports the following argument:
  final List<GetResponsePlanIncidentTemplateNotificationTarget>
      notificationTargets;

  /// The summary of an incident.
  final String summary;

  /// The title of a generated incident.
  final String title;

  /// Creates a new [GetResponsePlanIncidentTemplate].
  /// [dedupeString] A string used to stop Incident Manager from creating multiple incident records for the same incident.
  /// [impact] The impact value of a generated incident. The following values are supported:
  /// [incidentTags] The tags assigned to an incident template. When an incident starts, Incident Manager assigns the tags specified in the template to the incident.
  /// [notificationTargets] The Amazon Simple Notification Service (Amazon SNS) targets that this incident notifies when it is updated. The `notification_target` configuration block supports the following argument:
  /// [summary] The summary of an incident.
  /// [title] The title of a generated incident.
  GetResponsePlanIncidentTemplate({
    required this.dedupeString,
    required this.impact,
    required this.incidentTags,
    required this.notificationTargets,
    required this.summary,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dedupeString'] = dedupeString;
    map['impact'] = impact;
    map['incidentTags'] = incidentTags;
    map['notificationTargets'] = pulumi.Input.encodeList<
        GetResponsePlanIncidentTemplateNotificationTarget,
        Map<String, dynamic>>(notificationTargets, (value) => value.toMap());
    map['summary'] = summary;
    map['title'] = title;
    return map;
  }

  factory GetResponsePlanIncidentTemplate.fromMap(Map<String, dynamic> map) {
    return GetResponsePlanIncidentTemplate(
      dedupeString: map['dedupeString'] as String,
      impact: map['impact'] as int,
      incidentTags: (map['incidentTags'] as Map).cast<String, String>(),
      notificationTargets: pulumi.Input.decodeList<
              GetResponsePlanIncidentTemplateNotificationTarget>(
          map['notificationTargets'],
          (value) => GetResponsePlanIncidentTemplateNotificationTarget.fromMap(
              (value as Map).cast<String, dynamic>())),
      summary: map['summary'] as String,
      title: map['title'] as String,
    );
  }
}
