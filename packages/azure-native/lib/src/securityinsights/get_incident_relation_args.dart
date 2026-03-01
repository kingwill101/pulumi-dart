// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securityinsights_get_incident_relation_args_doc}
/// Arguments for getIncidentRelation.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_get_incident_relation_args_doc}
class GetIncidentRelationArgs {
  /// Incident ID
  final pulumi.Input<String> incidentId;
  /// Relation Name
  final pulumi.Input<String> relationName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetIncidentRelationArgs].
  /// [incidentId] Incident ID
  /// [relationName] Relation Name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] The name of the workspace.
  GetIncidentRelationArgs({
    required String incidentId,
    required String relationName,
    required String resourceGroupName,
    required String workspaceName,
  }) :
      incidentId = pulumi.Input.asInput<String>(incidentId),
      relationName = pulumi.Input.asInput<String>(relationName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'incidentId': incidentId,
      'relationName': relationName,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory GetIncidentRelationArgs.fromMap(Map<String, dynamic> map) {
    return GetIncidentRelationArgs(
      incidentId: map['incidentId'] as String,
      relationName: map['relationName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      workspaceName: map['workspaceName'] as String,
    );
  }
}

