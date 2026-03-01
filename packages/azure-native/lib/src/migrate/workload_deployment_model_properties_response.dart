// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'apache_tomcat_aksworkload_deployment_model_custom_properties_response.dart';
import 'health_error_model_response.dart';
import 'workload_deployment_model_properties_response_current_job.dart';
import 'workload_instance_model_properties_response.dart';

/// Workload deployment model properties.
class WorkloadDeploymentModelPropertiesResponse {
  /// Gets or sets the allowed scenarios on the workload deployment.
  final List<String> allowedOperations;
  /// Gets or sets the workload deployment correlation Id.
  final String correlationId;
  final WorkloadDeploymentModelPropertiesResponseCurrentJob currentJob;
  /// Workload deployment model custom properties.
  final ApacheTomcatAKSWorkloadDeploymentModelCustomPropertiesResponse? customProperties;
  /// Gets or sets the display name.
  final String? displayName;
  /// Gets or sets the list of health errors.
  final List<HealthErrorModelResponse> healthErrors;
  /// Gets or sets the Last successful unplanned migrate time.
  final String lastSuccessfulMigrateTime;
  /// Gets or sets the Last successful test migrate time.
  final String lastSuccessfulTestMigrateTime;
  /// Gets or sets the migrate state.
  final String migrationStatus;
  /// Gets or sets the migrate state description.
  final String migrationStatusDescription;
  /// Gets or sets the provisioning state of the workload deployment.
  final String provisioningState;
  /// Gets or sets the workload deployment status.
  final String status;
  /// Gets or sets the workload deployment status description.
  final String statusDescription;
  /// Gets or sets the deployment target platform.
  final String? targetPlatform;
  /// Gets or sets the test migrate state.
  final String testMigrationStatus;
  /// Gets or sets the Test migrate state description.
  final String testMigrationStatusDescription;
  /// Workload instance model properties.
  final WorkloadInstanceModelPropertiesResponse? workloadInstanceProperties;

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
      'currentJob': currentJob.toMap(),
      'customProperties': ?customProperties == null ? null : customProperties!.toMap(),
      'displayName': ?displayName,
      'healthErrors': pulumi.Input.encodeList<HealthErrorModelResponse, Map<String, dynamic>>(healthErrors, (value) => value.toMap()),
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
      'workloadInstanceProperties': ?workloadInstanceProperties == null ? null : workloadInstanceProperties!.toMap(),
    };
  }

  factory WorkloadDeploymentModelPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return WorkloadDeploymentModelPropertiesResponse(
      allowedOperations: (map['allowedOperations'] as List).cast<String>(),
      correlationId: map['correlationId'] as String,
      currentJob: WorkloadDeploymentModelPropertiesResponseCurrentJob.fromMap((map['currentJob'] as Map).cast<String, dynamic>()),
      customProperties: map['customProperties'] == null ? null : ApacheTomcatAKSWorkloadDeploymentModelCustomPropertiesResponse.fromMap((map['customProperties'] as Map).cast<String, dynamic>()),
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      healthErrors: pulumi.Input.decodeList<HealthErrorModelResponse>(map['healthErrors'], (value) => HealthErrorModelResponse.fromMap((value as Map).cast<String, dynamic>())),
      lastSuccessfulMigrateTime: map['lastSuccessfulMigrateTime'] as String,
      lastSuccessfulTestMigrateTime: map['lastSuccessfulTestMigrateTime'] as String,
      migrationStatus: map['migrationStatus'] as String,
      migrationStatusDescription: map['migrationStatusDescription'] as String,
      provisioningState: map['provisioningState'] as String,
      status: map['status'] as String,
      statusDescription: map['statusDescription'] as String,
      targetPlatform: map['targetPlatform'] == null ? null : map['targetPlatform'] as String,
      testMigrationStatus: map['testMigrationStatus'] as String,
      testMigrationStatusDescription: map['testMigrationStatusDescription'] as String,
      workloadInstanceProperties: map['workloadInstanceProperties'] == null ? null : WorkloadInstanceModelPropertiesResponse.fromMap((map['workloadInstanceProperties'] as Map).cast<String, dynamic>()),
    );
  }
}

