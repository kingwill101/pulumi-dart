// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of a project.
class ProjectProperties {
  /// Assessment solution ARM id tracked by Microsoft.Migrate/migrateProjects.
  final pulumi.Input<String>? assessmentSolutionId;
  /// The ARM id of the storage account used for interactions when public access is disabled.
  final pulumi.Input<String>? customerStorageAccountArmId;
  /// The ARM id of service map workspace created by customer.
  final pulumi.Input<String>? customerWorkspaceId;
  /// Location of service map workspace created by customer.
  final pulumi.Input<String>? customerWorkspaceLocation;
  /// Assessment project status.
  final pulumi.Input<String>? projectStatus;
  /// This value can be set to 'enabled' to avoid breaking changes on existing customer resources and templates. If set to 'disabled', traffic over public interface is not allowed, and private endpoint connections would be the exclusive access method.
  final pulumi.Input<String>? publicNetworkAccess;

  /// Creates a new [ProjectProperties].
  /// [assessmentSolutionId] Assessment solution ARM id tracked by Microsoft.Migrate/migrateProjects.
  /// [customerStorageAccountArmId] The ARM id of the storage account used for interactions when public access is disabled.
  /// [customerWorkspaceId] The ARM id of service map workspace created by customer.
  /// [customerWorkspaceLocation] Location of service map workspace created by customer.
  /// [projectStatus] Assessment project status.
  /// [publicNetworkAccess] This value can be set to 'enabled' to avoid breaking changes on existing customer resources and templates. If set to 'disabled', traffic over public interface is not allowed, and private endpoint connections would be the exclusive access method.
  ProjectProperties({
    this.assessmentSolutionId,
    this.customerStorageAccountArmId,
    this.customerWorkspaceId,
    this.customerWorkspaceLocation,
    this.projectStatus,
    this.publicNetworkAccess,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assessmentSolutionId': ?assessmentSolutionId,
      'customerStorageAccountArmId': ?customerStorageAccountArmId,
      'customerWorkspaceId': ?customerWorkspaceId,
      'customerWorkspaceLocation': ?customerWorkspaceLocation,
      'projectStatus': ?projectStatus,
      'publicNetworkAccess': ?publicNetworkAccess,
    };
  }

  factory ProjectProperties.fromMap(Map<String, dynamic> map) {
    return ProjectProperties(
      assessmentSolutionId: map['assessmentSolutionId'] == null ? null : (map['assessmentSolutionId']! as String).input(),
      customerStorageAccountArmId: map['customerStorageAccountArmId'] == null ? null : (map['customerStorageAccountArmId']! as String).input(),
      customerWorkspaceId: map['customerWorkspaceId'] == null ? null : (map['customerWorkspaceId']! as String).input(),
      customerWorkspaceLocation: map['customerWorkspaceLocation'] == null ? null : (map['customerWorkspaceLocation']! as String).input(),
      projectStatus: map['projectStatus'] == null ? null : (map['projectStatus']! as String).input(),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : (map['publicNetworkAccess']! as String).input(),
    );
  }
}

