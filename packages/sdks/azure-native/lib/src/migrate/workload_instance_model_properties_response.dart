// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'apache_tomcat_workload_instance_model_custom_properties_response.dart';
import 'health_error_model_response.dart';
import 'workload_instance_model_properties_response_current_job.dart';

/// Workload instance model properties.
class WorkloadInstanceModelPropertiesResponse {
  /// Gets or sets the allowed scenarios on the workload instance.
  final List<String> allowedOperations;
  final WorkloadInstanceModelPropertiesResponseCurrentJob currentJob;
  /// Workload instance model custom properties.
  final ApacheTomcatWorkloadInstanceModelCustomPropertiesResponse? customProperties;
  /// Gets or sets the display name.
  final String? displayName;
  /// Gets or sets the list of health errors.
  final List<HealthErrorModelResponse> healthErrors;
  /// Gets or sets the Last successful replication cycle time.
  final String lastSuccessfulReplicationCycleTime;
  /// Gets or Sets the master site name.
  final String? masterSiteName;
  /// Gets or sets the migrate agent id associated with the workload instance.
  final String? migrateAgentId;
  /// Gets or sets the workload instance name.
  final String? name;
  /// Gets or sets the provisioning state of the workload instance.
  final String provisioningState;
  /// Gets or sets the replication health of the workload instance.
  final String replicationHealth;
  /// Gets or sets the replication state of the workload instance.
  final String replicationStatus;
  /// Gets or sets the workload replication state description.
  final String replicationStatusDescription;
  /// Gets or sets the source name.
  final String? sourceName;
  /// Gets or sets the source platform.
  final String? sourcePlatform;

  /// Creates a new [WorkloadInstanceModelPropertiesResponse].
  /// [allowedOperations] Gets or sets the allowed scenarios on the workload instance.
  /// [currentJob] Required.
  /// [customProperties] Workload instance model custom properties.
  /// [displayName] Gets or sets the display name.
  /// [healthErrors] Gets or sets the list of health errors.
  /// [lastSuccessfulReplicationCycleTime] Gets or sets the Last successful replication cycle time.
  /// [masterSiteName] Gets or Sets the master site name.
  /// [migrateAgentId] Gets or sets the migrate agent id associated with the workload instance.
  /// [name] Gets or sets the workload instance name.
  /// [provisioningState] Gets or sets the provisioning state of the workload instance.
  /// [replicationHealth] Gets or sets the replication health of the workload instance.
  /// [replicationStatus] Gets or sets the replication state of the workload instance.
  /// [replicationStatusDescription] Gets or sets the workload replication state description.
  /// [sourceName] Gets or sets the source name.
  /// [sourcePlatform] Gets or sets the source platform.
  WorkloadInstanceModelPropertiesResponse({
    required this.allowedOperations,
    required this.currentJob,
    this.customProperties,
    this.displayName,
    required this.healthErrors,
    required this.lastSuccessfulReplicationCycleTime,
    this.masterSiteName,
    this.migrateAgentId,
    this.name,
    required this.provisioningState,
    required this.replicationHealth,
    required this.replicationStatus,
    required this.replicationStatusDescription,
    this.sourceName,
    this.sourcePlatform,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedOperations': allowedOperations,
      'currentJob': currentJob.toMap(),
      'customProperties': ?customProperties == null ? null : customProperties!.toMap(),
      'displayName': ?displayName,
      'healthErrors': pulumi.Input.encodeList<HealthErrorModelResponse, Map<String, dynamic>>(healthErrors, (value) => value.toMap()),
      'lastSuccessfulReplicationCycleTime': lastSuccessfulReplicationCycleTime,
      'masterSiteName': ?masterSiteName,
      'migrateAgentId': ?migrateAgentId,
      'name': ?name,
      'provisioningState': provisioningState,
      'replicationHealth': replicationHealth,
      'replicationStatus': replicationStatus,
      'replicationStatusDescription': replicationStatusDescription,
      'sourceName': ?sourceName,
      'sourcePlatform': ?sourcePlatform,
    };
  }

  factory WorkloadInstanceModelPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return WorkloadInstanceModelPropertiesResponse(
      allowedOperations: (map['allowedOperations'] as List).cast<String>(),
      currentJob: WorkloadInstanceModelPropertiesResponseCurrentJob.fromMap((map['currentJob'] as Map).cast<String, dynamic>()),
      customProperties: map['customProperties'] == null ? null : ApacheTomcatWorkloadInstanceModelCustomPropertiesResponse.fromMap((map['customProperties'] as Map).cast<String, dynamic>()),
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      healthErrors: pulumi.Input.decodeList<HealthErrorModelResponse>(map['healthErrors'], (value) => HealthErrorModelResponse.fromMap((value as Map).cast<String, dynamic>())),
      lastSuccessfulReplicationCycleTime: map['lastSuccessfulReplicationCycleTime'] as String,
      masterSiteName: map['masterSiteName'] == null ? null : map['masterSiteName'] as String,
      migrateAgentId: map['migrateAgentId'] == null ? null : map['migrateAgentId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      replicationHealth: map['replicationHealth'] as String,
      replicationStatus: map['replicationStatus'] as String,
      replicationStatusDescription: map['replicationStatusDescription'] as String,
      sourceName: map['sourceName'] == null ? null : map['sourceName'] as String,
      sourcePlatform: map['sourcePlatform'] == null ? null : map['sourcePlatform'] as String,
    );
  }
}

