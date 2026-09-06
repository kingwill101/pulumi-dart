// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'assignment_principal.dart';
import 'resource_set_description.dart';
import 'role_types.dart';

/// {@template pulumi_customerinsights_role_assignment_args_doc}
/// The set of arguments for RoleAssignment.
/// {@endtemplate}
/// {@macro pulumi_customerinsights_role_assignment_args_doc}
class RoleAssignmentArgs {
  /// The assignment name
  final pulumi.Input<String?>? assignmentName;
  /// Widget types set for the assignment.
  final pulumi.Input<ResourceSetDescription?>? conflationPolicies;
  /// Connectors set for the assignment.
  final pulumi.Input<ResourceSetDescription?>? connectors;
  /// Localized description for the metadata.
  final pulumi.Input<Map<String, String>?>? description;
  /// Localized display names for the metadata.
  final pulumi.Input<Map<String, String>?>? displayName;
  /// The name of the hub.
  final pulumi.Input<String> hubName;
  /// Interactions set for the assignment.
  final pulumi.Input<ResourceSetDescription?>? interactions;
  /// Kpis set for the assignment.
  final pulumi.Input<ResourceSetDescription?>? kpis;
  /// Links set for the assignment.
  final pulumi.Input<ResourceSetDescription?>? links;
  /// The principals being assigned to.
  final pulumi.Input<List<AssignmentPrincipal>> principals;
  /// Profiles set for the assignment.
  final pulumi.Input<ResourceSetDescription?>? profiles;
  /// The Role assignments set for the relationship links.
  final pulumi.Input<ResourceSetDescription?>? relationshipLinks;
  /// The Role assignments set for the relationships.
  final pulumi.Input<ResourceSetDescription?>? relationships;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Type of roles.
  final pulumi.Input<RoleTypes> role;
  /// The Role assignments set for the assignment.
  final pulumi.Input<ResourceSetDescription?>? roleAssignments;
  /// Sas Policies set for the assignment.
  final pulumi.Input<ResourceSetDescription?>? sasPolicies;
  /// The Role assignments set for the assignment.
  final pulumi.Input<ResourceSetDescription?>? segments;
  /// Views set for the assignment.
  final pulumi.Input<ResourceSetDescription?>? views;
  /// Widget types set for the assignment.
  final pulumi.Input<ResourceSetDescription?>? widgetTypes;

  /// Creates a new [RoleAssignmentArgs].
  /// [assignmentName] The assignment name
  /// [conflationPolicies] Widget types set for the assignment.
  /// [connectors] Connectors set for the assignment.
  /// [description] Localized description for the metadata.
  /// [displayName] Localized display names for the metadata.
  /// [hubName] The name of the hub.
  /// [interactions] Interactions set for the assignment.
  /// [kpis] Kpis set for the assignment.
  /// [links] Links set for the assignment.
  /// [principals] The principals being assigned to.
  /// [profiles] Profiles set for the assignment.
  /// [relationshipLinks] The Role assignments set for the relationship links.
  /// [relationships] The Role assignments set for the relationships.
  /// [resourceGroupName] The name of the resource group.
  /// [role] Type of roles.
  /// [roleAssignments] The Role assignments set for the assignment.
  /// [sasPolicies] Sas Policies set for the assignment.
  /// [segments] The Role assignments set for the assignment.
  /// [views] Views set for the assignment.
  /// [widgetTypes] Widget types set for the assignment.
  const RoleAssignmentArgs({
    this.assignmentName,
    this.conflationPolicies,
    this.connectors,
    this.description,
    this.displayName,
    required this.hubName,
    this.interactions,
    this.kpis,
    this.links,
    required this.principals,
    this.profiles,
    this.relationshipLinks,
    this.relationships,
    required this.resourceGroupName,
    required this.role,
    this.roleAssignments,
    this.sasPolicies,
    this.segments,
    this.views,
    this.widgetTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignmentName': ?assignmentName,
      'conflationPolicies': ?pulumi.Input.mapOptionalInputValue<ResourceSetDescription, Map<String, dynamic>>(conflationPolicies, (value) => value.toMap()),
      'connectors': ?pulumi.Input.mapOptionalInputValue<ResourceSetDescription, Map<String, dynamic>>(connectors, (value) => value.toMap()),
      'description': ?description,
      'displayName': ?displayName,
      'hubName': hubName,
      'interactions': ?pulumi.Input.mapOptionalInputValue<ResourceSetDescription, Map<String, dynamic>>(interactions, (value) => value.toMap()),
      'kpis': ?pulumi.Input.mapOptionalInputValue<ResourceSetDescription, Map<String, dynamic>>(kpis, (value) => value.toMap()),
      'links': ?pulumi.Input.mapOptionalInputValue<ResourceSetDescription, Map<String, dynamic>>(links, (value) => value.toMap()),
      'principals': pulumi.Input.mapInputValue<List<AssignmentPrincipal>, List<Map<String, dynamic>>>(principals, (value) => pulumi.Input.encodeList<AssignmentPrincipal, Map<String, dynamic>>(value, (value) => value.toMap())),
      'profiles': ?pulumi.Input.mapOptionalInputValue<ResourceSetDescription, Map<String, dynamic>>(profiles, (value) => value.toMap()),
      'relationshipLinks': ?pulumi.Input.mapOptionalInputValue<ResourceSetDescription, Map<String, dynamic>>(relationshipLinks, (value) => value.toMap()),
      'relationships': ?pulumi.Input.mapOptionalInputValue<ResourceSetDescription, Map<String, dynamic>>(relationships, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'role': pulumi.Input.mapInputValue<RoleTypes, String>(role, (value) => value.wireValue),
      'roleAssignments': ?pulumi.Input.mapOptionalInputValue<ResourceSetDescription, Map<String, dynamic>>(roleAssignments, (value) => value.toMap()),
      'sasPolicies': ?pulumi.Input.mapOptionalInputValue<ResourceSetDescription, Map<String, dynamic>>(sasPolicies, (value) => value.toMap()),
      'segments': ?pulumi.Input.mapOptionalInputValue<ResourceSetDescription, Map<String, dynamic>>(segments, (value) => value.toMap()),
      'views': ?pulumi.Input.mapOptionalInputValue<ResourceSetDescription, Map<String, dynamic>>(views, (value) => value.toMap()),
      'widgetTypes': ?pulumi.Input.mapOptionalInputValue<ResourceSetDescription, Map<String, dynamic>>(widgetTypes, (value) => value.toMap()),
    };
  }

  factory RoleAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return RoleAssignmentArgs(
      assignmentName: (() { final guardedValue = map['assignmentName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      conflationPolicies: (() { final guardedValue = map['conflationPolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceSetDescription.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      connectors: (() { final guardedValue = map['connectors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceSetDescription.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      hubName: pulumi.Input.fromValue(map['hubName'] as String),
      interactions: (() { final guardedValue = map['interactions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceSetDescription.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kpis: (() { final guardedValue = map['kpis']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceSetDescription.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      links: (() { final guardedValue = map['links']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceSetDescription.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      principals: pulumi.Input.fromValue(pulumi.Input.decodeList<AssignmentPrincipal>(map['principals']!, (value) => AssignmentPrincipal.fromMap((value as Map).cast<String, dynamic>()))),
      profiles: (() { final guardedValue = map['profiles']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceSetDescription.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      relationshipLinks: (() { final guardedValue = map['relationshipLinks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceSetDescription.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      relationships: (() { final guardedValue = map['relationships']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceSetDescription.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      role: pulumi.Input.fromValue(RoleTypes.fromValue(map['role']! as String)),
      roleAssignments: (() { final guardedValue = map['roleAssignments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceSetDescription.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sasPolicies: (() { final guardedValue = map['sasPolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceSetDescription.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      segments: (() { final guardedValue = map['segments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceSetDescription.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      views: (() { final guardedValue = map['views']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceSetDescription.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      widgetTypes: (() { final guardedValue = map['widgetTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceSetDescription.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
