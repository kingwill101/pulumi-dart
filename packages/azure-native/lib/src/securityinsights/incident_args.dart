// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'incident_label.dart';
import 'incident_owner_info.dart';

/// {@template pulumi_securityinsights_incident_args_doc}
/// The set of arguments for Incident.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_incident_args_doc}
class IncidentArgs {
  /// The reason the incident was closed
  final pulumi.Input<String>? classification;
  /// Describes the reason the incident was closed
  final pulumi.Input<String>? classificationComment;
  /// The classification reason the incident was closed with
  final pulumi.Input<String>? classificationReason;
  /// The description of the incident
  final pulumi.Input<String>? description;
  /// The time of the first activity in the incident
  final pulumi.Input<String>? firstActivityTimeUtc;
  /// Incident ID
  final pulumi.Input<String>? incidentId;
  /// List of labels relevant to this incident
  final pulumi.Input<List<IncidentLabel>>? labels;
  /// The time of the last activity in the incident
  final pulumi.Input<String>? lastActivityTimeUtc;
  /// Describes a user that the incident is assigned to
  final pulumi.Input<IncidentOwnerInfo>? owner;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The severity of the incident
  final pulumi.Input<String> severity;
  /// The status of the incident
  final pulumi.Input<String> status;
  /// The title of the incident
  final pulumi.Input<String> title;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [IncidentArgs].
  /// [classification] The reason the incident was closed
  /// [classificationComment] Describes the reason the incident was closed
  /// [classificationReason] The classification reason the incident was closed with
  /// [description] The description of the incident
  /// [firstActivityTimeUtc] The time of the first activity in the incident
  /// [incidentId] Incident ID
  /// [labels] List of labels relevant to this incident
  /// [lastActivityTimeUtc] The time of the last activity in the incident
  /// [owner] Describes a user that the incident is assigned to
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [severity] The severity of the incident
  /// [status] The status of the incident
  /// [title] The title of the incident
  /// [workspaceName] The name of the workspace.
  IncidentArgs({
    String? classification,
    String? classificationComment,
    String? classificationReason,
    String? description,
    String? firstActivityTimeUtc,
    String? incidentId,
    List<IncidentLabel>? labels,
    String? lastActivityTimeUtc,
    IncidentOwnerInfo? owner,
    required String resourceGroupName,
    required String severity,
    required String status,
    required String title,
    required String workspaceName,
  }) :
      classification = pulumi.Input.asOptionalInput<String>(classification),
      classificationComment = pulumi.Input.asOptionalInput<String>(classificationComment),
      classificationReason = pulumi.Input.asOptionalInput<String>(classificationReason),
      description = pulumi.Input.asOptionalInput<String>(description),
      firstActivityTimeUtc = pulumi.Input.asOptionalInput<String>(firstActivityTimeUtc),
      incidentId = pulumi.Input.asOptionalInput<String>(incidentId),
      labels = pulumi.Input.asOptionalInput<List<IncidentLabel>>(labels),
      lastActivityTimeUtc = pulumi.Input.asOptionalInput<String>(lastActivityTimeUtc),
      owner = pulumi.Input.asOptionalInput<IncidentOwnerInfo>(owner),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      severity = pulumi.Input.asInput<String>(severity),
      status = pulumi.Input.asInput<String>(status),
      title = pulumi.Input.asInput<String>(title),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'classification': ?classification,
      'classificationComment': ?classificationComment,
      'classificationReason': ?classificationReason,
      'description': ?description,
      'firstActivityTimeUtc': ?firstActivityTimeUtc,
      'incidentId': ?incidentId,
      'labels': ?pulumi.Input.mapOptionalInputValue<List<IncidentLabel>, List<Map<String, dynamic>>>(labels, (value) => pulumi.Input.encodeList<IncidentLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'lastActivityTimeUtc': ?lastActivityTimeUtc,
      'owner': ?pulumi.Input.mapOptionalInputValue<IncidentOwnerInfo, Map<String, dynamic>>(owner, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'severity': severity,
      'status': status,
      'title': title,
      'workspaceName': workspaceName,
    };
  }

  factory IncidentArgs.fromMap(Map<String, dynamic> map) {
    return IncidentArgs(
      classification: map['classification'] == null ? null : map['classification'] as String,
      classificationComment: map['classificationComment'] == null ? null : map['classificationComment'] as String,
      classificationReason: map['classificationReason'] == null ? null : map['classificationReason'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      firstActivityTimeUtc: map['firstActivityTimeUtc'] == null ? null : map['firstActivityTimeUtc'] as String,
      incidentId: map['incidentId'] == null ? null : map['incidentId'] as String,
      labels: map['labels'] == null ? null : pulumi.Input.decodeList<IncidentLabel>(map['labels'], (value) => IncidentLabel.fromMap((value as Map).cast<String, dynamic>())),
      lastActivityTimeUtc: map['lastActivityTimeUtc'] == null ? null : map['lastActivityTimeUtc'] as String,
      owner: map['owner'] == null ? null : IncidentOwnerInfo.fromMap((map['owner'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      severity: map['severity'] as String,
      status: map['status'] as String,
      title: map['title'] as String,
      workspaceName: map['workspaceName'] as String,
    );
  }
}

