// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'critical_job_history_details_response.dart';
import 'current_job_details_response.dart';
import 'health_error_response.dart';
import 'vmware_cbt_migration_details_response.dart';

/// Migration item properties.
class MigrationItemPropertiesResponse {
  /// The allowed operations on the migration item based on the current migration state of the item.
  final List<String> allowedOperations;
  /// The critical past job details.
  final List<CriticalJobHistoryDetailsResponse> criticalJobHistory;
  /// The current job details.
  final CurrentJobDetailsResponse currentJob;
  /// The correlation Id for events associated with this migration item.
  final String eventCorrelationId;
  /// The consolidated health.
  final String health;
  /// The list of health errors.
  final List<HealthErrorResponse> healthErrors;
  /// The status of the last migration.
  final String lastMigrationStatus;
  /// The last migration time.
  final String lastMigrationTime;
  /// The status of the last test migration.
  final String lastTestMigrationStatus;
  /// The last test migration time.
  final String lastTestMigrationTime;
  /// The on-premise virtual machine name.
  final String machineName;
  /// The migration status.
  final String migrationState;
  /// The migration state description.
  final String migrationStateDescription;
  /// The name of policy governing this item.
  final String policyFriendlyName;
  /// The ARM Id of policy governing this item.
  final String policyId;
  /// The migration provider custom settings.
  final VMwareCbtMigrationDetailsResponse? providerSpecificDetails;
  /// The recovery services provider ARM Id.
  final String recoveryServicesProviderId;
  /// The replication status.
  final String replicationStatus;
  /// The test migrate state.
  final String testMigrateState;
  /// The test migrate state description.
  final String testMigrateStateDescription;

  /// Creates a new [MigrationItemPropertiesResponse].
  /// [allowedOperations] The allowed operations on the migration item based on the current migration state of the item.
  /// [criticalJobHistory] The critical past job details.
  /// [currentJob] The current job details.
  /// [eventCorrelationId] The correlation Id for events associated with this migration item.
  /// [health] The consolidated health.
  /// [healthErrors] The list of health errors.
  /// [lastMigrationStatus] The status of the last migration.
  /// [lastMigrationTime] The last migration time.
  /// [lastTestMigrationStatus] The status of the last test migration.
  /// [lastTestMigrationTime] The last test migration time.
  /// [machineName] The on-premise virtual machine name.
  /// [migrationState] The migration status.
  /// [migrationStateDescription] The migration state description.
  /// [policyFriendlyName] The name of policy governing this item.
  /// [policyId] The ARM Id of policy governing this item.
  /// [providerSpecificDetails] The migration provider custom settings.
  /// [recoveryServicesProviderId] The recovery services provider ARM Id.
  /// [replicationStatus] The replication status.
  /// [testMigrateState] The test migrate state.
  /// [testMigrateStateDescription] The test migrate state description.
  MigrationItemPropertiesResponse({
    required this.allowedOperations,
    required this.criticalJobHistory,
    required this.currentJob,
    required this.eventCorrelationId,
    required this.health,
    required this.healthErrors,
    required this.lastMigrationStatus,
    required this.lastMigrationTime,
    required this.lastTestMigrationStatus,
    required this.lastTestMigrationTime,
    required this.machineName,
    required this.migrationState,
    required this.migrationStateDescription,
    required this.policyFriendlyName,
    required this.policyId,
    this.providerSpecificDetails,
    required this.recoveryServicesProviderId,
    required this.replicationStatus,
    required this.testMigrateState,
    required this.testMigrateStateDescription,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedOperations': allowedOperations,
      'criticalJobHistory': pulumi.Input.encodeList<CriticalJobHistoryDetailsResponse, Map<String, dynamic>>(criticalJobHistory, (value) => value.toMap()),
      'currentJob': currentJob.toMap(),
      'eventCorrelationId': eventCorrelationId,
      'health': health,
      'healthErrors': pulumi.Input.encodeList<HealthErrorResponse, Map<String, dynamic>>(healthErrors, (value) => value.toMap()),
      'lastMigrationStatus': lastMigrationStatus,
      'lastMigrationTime': lastMigrationTime,
      'lastTestMigrationStatus': lastTestMigrationStatus,
      'lastTestMigrationTime': lastTestMigrationTime,
      'machineName': machineName,
      'migrationState': migrationState,
      'migrationStateDescription': migrationStateDescription,
      'policyFriendlyName': policyFriendlyName,
      'policyId': policyId,
      'providerSpecificDetails': ?providerSpecificDetails == null ? null : providerSpecificDetails!.toMap(),
      'recoveryServicesProviderId': recoveryServicesProviderId,
      'replicationStatus': replicationStatus,
      'testMigrateState': testMigrateState,
      'testMigrateStateDescription': testMigrateStateDescription,
    };
  }

  factory MigrationItemPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return MigrationItemPropertiesResponse(
      allowedOperations: (map['allowedOperations'] as List).cast<String>(),
      criticalJobHistory: pulumi.Input.decodeList<CriticalJobHistoryDetailsResponse>(map['criticalJobHistory'], (value) => CriticalJobHistoryDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
      currentJob: CurrentJobDetailsResponse.fromMap((map['currentJob'] as Map).cast<String, dynamic>()),
      eventCorrelationId: map['eventCorrelationId'] as String,
      health: map['health'] as String,
      healthErrors: pulumi.Input.decodeList<HealthErrorResponse>(map['healthErrors'], (value) => HealthErrorResponse.fromMap((value as Map).cast<String, dynamic>())),
      lastMigrationStatus: map['lastMigrationStatus'] as String,
      lastMigrationTime: map['lastMigrationTime'] as String,
      lastTestMigrationStatus: map['lastTestMigrationStatus'] as String,
      lastTestMigrationTime: map['lastTestMigrationTime'] as String,
      machineName: map['machineName'] as String,
      migrationState: map['migrationState'] as String,
      migrationStateDescription: map['migrationStateDescription'] as String,
      policyFriendlyName: map['policyFriendlyName'] as String,
      policyId: map['policyId'] as String,
      providerSpecificDetails: map['providerSpecificDetails'] == null ? null : VMwareCbtMigrationDetailsResponse.fromMap((map['providerSpecificDetails'] as Map).cast<String, dynamic>()),
      recoveryServicesProviderId: map['recoveryServicesProviderId'] as String,
      replicationStatus: map['replicationStatus'] as String,
      testMigrateState: map['testMigrateState'] as String,
      testMigrateStateDescription: map['testMigrateStateDescription'] as String,
    );
  }
}

