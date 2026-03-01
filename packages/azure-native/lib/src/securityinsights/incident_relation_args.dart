// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securityinsights_incident_relation_args_doc}
/// The set of arguments for IncidentRelation.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_incident_relation_args_doc}
class IncidentRelationArgs {
  /// Incident ID
  final pulumi.Input<String> incidentId;
  /// The resource ID of the related resource
  final pulumi.Input<String> relatedResourceId;
  /// Relation Name
  final pulumi.Input<String>? relationName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [IncidentRelationArgs].
  /// [incidentId] Incident ID
  /// [relatedResourceId] The resource ID of the related resource
  /// [relationName] Relation Name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] The name of the workspace.
  IncidentRelationArgs({
    required String incidentId,
    required String relatedResourceId,
    String? relationName,
    required String resourceGroupName,
    required String workspaceName,
  }) :
      incidentId = pulumi.Input.asInput<String>(incidentId),
      relatedResourceId = pulumi.Input.asInput<String>(relatedResourceId),
      relationName = pulumi.Input.asOptionalInput<String>(relationName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'incidentId': incidentId,
      'relatedResourceId': relatedResourceId,
      'relationName': ?relationName,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory IncidentRelationArgs.fromMap(Map<String, dynamic> map) {
    return IncidentRelationArgs(
      incidentId: map['incidentId'] as String,
      relatedResourceId: map['relatedResourceId'] as String,
      relationName: map['relationName'] == null ? null : map['relationName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      workspaceName: map['workspaceName'] as String,
    );
  }
}

