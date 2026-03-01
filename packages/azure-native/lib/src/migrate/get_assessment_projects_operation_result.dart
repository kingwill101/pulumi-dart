// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_connection_response.dart';
import 'system_data_response.dart';

/// Result data returned by getAssessmentProjectsOperation.
class GetAssessmentProjectsOperationResult {
  /// Assessment solution ARM id tracked by Microsoft.Migrate/migrateProjects.
  final String? assessmentSolutionId;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Time when this project was created. Date-Time represented in ISO-8601 format.
  final String createdTimestamp;
  /// The ARM id of the storage account used for interactions when public access is
  /// disabled.
  final String? customerStorageAccountArmId;
  /// The ARM id of service map workspace created by customer.
  final String? customerWorkspaceId;
  /// Location of service map workspace created by customer.
  final String? customerWorkspaceLocation;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// The list of private endpoint connections to the project.
  final List<PrivateEndpointConnectionResponse> privateEndpointConnections;
  /// Assessment project status.
  final String? projectStatus;
  /// The status of the last operation.
  final String? provisioningState;
  /// This value can be set to 'enabled' to avoid breaking changes on existing
  /// customer resources and templates. If set to 'disabled', traffic over public
  /// interface is not allowed, and private endpoint connections would be the
  /// exclusive access method.
  final String? publicNetworkAccess;
  /// Endpoint at which the collector agent can call agent REST API.
  final String serviceEndpoint;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Time when this project was last updated. Date-Time represented in ISO-8601
  /// format.
  final String updatedTimestamp;

  /// Creates a new [GetAssessmentProjectsOperationResult].
  /// [assessmentSolutionId] Assessment solution ARM id tracked by Microsoft.Migrate/migrateProjects.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [createdTimestamp] Time when this project was created. Date-Time represented in ISO-8601 format.
  /// [customerStorageAccountArmId] The ARM id of the storage account used for interactions when public access is
  /// [customerWorkspaceId] The ARM id of service map workspace created by customer.
  /// [customerWorkspaceLocation] Location of service map workspace created by customer.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [privateEndpointConnections] The list of private endpoint connections to the project.
  /// [projectStatus] Assessment project status.
  /// [provisioningState] The status of the last operation.
  /// [publicNetworkAccess] This value can be set to 'enabled' to avoid breaking changes on existing
  /// [serviceEndpoint] Endpoint at which the collector agent can call agent REST API.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [updatedTimestamp] Time when this project was last updated. Date-Time represented in ISO-8601
  GetAssessmentProjectsOperationResult({
    this.assessmentSolutionId,
    required this.azureApiVersion,
    required this.createdTimestamp,
    this.customerStorageAccountArmId,
    this.customerWorkspaceId,
    this.customerWorkspaceLocation,
    required this.id,
    required this.location,
    required this.name,
    required this.privateEndpointConnections,
    this.projectStatus,
    this.provisioningState,
    this.publicNetworkAccess,
    required this.serviceEndpoint,
    required this.systemData,
    this.tags,
    required this.type,
    required this.updatedTimestamp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assessmentSolutionId': ?assessmentSolutionId,
      'azureApiVersion': azureApiVersion,
      'createdTimestamp': createdTimestamp,
      'customerStorageAccountArmId': ?customerStorageAccountArmId,
      'customerWorkspaceId': ?customerWorkspaceId,
      'customerWorkspaceLocation': ?customerWorkspaceLocation,
      'id': id,
      'location': location,
      'name': name,
      'privateEndpointConnections': pulumi.Input.encodeList<PrivateEndpointConnectionResponse, Map<String, dynamic>>(privateEndpointConnections, (value) => value.toMap()),
      'projectStatus': ?projectStatus,
      'provisioningState': ?provisioningState,
      'publicNetworkAccess': ?publicNetworkAccess,
      'serviceEndpoint': serviceEndpoint,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'updatedTimestamp': updatedTimestamp,
    };
  }

  factory GetAssessmentProjectsOperationResult.fromMap(Map<String, dynamic> map) {
    return GetAssessmentProjectsOperationResult(
      assessmentSolutionId: map['assessmentSolutionId'] == null ? null : map['assessmentSolutionId'] as String,
      azureApiVersion: map['azureApiVersion'] as String,
      createdTimestamp: map['createdTimestamp'] as String,
      customerStorageAccountArmId: map['customerStorageAccountArmId'] == null ? null : map['customerStorageAccountArmId'] as String,
      customerWorkspaceId: map['customerWorkspaceId'] == null ? null : map['customerWorkspaceId'] as String,
      customerWorkspaceLocation: map['customerWorkspaceLocation'] == null ? null : map['customerWorkspaceLocation'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      privateEndpointConnections: pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(map['privateEndpointConnections'], (value) => PrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>())),
      projectStatus: map['projectStatus'] == null ? null : map['projectStatus'] as String,
      provisioningState: map['provisioningState'] == null ? null : map['provisioningState'] as String,
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : map['publicNetworkAccess'] as String,
      serviceEndpoint: map['serviceEndpoint'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
      updatedTimestamp: map['updatedTimestamp'] as String,
    );
  }
}

