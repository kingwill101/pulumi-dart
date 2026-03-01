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
    String? assignmentName,
    ResourceSetDescription? conflationPolicies,
    ResourceSetDescription? connectors,
    Map<String, String>? description,
    Map<String, String>? displayName,
    required String hubName,
    ResourceSetDescription? interactions,
    ResourceSetDescription? kpis,
    ResourceSetDescription? links,
    required List<AssignmentPrincipal> principals,
    ResourceSetDescription? profiles,
    ResourceSetDescription? relationshipLinks,
    ResourceSetDescription? relationships,
    required String resourceGroupName,
    required RoleTypes role,
    ResourceSetDescription? roleAssignments,
    ResourceSetDescription? sasPolicies,
    ResourceSetDescription? segments,
    ResourceSetDescription? views,
    ResourceSetDescription? widgetTypes,
  }) :
      assignmentName = pulumi.Input.asOptionalInput<String>(assignmentName),
      conflationPolicies = pulumi.Input.asOptionalInput<ResourceSetDescription>(conflationPolicies),
      connectors = pulumi.Input.asOptionalInput<ResourceSetDescription>(connectors),
      description = pulumi.Input.asOptionalInput<Map<String, String>>(description),
      displayName = pulumi.Input.asOptionalInput<Map<String, String>>(displayName),
      hubName = pulumi.Input.asInput<String>(hubName),
      interactions = pulumi.Input.asOptionalInput<ResourceSetDescription>(interactions),
      kpis = pulumi.Input.asOptionalInput<ResourceSetDescription>(kpis),
      links = pulumi.Input.asOptionalInput<ResourceSetDescription>(links),
      principals = pulumi.Input.asInput<List<AssignmentPrincipal>>(principals),
      profiles = pulumi.Input.asOptionalInput<ResourceSetDescription>(profiles),
      relationshipLinks = pulumi.Input.asOptionalInput<ResourceSetDescription>(relationshipLinks),
      relationships = pulumi.Input.asOptionalInput<ResourceSetDescription>(relationships),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      role = pulumi.Input.asInput<RoleTypes>(role),
      roleAssignments = pulumi.Input.asOptionalInput<ResourceSetDescription>(roleAssignments),
      sasPolicies = pulumi.Input.asOptionalInput<ResourceSetDescription>(sasPolicies),
      segments = pulumi.Input.asOptionalInput<ResourceSetDescription>(segments),
      views = pulumi.Input.asOptionalInput<ResourceSetDescription>(views),
      widgetTypes = pulumi.Input.asOptionalInput<ResourceSetDescription>(widgetTypes);

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
      assignmentName: map['assignmentName'] == null ? null : map['assignmentName'] as String,
      conflationPolicies: map['conflationPolicies'] == null ? null : ResourceSetDescription.fromMap((map['conflationPolicies'] as Map).cast<String, dynamic>()),
      connectors: map['connectors'] == null ? null : ResourceSetDescription.fromMap((map['connectors'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : (map['description'] as Map).cast<String, String>(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as Map).cast<String, String>(),
      hubName: map['hubName'] as String,
      interactions: map['interactions'] == null ? null : ResourceSetDescription.fromMap((map['interactions'] as Map).cast<String, dynamic>()),
      kpis: map['kpis'] == null ? null : ResourceSetDescription.fromMap((map['kpis'] as Map).cast<String, dynamic>()),
      links: map['links'] == null ? null : ResourceSetDescription.fromMap((map['links'] as Map).cast<String, dynamic>()),
      principals: pulumi.Input.decodeList<AssignmentPrincipal>(map['principals'], (value) => AssignmentPrincipal.fromMap((value as Map).cast<String, dynamic>())),
      profiles: map['profiles'] == null ? null : ResourceSetDescription.fromMap((map['profiles'] as Map).cast<String, dynamic>()),
      relationshipLinks: map['relationshipLinks'] == null ? null : ResourceSetDescription.fromMap((map['relationshipLinks'] as Map).cast<String, dynamic>()),
      relationships: map['relationships'] == null ? null : ResourceSetDescription.fromMap((map['relationships'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      role: RoleTypes.fromValue(map['role'] as String),
      roleAssignments: map['roleAssignments'] == null ? null : ResourceSetDescription.fromMap((map['roleAssignments'] as Map).cast<String, dynamic>()),
      sasPolicies: map['sasPolicies'] == null ? null : ResourceSetDescription.fromMap((map['sasPolicies'] as Map).cast<String, dynamic>()),
      segments: map['segments'] == null ? null : ResourceSetDescription.fromMap((map['segments'] as Map).cast<String, dynamic>()),
      views: map['views'] == null ? null : ResourceSetDescription.fromMap((map['views'] as Map).cast<String, dynamic>()),
      widgetTypes: map['widgetTypes'] == null ? null : ResourceSetDescription.fromMap((map['widgetTypes'] as Map).cast<String, dynamic>()),
    );
  }
}

