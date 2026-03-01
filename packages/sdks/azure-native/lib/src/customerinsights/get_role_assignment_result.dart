// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'assignment_principal_response.dart';
import 'resource_set_description_response.dart';

/// Result data returned by getRoleAssignment.
class GetRoleAssignmentResult {
  /// The name of the metadata object.
  final String assignmentName;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Widget types set for the assignment.
  final ResourceSetDescriptionResponse? conflationPolicies;
  /// Connectors set for the assignment.
  final ResourceSetDescriptionResponse? connectors;
  /// Localized description for the metadata.
  final Map<String, String>? description;
  /// Localized display names for the metadata.
  final Map<String, String>? displayName;
  /// Resource ID.
  final String id;
  /// Interactions set for the assignment.
  final ResourceSetDescriptionResponse? interactions;
  /// Kpis set for the assignment.
  final ResourceSetDescriptionResponse? kpis;
  /// Links set for the assignment.
  final ResourceSetDescriptionResponse? links;
  /// Resource name.
  final String name;
  /// The principals being assigned to.
  final List<AssignmentPrincipalResponse> principals;
  /// Profiles set for the assignment.
  final ResourceSetDescriptionResponse? profiles;
  /// Provisioning state.
  final String provisioningState;
  /// The Role assignments set for the relationship links.
  final ResourceSetDescriptionResponse? relationshipLinks;
  /// The Role assignments set for the relationships.
  final ResourceSetDescriptionResponse? relationships;
  /// Type of roles.
  final String role;
  /// The Role assignments set for the assignment.
  final ResourceSetDescriptionResponse? roleAssignments;
  /// Sas Policies set for the assignment.
  final ResourceSetDescriptionResponse? sasPolicies;
  /// The Role assignments set for the assignment.
  final ResourceSetDescriptionResponse? segments;
  /// The hub name.
  final String tenantId;
  /// Resource type.
  final String type;
  /// Views set for the assignment.
  final ResourceSetDescriptionResponse? views;
  /// Widget types set for the assignment.
  final ResourceSetDescriptionResponse? widgetTypes;

  /// Creates a new [GetRoleAssignmentResult].
  /// [assignmentName] The name of the metadata object.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [conflationPolicies] Widget types set for the assignment.
  /// [connectors] Connectors set for the assignment.
  /// [description] Localized description for the metadata.
  /// [displayName] Localized display names for the metadata.
  /// [id] Resource ID.
  /// [interactions] Interactions set for the assignment.
  /// [kpis] Kpis set for the assignment.
  /// [links] Links set for the assignment.
  /// [name] Resource name.
  /// [principals] The principals being assigned to.
  /// [profiles] Profiles set for the assignment.
  /// [provisioningState] Provisioning state.
  /// [relationshipLinks] The Role assignments set for the relationship links.
  /// [relationships] The Role assignments set for the relationships.
  /// [role] Type of roles.
  /// [roleAssignments] The Role assignments set for the assignment.
  /// [sasPolicies] Sas Policies set for the assignment.
  /// [segments] The Role assignments set for the assignment.
  /// [tenantId] The hub name.
  /// [type] Resource type.
  /// [views] Views set for the assignment.
  /// [widgetTypes] Widget types set for the assignment.
  GetRoleAssignmentResult({
    required this.assignmentName,
    required this.azureApiVersion,
    this.conflationPolicies,
    this.connectors,
    this.description,
    this.displayName,
    required this.id,
    this.interactions,
    this.kpis,
    this.links,
    required this.name,
    required this.principals,
    this.profiles,
    required this.provisioningState,
    this.relationshipLinks,
    this.relationships,
    required this.role,
    this.roleAssignments,
    this.sasPolicies,
    this.segments,
    required this.tenantId,
    required this.type,
    this.views,
    this.widgetTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignmentName': assignmentName,
      'azureApiVersion': azureApiVersion,
      'conflationPolicies': ?conflationPolicies == null ? null : conflationPolicies!.toMap(),
      'connectors': ?connectors == null ? null : connectors!.toMap(),
      'description': ?description,
      'displayName': ?displayName,
      'id': id,
      'interactions': ?interactions == null ? null : interactions!.toMap(),
      'kpis': ?kpis == null ? null : kpis!.toMap(),
      'links': ?links == null ? null : links!.toMap(),
      'name': name,
      'principals': pulumi.Input.encodeList<AssignmentPrincipalResponse, Map<String, dynamic>>(principals, (value) => value.toMap()),
      'profiles': ?profiles == null ? null : profiles!.toMap(),
      'provisioningState': provisioningState,
      'relationshipLinks': ?relationshipLinks == null ? null : relationshipLinks!.toMap(),
      'relationships': ?relationships == null ? null : relationships!.toMap(),
      'role': role,
      'roleAssignments': ?roleAssignments == null ? null : roleAssignments!.toMap(),
      'sasPolicies': ?sasPolicies == null ? null : sasPolicies!.toMap(),
      'segments': ?segments == null ? null : segments!.toMap(),
      'tenantId': tenantId,
      'type': type,
      'views': ?views == null ? null : views!.toMap(),
      'widgetTypes': ?widgetTypes == null ? null : widgetTypes!.toMap(),
    };
  }

  factory GetRoleAssignmentResult.fromMap(Map<String, dynamic> map) {
    return GetRoleAssignmentResult(
      assignmentName: map['assignmentName'] as String,
      azureApiVersion: map['azureApiVersion'] as String,
      conflationPolicies: map['conflationPolicies'] == null ? null : ResourceSetDescriptionResponse.fromMap((map['conflationPolicies'] as Map).cast<String, dynamic>()),
      connectors: map['connectors'] == null ? null : ResourceSetDescriptionResponse.fromMap((map['connectors'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : (map['description'] as Map).cast<String, String>(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as Map).cast<String, String>(),
      id: map['id'] as String,
      interactions: map['interactions'] == null ? null : ResourceSetDescriptionResponse.fromMap((map['interactions'] as Map).cast<String, dynamic>()),
      kpis: map['kpis'] == null ? null : ResourceSetDescriptionResponse.fromMap((map['kpis'] as Map).cast<String, dynamic>()),
      links: map['links'] == null ? null : ResourceSetDescriptionResponse.fromMap((map['links'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      principals: pulumi.Input.decodeList<AssignmentPrincipalResponse>(map['principals'], (value) => AssignmentPrincipalResponse.fromMap((value as Map).cast<String, dynamic>())),
      profiles: map['profiles'] == null ? null : ResourceSetDescriptionResponse.fromMap((map['profiles'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
      relationshipLinks: map['relationshipLinks'] == null ? null : ResourceSetDescriptionResponse.fromMap((map['relationshipLinks'] as Map).cast<String, dynamic>()),
      relationships: map['relationships'] == null ? null : ResourceSetDescriptionResponse.fromMap((map['relationships'] as Map).cast<String, dynamic>()),
      role: map['role'] as String,
      roleAssignments: map['roleAssignments'] == null ? null : ResourceSetDescriptionResponse.fromMap((map['roleAssignments'] as Map).cast<String, dynamic>()),
      sasPolicies: map['sasPolicies'] == null ? null : ResourceSetDescriptionResponse.fromMap((map['sasPolicies'] as Map).cast<String, dynamic>()),
      segments: map['segments'] == null ? null : ResourceSetDescriptionResponse.fromMap((map['segments'] as Map).cast<String, dynamic>()),
      tenantId: map['tenantId'] as String,
      type: map['type'] as String,
      views: map['views'] == null ? null : ResourceSetDescriptionResponse.fromMap((map['views'] as Map).cast<String, dynamic>()),
      widgetTypes: map['widgetTypes'] == null ? null : ResourceSetDescriptionResponse.fromMap((map['widgetTypes'] as Map).cast<String, dynamic>()),
    );
  }
}

