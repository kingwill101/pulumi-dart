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
  final pulumi.Input<ProjectEnvironmentTypeUpdatePropertiesCreatorRoleAssignment?>? creatorRoleAssignment;
  /// Id of a subscription that the environment type will be mapped to. The environment's resources will be deployed into this subscription.
  final pulumi.Input<String?>? deploymentTargetId;
  /// The display name of the project environment type.
  final pulumi.Input<String?>? displayName;
  /// The name of the environment type.
  final pulumi.Input<String?>? environmentTypeName;
  /// Managed identity properties
  final pulumi.Input<ManagedServiceIdentity?>? identity;
  /// The geo-location for the environment type
  final pulumi.Input<String?>? location;
  /// The name of the project.
  final pulumi.Input<String> projectName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Defines whether this Environment Type can be used in this Project.
  final pulumi.Input<dynamic>? status;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Role Assignments created on environment backing resources. This is a mapping from a user object ID to an object of role definition IDs.
  final pulumi.Input<Map<String, UserRoleAssignment>?>? userRoleAssignments;

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
  const ProjectEnvironmentTypeArgs({
    this.creatorRoleAssignment,
    this.deploymentTargetId,
    this.displayName,
    this.environmentTypeName,
    this.identity,
    this.location,
    required this.projectName,
    required this.resourceGroupName,
    this.status,
    this.tags,
    this.userRoleAssignments,
  });

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
      creatorRoleAssignment: (() { final guardedValue = map['creatorRoleAssignment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProjectEnvironmentTypeUpdatePropertiesCreatorRoleAssignment.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deploymentTargetId: (() { final guardedValue = map['deploymentTargetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      environmentTypeName: (() { final guardedValue = map['environmentTypeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedServiceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      projectName: pulumi.Input.fromValue(map['projectName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      userRoleAssignments: (() { final guardedValue = map['userRoleAssignments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<UserRoleAssignment>(guardedValue, (value) => UserRoleAssignment.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
