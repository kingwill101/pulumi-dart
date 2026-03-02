// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_migrate_assessment_projects_operation_args_doc}
/// The set of arguments for AssessmentProjectsOperation.
/// {@endtemplate}
/// {@macro pulumi_migrate_assessment_projects_operation_args_doc}
class AssessmentProjectsOperationArgs {
  /// Assessment solution ARM id tracked by Microsoft.Migrate/migrateProjects.
  final pulumi.Input<String>? assessmentSolutionId;
  /// The ARM id of the storage account used for interactions when public access is
  /// disabled.
  final pulumi.Input<String>? customerStorageAccountArmId;
  /// The ARM id of service map workspace created by customer.
  final pulumi.Input<String>? customerWorkspaceId;
  /// Location of service map workspace created by customer.
  final pulumi.Input<String>? customerWorkspaceLocation;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Assessment Project Name
  final pulumi.Input<String>? projectName;
  /// Assessment project status.
  final pulumi.Input<String>? projectStatus;
  /// The status of the last operation.
  final pulumi.Input<String>? provisioningState;
  /// This value can be set to 'enabled' to avoid breaking changes on existing
  /// customer resources and templates. If set to 'disabled', traffic over public
  /// interface is not allowed, and private endpoint connections would be the
  /// exclusive access method.
  final pulumi.Input<String>? publicNetworkAccess;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AssessmentProjectsOperationArgs].
  /// [assessmentSolutionId] Assessment solution ARM id tracked by Microsoft.Migrate/migrateProjects.
  /// [customerStorageAccountArmId] The ARM id of the storage account used for interactions when public access is
  /// [customerWorkspaceId] The ARM id of service map workspace created by customer.
  /// [customerWorkspaceLocation] Location of service map workspace created by customer.
  /// [location] The geo-location where the resource lives
  /// [projectName] Assessment Project Name
  /// [projectStatus] Assessment project status.
  /// [provisioningState] The status of the last operation.
  /// [publicNetworkAccess] This value can be set to 'enabled' to avoid breaking changes on existing
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  AssessmentProjectsOperationArgs({
    this.assessmentSolutionId,
    this.customerStorageAccountArmId,
    this.customerWorkspaceId,
    this.customerWorkspaceLocation,
    this.location,
    this.projectName,
    this.projectStatus,
    this.provisioningState,
    this.publicNetworkAccess,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assessmentSolutionId': ?assessmentSolutionId,
      'customerStorageAccountArmId': ?customerStorageAccountArmId,
      'customerWorkspaceId': ?customerWorkspaceId,
      'customerWorkspaceLocation': ?customerWorkspaceLocation,
      'location': ?location,
      'projectName': ?projectName,
      'projectStatus': ?projectStatus,
      'provisioningState': ?provisioningState,
      'publicNetworkAccess': ?publicNetworkAccess,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory AssessmentProjectsOperationArgs.fromMap(Map<String, dynamic> map) {
    return AssessmentProjectsOperationArgs(
      assessmentSolutionId: map['assessmentSolutionId'] == null ? null : (map['assessmentSolutionId']! as String).input(),
      customerStorageAccountArmId: map['customerStorageAccountArmId'] == null ? null : (map['customerStorageAccountArmId']! as String).input(),
      customerWorkspaceId: map['customerWorkspaceId'] == null ? null : (map['customerWorkspaceId']! as String).input(),
      customerWorkspaceLocation: map['customerWorkspaceLocation'] == null ? null : (map['customerWorkspaceLocation']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      projectName: map['projectName'] == null ? null : (map['projectName']! as String).input(),
      projectStatus: map['projectStatus'] == null ? null : (map['projectStatus']! as String).input(),
      provisioningState: map['provisioningState'] == null ? null : (map['provisioningState']! as String).input(),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : (map['publicNetworkAccess']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

