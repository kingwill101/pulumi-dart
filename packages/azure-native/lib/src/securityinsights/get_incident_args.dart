// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securityinsights_get_incident_args_doc}
/// Arguments for getIncident.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_get_incident_args_doc}
class GetIncidentArgs {
  /// Incident ID
  final pulumi.Input<String> incidentId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetIncidentArgs].
  /// [incidentId] Incident ID
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] The name of the workspace.
  GetIncidentArgs({
    required String incidentId,
    required String resourceGroupName,
    required String workspaceName,
  }) :
      incidentId = pulumi.Input.asInput<String>(incidentId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'incidentId': incidentId,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory GetIncidentArgs.fromMap(Map<String, dynamic> map) {
    return GetIncidentArgs(
      incidentId: map['incidentId'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      workspaceName: map['workspaceName'] as String,
    );
  }
}

