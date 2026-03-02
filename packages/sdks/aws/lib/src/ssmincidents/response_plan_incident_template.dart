// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'response_plan_incident_template_notification_target.dart';

class ResponsePlanIncidentTemplate {
  /// A string used to stop Incident Manager from creating multiple incident records for the same incident.
  final pulumi.Input<String>? dedupeString;
  /// The impact value of a generated incident. The following values are supported:
  final pulumi.Input<int> impact;
  /// The tags assigned to an incident template. When an incident starts, Incident Manager assigns the tags specified in the template to the incident.
  final pulumi.Input<Map<String, String>>? incidentTags;
  /// The Amazon Simple Notification Service (Amazon SNS) targets that this incident notifies when it is updated. The `notification_target` configuration block supports the following argument:
  final pulumi.Input<List<ResponsePlanIncidentTemplateNotificationTarget>>? notificationTargets;
  /// The summary of an incident.
  final pulumi.Input<String>? summary;
  /// The title of a generated incident.
  final pulumi.Input<String> title;

  /// Creates a new [ResponsePlanIncidentTemplate].
  /// [dedupeString] A string used to stop Incident Manager from creating multiple incident records for the same incident.
  /// [impact] The impact value of a generated incident. The following values are supported:
  /// [incidentTags] The tags assigned to an incident template. When an incident starts, Incident Manager assigns the tags specified in the template to the incident.
  /// [notificationTargets] The Amazon Simple Notification Service (Amazon SNS) targets that this incident notifies when it is updated. The `notification_target` configuration block supports the following argument:
  /// [summary] The summary of an incident.
  /// [title] The title of a generated incident.
  ResponsePlanIncidentTemplate({
    this.dedupeString,
    required this.impact,
    this.incidentTags,
    this.notificationTargets,
    this.summary,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dedupeString': ?dedupeString,
      'impact': impact,
      'incidentTags': ?incidentTags,
      'notificationTargets': ?pulumi.Input.mapOptionalInputValue<List<ResponsePlanIncidentTemplateNotificationTarget>, List<Map<String, dynamic>>>(notificationTargets, (value) => pulumi.Input.encodeList<ResponsePlanIncidentTemplateNotificationTarget, Map<String, dynamic>>(value, (value) => value.toMap())),
      'summary': ?summary,
      'title': title,
    };
  }

  factory ResponsePlanIncidentTemplate.fromMap(Map<String, dynamic> map) {
    return ResponsePlanIncidentTemplate(
      dedupeString: map['dedupeString'] == null ? null : (map['dedupeString'] as String).input(),
      impact: (map['impact'] as int).input(),
      incidentTags: map['incidentTags'] == null ? null : ((map['incidentTags'] as Map).cast<String, String>()).input(),
      notificationTargets: map['notificationTargets'] == null ? null : (pulumi.Input.decodeList<ResponsePlanIncidentTemplateNotificationTarget>(map['notificationTargets'], (value) => ResponsePlanIncidentTemplateNotificationTarget.fromMap((value as Map).cast<String, dynamic>()))).input(),
      summary: map['summary'] == null ? null : (map['summary'] as String).input(),
      title: (map['title'] as String).input(),
    );
  }
}

