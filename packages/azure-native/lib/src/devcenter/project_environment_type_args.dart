// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_service_identity.dart';
import 'project_environment_type_update_properties_creator_role_assignment.dart';
import 'user_role_assignment.dart';

/// {@template pulumi_devcenter_project_environment_type_args_doc}
/// The set of arguments for ProjectEnvironmentType.
/// {@endtemplate}
/// {@macro pulumi_devcenter_project_environment_type_args_doc}
class ProjectEnvironmentTypeArgs {
  /// The role definition assigned to the environment creator on backing resources.
  final pulumi.Input<ProjectEnvironmentTypeUpdatePropertiesCreatorRoleAssignment>? creatorRoleAssignment;
  /// Id of a subscription that the environment type will be mapped to. The environment's resources will be deployed into this subscription.
  final pulumi.Input<String>? deploymentTargetId;
  /// The display name of the project environment type.
  final pulumi.Input<String>? displayName;
  /// The name of the environment type.
  final pulumi.Input<String>? environmentTypeName;
  /// Managed identity properties
  final pulumi.Input<ManagedServiceIdentity>? identity;
  /// The geo-location for the environment type
  final pulumi.Input<String>? location;
  /// The name of the project.
  final pulumi.Input<String> projectName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Defines whether this Environment Type can be used in this Project.
  final pulumi.Input<String>? status;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Role Assignments created on environment backing resources. This is a mapping from a user object ID to an object of role definition IDs.
  final pulumi.Input<Map<String, UserRoleAssignment>>? userRoleAssignments;

  /// Creates a new [ProjectEnvironmentTypeArgs].
  /// [creatorRoleAssignment] The role definition assigned to the environment creator on backing resources.
  /// [deploymentTargetId] Id of a subscription that the environment type will be mapped to. The environment's resources will be deployed into this subscription.
  /// [displayName] The display name of the project environment type.
  /// [environmentTypeName] The name of the environment type.
  /// [identity] Managed identity properties
  /// [location] The geo-location for the environment type
  /// [projectName] The name of the project.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [status] Defines whether this Environment Type can be used in this Project.
  /// [tags] Resource tags.
  /// [userRoleAssignments] Role Assignments created on environment backing resources. This is a mapping from a user object ID to an object of role definition IDs.
  ProjectEnvironmentTypeArgs({
    ProjectEnvironmentTypeUpdatePropertiesCreatorRoleAssignment? creatorRoleAssignment,
    String? deploymentTargetId,
    String? displayName,
    String? environmentTypeName,
    ManagedServiceIdentity? identity,
    String? location,
    required String projectName,
    required String resourceGroupName,
    String? status,
    Map<String, String>? tags,
    Map<String, UserRoleAssignment>? userRoleAssignments,
  }) :
      creatorRoleAssignment = pulumi.Input.asOptionalInput<ProjectEnvironmentTypeUpdatePropertiesCreatorRoleAssignment>(creatorRoleAssignment),
      deploymentTargetId = pulumi.Input.asOptionalInput<String>(deploymentTargetId),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      environmentTypeName = pulumi.Input.asOptionalInput<String>(environmentTypeName),
      identity = pulumi.Input.asOptionalInput<ManagedServiceIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      projectName = pulumi.Input.asInput<String>(projectName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      userRoleAssignments = pulumi.Input.asOptionalInput<Map<String, UserRoleAssignment>>(userRoleAssignments);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creatorRoleAssignment': ?pulumi.Input.mapOptionalInputValue<ProjectEnvironmentTypeUpdatePropertiesCreatorRoleAssignment, Map<String, dynamic>>(creatorRoleAssignment, (value) => value.toMap()),
      'deploymentTargetId': ?deploymentTargetId,
      'displayName': ?displayName,
      'environmentTypeName': ?environmentTypeName,
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'projectName': projectName,
      'resourceGroupName': resourceGroupName,
      'status': ?status,
      'tags': ?tags,
      'userRoleAssignments': ?pulumi.Input.mapOptionalInputValue<Map<String, UserRoleAssignment>, Map<String, Map<String, dynamic>>>(userRoleAssignments, (value) => pulumi.Input.encodeMapValues<UserRoleAssignment, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ProjectEnvironmentTypeArgs.fromMap(Map<String, dynamic> map) {
    return ProjectEnvironmentTypeArgs(
      creatorRoleAssignment: map['creatorRoleAssignment'] == null ? null : ProjectEnvironmentTypeUpdatePropertiesCreatorRoleAssignment.fromMap((map['creatorRoleAssignment'] as Map).cast<String, dynamic>()),
      deploymentTargetId: map['deploymentTargetId'] == null ? null : map['deploymentTargetId'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      environmentTypeName: map['environmentTypeName'] == null ? null : map['environmentTypeName'] as String,
      identity: map['identity'] == null ? null : ManagedServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      projectName: map['projectName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      userRoleAssignments: map['userRoleAssignments'] == null ? null : pulumi.Input.decodeMapValues<UserRoleAssignment>(map['userRoleAssignments'], (value) => UserRoleAssignment.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

