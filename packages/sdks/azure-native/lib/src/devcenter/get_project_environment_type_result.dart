// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_service_identity_response.dart';
import 'project_environment_type_update_properties_response_creator_role_assignment.dart';
import 'system_data_response.dart';
import 'user_role_assignment_response.dart';

/// Result data returned by getProjectEnvironmentType.
class GetProjectEnvironmentTypeResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The role definition assigned to the environment creator on backing resources.
  final ProjectEnvironmentTypeUpdatePropertiesResponseCreatorRoleAssignment? creatorRoleAssignment;
  /// Id of a subscription that the environment type will be mapped to. The environment's resources will be deployed into this subscription.
  final String? deploymentTargetId;
  /// The display name of the project environment type.
  final String? displayName;
  /// The number of environments of this type.
  final int environmentCount;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// Managed identity properties
  final ManagedServiceIdentityResponse? identity;
  /// The geo-location for the environment type
  final String? location;
  /// The name of the resource
  final String name;
  /// The provisioning state of the resource.
  final String provisioningState;
  /// Defines whether this Environment Type can be used in this Project.
  final String? status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Role Assignments created on environment backing resources. This is a mapping from a user object ID to an object of role definition IDs.
  final Map<String, UserRoleAssignmentResponse>? userRoleAssignments;

  /// Creates a new [GetProjectEnvironmentTypeResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [creatorRoleAssignment] The role definition assigned to the environment creator on backing resources.
  /// [deploymentTargetId] Id of a subscription that the environment type will be mapped to. The environment's resources will be deployed into this subscription.
  /// [displayName] The display name of the project environment type.
  /// [environmentCount] The number of environments of this type.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [identity] Managed identity properties
  /// [location] The geo-location for the environment type
  /// [name] The name of the resource
  /// [provisioningState] The provisioning state of the resource.
  /// [status] Defines whether this Environment Type can be used in this Project.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [userRoleAssignments] Role Assignments created on environment backing resources. This is a mapping from a user object ID to an object of role definition IDs.
  GetProjectEnvironmentTypeResult({
    required this.azureApiVersion,
    this.creatorRoleAssignment,
    this.deploymentTargetId,
    this.displayName,
    required this.environmentCount,
    required this.id,
    this.identity,
    this.location,
    required this.name,
    required this.provisioningState,
    this.status,
    required this.systemData,
    this.tags,
    required this.type,
    this.userRoleAssignments,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'creatorRoleAssignment': ?creatorRoleAssignment == null ? null : creatorRoleAssignment!.toMap(),
      'deploymentTargetId': ?deploymentTargetId,
      'displayName': ?displayName,
      'environmentCount': environmentCount,
      'id': id,
      'identity': ?identity == null ? null : identity!.toMap(),
      'location': ?location,
      'name': name,
      'provisioningState': provisioningState,
      'status': ?status,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'userRoleAssignments': ?userRoleAssignments == null ? null : pulumi.Input.encodeMapValues<UserRoleAssignmentResponse, Map<String, dynamic>>(userRoleAssignments!, (value) => value.toMap()),
    };
  }

  factory GetProjectEnvironmentTypeResult.fromMap(Map<String, dynamic> map) {
    return GetProjectEnvironmentTypeResult(
      azureApiVersion: map['azureApiVersion'] as String,
      creatorRoleAssignment: map['creatorRoleAssignment'] == null ? null : ProjectEnvironmentTypeUpdatePropertiesResponseCreatorRoleAssignment.fromMap((map['creatorRoleAssignment']! as Map).cast<String, dynamic>()),
      deploymentTargetId: map['deploymentTargetId'] == null ? null : map['deploymentTargetId']! as String,
      displayName: map['displayName'] == null ? null : map['displayName']! as String,
      environmentCount: map['environmentCount'] as int,
      id: map['id'] as String,
      identity: map['identity'] == null ? null : ManagedServiceIdentityResponse.fromMap((map['identity']! as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location']! as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      status: map['status'] == null ? null : map['status']! as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
      userRoleAssignments: map['userRoleAssignments'] == null ? null : pulumi.Input.decodeMapValues<UserRoleAssignmentResponse>(map['userRoleAssignments']!, (value) => UserRoleAssignmentResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

