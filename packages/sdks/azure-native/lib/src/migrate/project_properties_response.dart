// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_connection_response.dart';

/// Properties of a project.
class ProjectPropertiesResponse {
  /// Assessment solution ARM id tracked by Microsoft.Migrate/migrateProjects.
  final String? assessmentSolutionId;
  /// Time when this project was created. Date-Time represented in ISO-8601 format.
  final String createdTimestamp;
  /// The ARM id of the storage account used for interactions when public access is disabled.
  final String? customerStorageAccountArmId;
  /// The ARM id of service map workspace created by customer.
  final String? customerWorkspaceId;
  /// Location of service map workspace created by customer.
  final String? customerWorkspaceLocation;
  /// Time when last assessment was created. Date-Time represented in ISO-8601 format. This value will be null until assessment is created.
  final String lastAssessmentTimestamp;
  /// Number of assessments created in the project.
  final int numberOfAssessments;
  /// Number of groups created in the project.
  final int numberOfGroups;
  /// Number of machines in the project.
  final int numberOfMachines;
  /// The list of private endpoint connections to the project.
  final List<PrivateEndpointConnectionResponse> privateEndpointConnections;
  /// Assessment project status.
  final String? projectStatus;
  /// Provisioning state of the project.
  final String provisioningState;
  /// This value can be set to 'enabled' to avoid breaking changes on existing customer resources and templates. If set to 'disabled', traffic over public interface is not allowed, and private endpoint connections would be the exclusive access method.
  final String? publicNetworkAccess;
  /// Endpoint at which the collector agent can call agent REST API.
  final String serviceEndpoint;
  /// Time when this project was last updated. Date-Time represented in ISO-8601 format.
  final String updatedTimestamp;

  /// Creates a new [ProjectPropertiesResponse].
  /// [assessmentSolutionId] Assessment solution ARM id tracked by Microsoft.Migrate/migrateProjects.
  /// [createdTimestamp] Time when this project was created. Date-Time represented in ISO-8601 format.
  /// [customerStorageAccountArmId] The ARM id of the storage account used for interactions when public access is disabled.
  /// [customerWorkspaceId] The ARM id of service map workspace created by customer.
  /// [customerWorkspaceLocation] Location of service map workspace created by customer.
  /// [lastAssessmentTimestamp] Time when last assessment was created. Date-Time represented in ISO-8601 format. This value will be null until assessment is created.
  /// [numberOfAssessments] Number of assessments created in the project.
  /// [numberOfGroups] Number of groups created in the project.
  /// [numberOfMachines] Number of machines in the project.
  /// [privateEndpointConnections] The list of private endpoint connections to the project.
  /// [projectStatus] Assessment project status.
  /// [provisioningState] Provisioning state of the project.
  /// [publicNetworkAccess] This value can be set to 'enabled' to avoid breaking changes on existing customer resources and templates. If set to 'disabled', traffic over public interface is not allowed, and private endpoint connections would be the exclusive access method.
  /// [serviceEndpoint] Endpoint at which the collector agent can call agent REST API.
  /// [updatedTimestamp] Time when this project was last updated. Date-Time represented in ISO-8601 format.
  ProjectPropertiesResponse({
    this.assessmentSolutionId,
    required this.createdTimestamp,
    this.customerStorageAccountArmId,
    this.customerWorkspaceId,
    this.customerWorkspaceLocation,
    required this.lastAssessmentTimestamp,
    required this.numberOfAssessments,
    required this.numberOfGroups,
    required this.numberOfMachines,
    required this.privateEndpointConnections,
    this.projectStatus,
    required this.provisioningState,
    this.publicNetworkAccess,
    required this.serviceEndpoint,
    required this.updatedTimestamp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assessmentSolutionId': ?assessmentSolutionId,
      'createdTimestamp': createdTimestamp,
      'customerStorageAccountArmId': ?customerStorageAccountArmId,
      'customerWorkspaceId': ?customerWorkspaceId,
      'customerWorkspaceLocation': ?customerWorkspaceLocation,
      'lastAssessmentTimestamp': lastAssessmentTimestamp,
      'numberOfAssessments': numberOfAssessments,
      'numberOfGroups': numberOfGroups,
      'numberOfMachines': numberOfMachines,
      'privateEndpointConnections': pulumi.Input.encodeList<PrivateEndpointConnectionResponse, Map<String, dynamic>>(privateEndpointConnections, (value) => value.toMap()),
      'projectStatus': ?projectStatus,
      'provisioningState': provisioningState,
      'publicNetworkAccess': ?publicNetworkAccess,
      'serviceEndpoint': serviceEndpoint,
      'updatedTimestamp': updatedTimestamp,
    };
  }

  factory ProjectPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ProjectPropertiesResponse(
      assessmentSolutionId: map['assessmentSolutionId'] == null ? null : map['assessmentSolutionId'] as String,
      createdTimestamp: map['createdTimestamp'] as String,
      customerStorageAccountArmId: map['customerStorageAccountArmId'] == null ? null : map['customerStorageAccountArmId'] as String,
      customerWorkspaceId: map['customerWorkspaceId'] == null ? null : map['customerWorkspaceId'] as String,
      customerWorkspaceLocation: map['customerWorkspaceLocation'] == null ? null : map['customerWorkspaceLocation'] as String,
      lastAssessmentTimestamp: map['lastAssessmentTimestamp'] as String,
      numberOfAssessments: map['numberOfAssessments'] as int,
      numberOfGroups: map['numberOfGroups'] as int,
      numberOfMachines: map['numberOfMachines'] as int,
      privateEndpointConnections: pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(map['privateEndpointConnections'], (value) => PrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>())),
      projectStatus: map['projectStatus'] == null ? null : map['projectStatus'] as String,
      provisioningState: map['provisioningState'] as String,
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : map['publicNetworkAccess'] as String,
      serviceEndpoint: map['serviceEndpoint'] as String,
      updatedTimestamp: map['updatedTimestamp'] as String,
    );
  }
}

