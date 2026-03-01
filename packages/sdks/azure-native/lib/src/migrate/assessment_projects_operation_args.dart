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
    pulumi.Output<String>? assessmentSolutionId,
    pulumi.Output<String>? customerStorageAccountArmId,
    pulumi.Output<String>? customerWorkspaceId,
    pulumi.Output<String>? customerWorkspaceLocation,
    pulumi.Output<String>? location,
    pulumi.Output<String>? projectName,
    pulumi.Output<String>? projectStatus,
    pulumi.Output<String>? provisioningState,
    pulumi.Output<String>? publicNetworkAccess,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      assessmentSolutionId = pulumi.Input.asOptionalInput<String>(assessmentSolutionId),
      customerStorageAccountArmId = pulumi.Input.asOptionalInput<String>(customerStorageAccountArmId),
      customerWorkspaceId = pulumi.Input.asOptionalInput<String>(customerWorkspaceId),
      customerWorkspaceLocation = pulumi.Input.asOptionalInput<String>(customerWorkspaceLocation),
      location = pulumi.Input.asOptionalInput<String>(location),
      projectName = pulumi.Input.asOptionalInput<String>(projectName),
      projectStatus = pulumi.Input.asOptionalInput<String>(projectStatus),
      provisioningState = pulumi.Input.asOptionalInput<String>(provisioningState),
      publicNetworkAccess = pulumi.Input.asOptionalInput<String>(publicNetworkAccess),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      assessmentSolutionId: map['assessmentSolutionId'] == null ? null : pulumi.Output.create<String>(map['assessmentSolutionId'] as String),
      customerStorageAccountArmId: map['customerStorageAccountArmId'] == null ? null : pulumi.Output.create<String>(map['customerStorageAccountArmId'] as String),
      customerWorkspaceId: map['customerWorkspaceId'] == null ? null : pulumi.Output.create<String>(map['customerWorkspaceId'] as String),
      customerWorkspaceLocation: map['customerWorkspaceLocation'] == null ? null : pulumi.Output.create<String>(map['customerWorkspaceLocation'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      projectName: map['projectName'] == null ? null : pulumi.Output.create<String>(map['projectName'] as String),
      projectStatus: map['projectStatus'] == null ? null : pulumi.Output.create<String>(map['projectStatus'] as String),
      provisioningState: map['provisioningState'] == null ? null : pulumi.Output.create<String>(map['provisioningState'] as String),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : pulumi.Output.create<String>(map['publicNetworkAccess'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

