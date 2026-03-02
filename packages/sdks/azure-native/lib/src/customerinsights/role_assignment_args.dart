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
  final pulumi.Input<String>? assignmentName;
  /// Widget types set for the assignment.
  final pulumi.Input<ResourceSetDescription>? conflationPolicies;
  /// Connectors set for the assignment.
  final pulumi.Input<ResourceSetDescription>? connectors;
  /// Localized description for the metadata.
  final pulumi.Input<Map<String, String>>? description;
  /// Localized display names for the metadata.
  final pulumi.Input<Map<String, String>>? displayName;
  /// The name of the hub.
  final pulumi.Input<String> hubName;
  /// Interactions set for the assignment.
  final pulumi.Input<ResourceSetDescription>? interactions;
  /// Kpis set for the assignment.
  final pulumi.Input<ResourceSetDescription>? kpis;
  /// Links set for the assignment.
  final pulumi.Input<ResourceSetDescription>? links;
  /// The principals being assigned to.
  final pulumi.Input<List<AssignmentPrincipal>> principals;
  /// Profiles set for the assignment.
  final pulumi.Input<ResourceSetDescription>? profiles;
  /// The Role assignments set for the relationship links.
  final pulumi.Input<ResourceSetDescription>? relationshipLinks;
  /// The Role assignments set for the relationships.
  final pulumi.Input<ResourceSetDescription>? relationships;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Type of roles.
  final pulumi.Input<RoleTypes> role;
  /// The Role assignments set for the assignment.
  final pulumi.Input<ResourceSetDescription>? roleAssignments;
  /// Sas Policies set for the assignment.
  final pulumi.Input<ResourceSetDescription>? sasPolicies;
  /// The Role assignments set for the assignment.
  final pulumi.Input<ResourceSetDescription>? segments;
  /// Views set for the assignment.
  final pulumi.Input<ResourceSetDescription>? views;
  /// Widget types set for the assignment.
  final pulumi.Input<ResourceSetDescription>? widgetTypes;

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
  RoleAssignmentArgs({
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
      'role': pulumi.Input.mapInputValue<RoleTypes, String>(role, (value) => value.value),
      'roleAssignments': ?pulumi.Input.mapOptionalInputValue<ResourceSetDescription, Map<String, dynamic>>(roleAssignments, (value) => value.toMap()),
      'sasPolicies': ?pulumi.Input.mapOptionalInputValue<ResourceSetDescription, Map<String, dynamic>>(sasPolicies, (value) => value.toMap()),
      'segments': ?pulumi.Input.mapOptionalInputValue<ResourceSetDescription, Map<String, dynamic>>(segments, (value) => value.toMap()),
      'views': ?pulumi.Input.mapOptionalInputValue<ResourceSetDescription, Map<String, dynamic>>(views, (value) => value.toMap()),
      'widgetTypes': ?pulumi.Input.mapOptionalInputValue<ResourceSetDescription, Map<String, dynamic>>(widgetTypes, (value) => value.toMap()),
    };
  }

  factory RoleAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return RoleAssignmentArgs(
      assignmentName: map['assignmentName'] == null ? null : (map['assignmentName'] as String).input(),
      conflationPolicies: map['conflationPolicies'] == null ? null : (ResourceSetDescription.fromMap((map['conflationPolicies'] as Map).cast<String, dynamic>())).input(),
      connectors: map['connectors'] == null ? null : (ResourceSetDescription.fromMap((map['connectors'] as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : ((map['description'] as Map).cast<String, String>()).input(),
      displayName: map['displayName'] == null ? null : ((map['displayName'] as Map).cast<String, String>()).input(),
      hubName: (map['hubName'] as String).input(),
      interactions: map['interactions'] == null ? null : (ResourceSetDescription.fromMap((map['interactions'] as Map).cast<String, dynamic>())).input(),
      kpis: map['kpis'] == null ? null : (ResourceSetDescription.fromMap((map['kpis'] as Map).cast<String, dynamic>())).input(),
      links: map['links'] == null ? null : (ResourceSetDescription.fromMap((map['links'] as Map).cast<String, dynamic>())).input(),
      principals: (pulumi.Input.decodeList<AssignmentPrincipal>(map['principals'], (value) => AssignmentPrincipal.fromMap((value as Map).cast<String, dynamic>()))).input(),
      profiles: map['profiles'] == null ? null : (ResourceSetDescription.fromMap((map['profiles'] as Map).cast<String, dynamic>())).input(),
      relationshipLinks: map['relationshipLinks'] == null ? null : (ResourceSetDescription.fromMap((map['relationshipLinks'] as Map).cast<String, dynamic>())).input(),
      relationships: map['relationships'] == null ? null : (ResourceSetDescription.fromMap((map['relationships'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      role: (RoleTypes.fromValue(map['role'] as String)).input(),
      roleAssignments: map['roleAssignments'] == null ? null : (ResourceSetDescription.fromMap((map['roleAssignments'] as Map).cast<String, dynamic>())).input(),
      sasPolicies: map['sasPolicies'] == null ? null : (ResourceSetDescription.fromMap((map['sasPolicies'] as Map).cast<String, dynamic>())).input(),
      segments: map['segments'] == null ? null : (ResourceSetDescription.fromMap((map['segments'] as Map).cast<String, dynamic>())).input(),
      views: map['views'] == null ? null : (ResourceSetDescription.fromMap((map['views'] as Map).cast<String, dynamic>())).input(),
      widgetTypes: map['widgetTypes'] == null ? null : (ResourceSetDescription.fromMap((map['widgetTypes'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

