// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'apache_tomcat_aksworkload_deployment_model_custom_properties_response.dart';
import 'health_error_model_response.dart';
import 'workload_deployment_model_properties_response_current_job.dart';
import 'workload_instance_model_properties_response.dart';

/// Workload deployment model properties.
class WorkloadDeploymentModelPropertiesResponse {
  /// Gets or sets the allowed scenarios on the workload deployment.
  final pulumi.Input<List<String>> allowedOperations;
  /// Gets or sets the workload deployment correlation Id.
  final pulumi.Input<String> correlationId;
  final pulumi.Input<WorkloadDeploymentModelPropertiesResponseCurrentJob> currentJob;
  /// Workload deployment model custom properties.
  final pulumi.Input<ApacheTomcatAKSWorkloadDeploymentModelCustomPropertiesResponse>? customProperties;
  /// Gets or sets the display name.
  final pulumi.Input<String>? displayName;
  /// Gets or sets the list of health errors.
  final pulumi.Input<List<HealthErrorModelResponse>> healthErrors;
  /// Gets or sets the Last successful unplanned migrate time.
  final pulumi.Input<String> lastSuccessfulMigrateTime;
  /// Gets or sets the Last successful test migrate time.
  final pulumi.Input<String> lastSuccessfulTestMigrateTime;
  /// Gets or sets the migrate state.
  final pulumi.Input<String> migrationStatus;
  /// Gets or sets the migrate state description.
  final pulumi.Input<String> migrationStatusDescription;
  /// Gets or sets the provisioning state of the workload deployment.
  final pulumi.Input<String> provisioningState;
  /// Gets or sets the workload deployment status.
  final pulumi.Input<String> status;
  /// Gets or sets the workload deployment status description.
  final pulumi.Input<String> statusDescription;
  /// Gets or sets the deployment target platform.
  final pulumi.Input<String>? targetPlatform;
  /// Gets or sets the test migrate state.
  final pulumi.Input<String> testMigrationStatus;
  /// Gets or sets the Test migrate state description.
  final pulumi.Input<String> testMigrationStatusDescription;
  /// Workload instance model properties.
  final pulumi.Input<WorkloadInstanceModelPropertiesResponse>? workloadInstanceProperties;

  /// Creates a new [WorkloadDeploymentModelPropertiesResponse].
  /// [allowedOperations] Gets or sets the allowed scenarios on the workload deployment.
  /// [correlationId] Gets or sets the workload deployment correlation Id.
  /// [currentJob] Required.
  /// [customProperties] Workload deployment model custom properties.
  /// [displayName] Gets or sets the display name.
  /// [healthErrors] Gets or sets the list of health errors.
  /// [lastSuccessfulMigrateTime] Gets or sets the Last successful unplanned migrate time.
  /// [lastSuccessfulTestMigrateTime] Gets or sets the Last successful test migrate time.
  /// [migrationStatus] Gets or sets the migrate state.
  /// [migrationStatusDescription] Gets or sets the migrate state description.
  /// [provisioningState] Gets or sets the provisioning state of the workload deployment.
  /// [status] Gets or sets the workload deployment status.
  /// [statusDescription] Gets or sets the workload deployment status description.
  /// [targetPlatform] Gets or sets the deployment target platform.
  /// [testMigrationStatus] Gets or sets the test migrate state.
  /// [testMigrationStatusDescription] Gets or sets the Test migrate state description.
  /// [workloadInstanceProperties] Workload instance model properties.
  WorkloadDeploymentModelPropertiesResponse({
    required this.allowedOperations,
    required this.correlationId,
    required this.currentJob,
    this.customProperties,
    this.displayName,
    required this.healthErrors,
    required this.lastSuccessfulMigrateTime,
    required this.lastSuccessfulTestMigrateTime,
    required this.migrationStatus,
    required this.migrationStatusDescription,
    required this.provisioningState,
    required this.status,
    required this.statusDescription,
    this.targetPlatform,
    required this.testMigrationStatus,
    required this.testMigrationStatusDescription,
    this.workloadInstanceProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedOperations': allowedOperations,
      'correlationId': correlationId,
      'currentJob': pulumi.Input.mapInputValue<WorkloadDeploymentModelPropertiesResponseCurrentJob, Map<String, dynamic>>(currentJob, (value) => value.toMap()),
      'customProperties': ?pulumi.Input.mapOptionalInputValue<ApacheTomcatAKSWorkloadDeploymentModelCustomPropertiesResponse, Map<String, dynamic>>(customProperties, (value) => value.toMap()),
      'displayName': ?displayName,
      'healthErrors': pulumi.Input.mapInputValue<List<HealthErrorModelResponse>, List<Map<String, dynamic>>>(healthErrors, (value) => pulumi.Input.encodeList<HealthErrorModelResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'lastSuccessfulMigrateTime': lastSuccessfulMigrateTime,
      'lastSuccessfulTestMigrateTime': lastSuccessfulTestMigrateTime,
      'migrationStatus': migrationStatus,
      'migrationStatusDescription': migrationStatusDescription,
      'provisioningState': provisioningState,
      'status': status,
      'statusDescription': statusDescription,
      'targetPlatform': ?targetPlatform,
      'testMigrationStatus': testMigrationStatus,
      'testMigrationStatusDescription': testMigrationStatusDescription,
      'workloadInstanceProperties': ?pulumi.Input.mapOptionalInputValue<WorkloadInstanceModelPropertiesResponse, Map<String, dynamic>>(workloadInstanceProperties, (value) => value.toMap()),
    };
  }

  factory WorkloadDeploymentModelPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return WorkloadDeploymentModelPropertiesResponse(
      allowedOperations: ((map['allowedOperations'] as List).cast<String>()).input(),
      correlationId: (map['correlationId'] as String).input(),
      currentJob: (WorkloadDeploymentModelPropertiesResponseCurrentJob.fromMap((map['currentJob'] as Map).cast<String, dynamic>())).input(),
      customProperties: map['customProperties'] == null ? null : (ApacheTomcatAKSWorkloadDeploymentModelCustomPropertiesResponse.fromMap((map['customProperties'] as Map).cast<String, dynamic>())).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      healthErrors: (pulumi.Input.decodeList<HealthErrorModelResponse>(map['healthErrors'], (value) => HealthErrorModelResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      lastSuccessfulMigrateTime: (map['lastSuccessfulMigrateTime'] as String).input(),
      lastSuccessfulTestMigrateTime: (map['lastSuccessfulTestMigrateTime'] as String).input(),
      migrationStatus: (map['migrationStatus'] as String).input(),
      migrationStatusDescription: (map['migrationStatusDescription'] as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      status: (map['status'] as String).input(),
      statusDescription: (map['statusDescription'] as String).input(),
      targetPlatform: map['targetPlatform'] == null ? null : (map['targetPlatform'] as String).input(),
      testMigrationStatus: (map['testMigrationStatus'] as String).input(),
      testMigrationStatusDescription: (map['testMigrationStatusDescription'] as String).input(),
      workloadInstanceProperties: map['workloadInstanceProperties'] == null ? null : (WorkloadInstanceModelPropertiesResponse.fromMap((map['workloadInstanceProperties'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

