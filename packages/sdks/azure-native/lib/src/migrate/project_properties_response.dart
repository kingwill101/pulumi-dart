// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_connection_response.dart';

/// Properties of a project.
class ProjectPropertiesResponse {
  /// Assessment solution ARM id tracked by Microsoft.Migrate/migrateProjects.
  final pulumi.Input<String>? assessmentSolutionId;

  /// Time when this project was created. Date-Time represented in ISO-8601 format.
  final pulumi.Input<String> createdTimestamp;

  /// The ARM id of the storage account used for interactions when public access is disabled.
  final pulumi.Input<String>? customerStorageAccountArmId;

  /// The ARM id of service map workspace created by customer.
  final pulumi.Input<String>? customerWorkspaceId;

  /// Location of service map workspace created by customer.
  final pulumi.Input<String>? customerWorkspaceLocation;

  /// Time when last assessment was created. Date-Time represented in ISO-8601 format. This value will be null until assessment is created.
  final pulumi.Input<String> lastAssessmentTimestamp;

  /// Number of assessments created in the project.
  final pulumi.Input<int> numberOfAssessments;

  /// Number of groups created in the project.
  final pulumi.Input<int> numberOfGroups;

  /// Number of machines in the project.
  final pulumi.Input<int> numberOfMachines;

  /// The list of private endpoint connections to the project.
  final pulumi.Input<List<PrivateEndpointConnectionResponse>>
  privateEndpointConnections;

  /// Assessment project status.
  final pulumi.Input<String>? projectStatus;

  /// Provisioning state of the project.
  final pulumi.Input<String> provisioningState;

  /// This value can be set to 'enabled' to avoid breaking changes on existing customer resources and templates. If set to 'disabled', traffic over public interface is not allowed, and private endpoint connections would be the exclusive access method.
  final pulumi.Input<String>? publicNetworkAccess;

  /// Endpoint at which the collector agent can call agent REST API.
  final pulumi.Input<String> serviceEndpoint;

  /// Time when this project was last updated. Date-Time represented in ISO-8601 format.
  final pulumi.Input<String> updatedTimestamp;

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
      'privateEndpointConnections':
          pulumi.Input.mapInputValue<
            List<PrivateEndpointConnectionResponse>,
            List<Map<String, dynamic>>
          >(
            privateEndpointConnections,
            (value) =>
                pulumi.Input.encodeList<
                  PrivateEndpointConnectionResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'projectStatus': ?projectStatus,
      'provisioningState': provisioningState,
      'publicNetworkAccess': ?publicNetworkAccess,
      'serviceEndpoint': serviceEndpoint,
      'updatedTimestamp': updatedTimestamp,
    };
  }

  factory ProjectPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ProjectPropertiesResponse(
      assessmentSolutionId: (() {
        final guardedValue = map['assessmentSolutionId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      createdTimestamp: pulumi.Input.fromValue(
        map['createdTimestamp'] as String,
      ),
      customerStorageAccountArmId: (() {
        final guardedValue = map['customerStorageAccountArmId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      customerWorkspaceId: (() {
        final guardedValue = map['customerWorkspaceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      customerWorkspaceLocation: (() {
        final guardedValue = map['customerWorkspaceLocation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      lastAssessmentTimestamp: pulumi.Input.fromValue(
        map['lastAssessmentTimestamp'] as String,
      ),
      numberOfAssessments: pulumi.Input.fromValue(
        map['numberOfAssessments'] as int,
      ),
      numberOfGroups: pulumi.Input.fromValue(map['numberOfGroups'] as int),
      numberOfMachines: pulumi.Input.fromValue(map['numberOfMachines'] as int),
      privateEndpointConnections: pulumi.Input.fromValue(
        pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(
          map['privateEndpointConnections']!,
          (value) => PrivateEndpointConnectionResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      projectStatus: (() {
        final guardedValue = map['projectStatus'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      provisioningState: pulumi.Input.fromValue(
        map['provisioningState'] as String,
      ),
      publicNetworkAccess: (() {
        final guardedValue = map['publicNetworkAccess'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serviceEndpoint: pulumi.Input.fromValue(map['serviceEndpoint'] as String),
      updatedTimestamp: pulumi.Input.fromValue(
        map['updatedTimestamp'] as String,
      ),
    );
  }
}
