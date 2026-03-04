// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'apache_tomcat_workload_instance_model_custom_properties_response.dart';
import 'health_error_model_response.dart';
import 'workload_instance_model_properties_response_current_job.dart';

/// Workload instance model properties.
class WorkloadInstanceModelPropertiesResponse {
  /// Gets or sets the allowed scenarios on the workload instance.
  final pulumi.Input<List<String>> allowedOperations;
  final pulumi.Input<WorkloadInstanceModelPropertiesResponseCurrentJob>
  currentJob;

  /// Workload instance model custom properties.
  final pulumi.Input<ApacheTomcatWorkloadInstanceModelCustomPropertiesResponse>?
  customProperties;

  /// Gets or sets the display name.
  final pulumi.Input<String>? displayName;

  /// Gets or sets the list of health errors.
  final pulumi.Input<List<HealthErrorModelResponse>> healthErrors;

  /// Gets or sets the Last successful replication cycle time.
  final pulumi.Input<String> lastSuccessfulReplicationCycleTime;

  /// Gets or Sets the master site name.
  final pulumi.Input<String>? masterSiteName;

  /// Gets or sets the migrate agent id associated with the workload instance.
  final pulumi.Input<String>? migrateAgentId;

  /// Gets or sets the workload instance name.
  final pulumi.Input<String>? name;

  /// Gets or sets the provisioning state of the workload instance.
  final pulumi.Input<String> provisioningState;

  /// Gets or sets the replication health of the workload instance.
  final pulumi.Input<String> replicationHealth;

  /// Gets or sets the replication state of the workload instance.
  final pulumi.Input<String> replicationStatus;

  /// Gets or sets the workload replication state description.
  final pulumi.Input<String> replicationStatusDescription;

  /// Gets or sets the source name.
  final pulumi.Input<String>? sourceName;

  /// Gets or sets the source platform.
  final pulumi.Input<String>? sourcePlatform;

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
      'currentJob':
          pulumi.Input.mapInputValue<
            WorkloadInstanceModelPropertiesResponseCurrentJob,
            Map<String, dynamic>
          >(currentJob, (value) => value.toMap()),
      'customProperties':
          ?pulumi.Input.mapOptionalInputValue<
            ApacheTomcatWorkloadInstanceModelCustomPropertiesResponse,
            Map<String, dynamic>
          >(customProperties, (value) => value.toMap()),
      'displayName': ?displayName,
      'healthErrors':
          pulumi.Input.mapInputValue<
            List<HealthErrorModelResponse>,
            List<Map<String, dynamic>>
          >(
            healthErrors,
            (value) =>
                pulumi.Input.encodeList<
                  HealthErrorModelResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
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

  factory WorkloadInstanceModelPropertiesResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return WorkloadInstanceModelPropertiesResponse(
      allowedOperations: pulumi.Input.fromValue(
        (map['allowedOperations'] as List).cast<String>(),
      ),
      currentJob: pulumi.Input.fromValue(
        WorkloadInstanceModelPropertiesResponseCurrentJob.fromMap(
          (map['currentJob']! as Map).cast<String, dynamic>(),
        ),
      ),
      customProperties: (() {
        final guardedValue = map['customProperties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ApacheTomcatWorkloadInstanceModelCustomPropertiesResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      healthErrors: pulumi.Input.fromValue(
        pulumi.Input.decodeList<HealthErrorModelResponse>(
          map['healthErrors']!,
          (value) => HealthErrorModelResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      lastSuccessfulReplicationCycleTime: pulumi.Input.fromValue(
        map['lastSuccessfulReplicationCycleTime'] as String,
      ),
      masterSiteName: (() {
        final guardedValue = map['masterSiteName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      migrateAgentId: (() {
        final guardedValue = map['migrateAgentId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      provisioningState: pulumi.Input.fromValue(
        map['provisioningState'] as String,
      ),
      replicationHealth: pulumi.Input.fromValue(
        map['replicationHealth'] as String,
      ),
      replicationStatus: pulumi.Input.fromValue(
        map['replicationStatus'] as String,
      ),
      replicationStatusDescription: pulumi.Input.fromValue(
        map['replicationStatusDescription'] as String,
      ),
      sourceName: (() {
        final guardedValue = map['sourceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourcePlatform: (() {
        final guardedValue = map['sourcePlatform'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
