// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../response_plan_incident_template_notification_target/response_plan_incident_template_notification_target.dart';

class ResponsePlanIncidentTemplate {
  /// A string used to stop Incident Manager from creating multiple incident records for the same incident.
  final String? dedupeString;

  /// The impact value of a generated incident. The following values are supported:
  final int impact;

  /// The tags assigned to an incident template. When an incident starts, Incident Manager assigns the tags specified in the template to the incident.
  final Map<String, String>? incidentTags;

  /// The Amazon Simple Notification Service (Amazon SNS) targets that this incident notifies when it is updated. The `notification_target` configuration block supports the following argument:
  final List<ResponsePlanIncidentTemplateNotificationTarget>?
      notificationTargets;

  /// The summary of an incident.
  final String? summary;

  /// The title of a generated incident.
  final String title;

  ResponsePlanIncidentTemplate({
    this.dedupeString,
    required this.impact,
    this.incidentTags,
    this.notificationTargets,
    this.summary,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dedupeStringValue = dedupeString;
    if (dedupeStringValue != null) {
      map['dedupeString'] = dedupeStringValue;
    }
    map['impact'] = impact;
    final incidentTagsValue = incidentTags;
    if (incidentTagsValue != null) {
      map['incidentTags'] = incidentTagsValue;
    }
    final notificationTargetsValue = notificationTargets;
    if (notificationTargetsValue != null) {
      map['notificationTargets'] = Input.encodeList<
              ResponsePlanIncidentTemplateNotificationTarget,
              Map<String, dynamic>>(
          notificationTargetsValue, (value) => value.toMap());
    }
    final summaryValue = summary;
    if (summaryValue != null) {
      map['summary'] = summaryValue;
    }
    map['title'] = title;
    return map;
  }

  factory ResponsePlanIncidentTemplate.fromMap(Map<String, dynamic> map) {
    return ResponsePlanIncidentTemplate(
      dedupeString:
          map['dedupeString'] == null ? null : map['dedupeString'] as String,
      impact: map['impact'] as int,
      incidentTags: map['incidentTags'] == null
          ? null
          : (map['incidentTags'] as Map).cast<String, String>(),
      notificationTargets: map['notificationTargets'] == null
          ? null
          : Input.decodeList<ResponsePlanIncidentTemplateNotificationTarget>(
              map['notificationTargets'],
              (value) => ResponsePlanIncidentTemplateNotificationTarget.fromMap(
                  (value as Map).cast<String, dynamic>())),
      summary: map['summary'] == null ? null : map['summary'] as String,
      title: map['title'] as String,
    );
  }
}
