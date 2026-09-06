// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_service_identity_response.dart';
import 'project_environment_type_update_properties_response_creator_role_assignment.dart';
import 'system_data_response.dart';
import 'user_role_assignment_response.dart';

/// Result data returned by getProjectEnvironmentType.
class GetProjectEnvironmentTypeResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The role definition assigned to the environment creator on backing resources.
  final ProjectEnvironmentTypeUpdatePropertiesResponseCreatorRoleAssignment? creatorRoleAssignment;
  /// Id of a subscription that the environment type will be mapped to. The environment's resources will be deployed into this subscription.
  final String? deploymentTargetId;
  /// The display name of the project environment type.
  final String? displayName;
  /// The number of environments of this type.
  final int? environmentCount;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// Managed identity properties
  final ManagedServiceIdentityResponse? identity;
  /// The geo-location for the environment type
  final String? location;
  /// The name of the resource
  final String? name;
  /// The provisioning state of the resource.
  final String? provisioningState;
  /// Defines whether this Environment Type can be used in this Project.
  final String? status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
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
  const GetProjectEnvironmentTypeResult({
    this.azureApiVersion,
    this.creatorRoleAssignment,
    this.deploymentTargetId,
    this.displayName,
    this.environmentCount,
    this.id,
    this.identity,
    this.location,
    this.name,
    this.provisioningState,
    this.status,
    this.systemData,
    this.tags,
    this.type,
    this.userRoleAssignments,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'creatorRoleAssignment': ?creatorRoleAssignment?.toMap(),
      'deploymentTargetId': ?deploymentTargetId,
      'displayName': ?displayName,
      'environmentCount': ?environmentCount,
      'id': ?id,
      'identity': ?identity?.toMap(),
      'location': ?location,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'status': ?status,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
      'userRoleAssignments': ?(() { final guardedValue = userRoleAssignments; if (guardedValue == null) return null; return pulumi.Input.encodeMapValues<UserRoleAssignmentResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetProjectEnvironmentTypeResult.fromMap(Map<String, dynamic> map) {
    return GetProjectEnvironmentTypeResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      creatorRoleAssignment: (() { final guardedValue = map['creatorRoleAssignment']; if (guardedValue == null) return null; return ProjectEnvironmentTypeUpdatePropertiesResponseCreatorRoleAssignment.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      deploymentTargetId: (() { final guardedValue = map['deploymentTargetId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      environmentCount: (() { final guardedValue = map['environmentCount']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      userRoleAssignments: (() { final guardedValue = map['userRoleAssignments']; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<UserRoleAssignmentResponse>(guardedValue, (value) => UserRoleAssignmentResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
