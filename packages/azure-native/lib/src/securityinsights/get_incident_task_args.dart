// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securityinsights_get_incident_task_args_doc}
/// Arguments for getIncidentTask.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_get_incident_task_args_doc}
class GetIncidentTaskArgs {
  /// Incident ID
  final pulumi.Input<String> incidentId;
  /// Incident task ID
  final pulumi.Input<String> incidentTaskId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetIncidentTaskArgs].
  /// [incidentId] Incident ID
  /// [incidentTaskId] Incident task ID
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] The name of the workspace.
  GetIncidentTaskArgs({
    required String incidentId,
    required String incidentTaskId,
    required String resourceGroupName,
    required String workspaceName,
  }) :
      incidentId = pulumi.Input.asInput<String>(incidentId),
      incidentTaskId = pulumi.Input.asInput<String>(incidentTaskId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'incidentId': incidentId,
      'incidentTaskId': incidentTaskId,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory GetIncidentTaskArgs.fromMap(Map<String, dynamic> map) {
    return GetIncidentTaskArgs(
      incidentId: map['incidentId'] as String,
      incidentTaskId: map['incidentTaskId'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      workspaceName: map['workspaceName'] as String,
    );
  }
}

