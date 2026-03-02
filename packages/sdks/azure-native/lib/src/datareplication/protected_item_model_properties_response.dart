// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'health_error_model_response.dart';
import 'hyper_vto_az_stack_hciprotected_item_model_custom_properties_response.dart';
import 'protected_item_model_properties_response_current_job.dart';
import 'protected_item_model_properties_response_last_failed_enable_protection_job.dart';
import 'protected_item_model_properties_response_last_failed_planned_failover_job.dart';
import 'protected_item_model_properties_response_last_test_failover_job.dart';

/// Protected item model properties.
class ProtectedItemModelPropertiesResponse {
  /// Gets or sets the allowed scenarios on the protected item.
  final pulumi.Input<List<String>> allowedJobs;
  /// Gets or sets the protected item correlation Id.
  final pulumi.Input<String> correlationId;
  final pulumi.Input<ProtectedItemModelPropertiesResponseCurrentJob> currentJob;
  /// Protected item model custom properties.
  final pulumi.Input<HyperVToAzStackHCIProtectedItemModelCustomPropertiesResponse> customProperties;
  /// Gets or sets the DRA Id.
  final pulumi.Input<String> draId;
  /// Gets or sets the fabric Id.
  final pulumi.Input<String> fabricId;
  /// Gets or sets the fabric object Id.
  final pulumi.Input<String> fabricObjectId;
  /// Gets or sets the fabric object name.
  final pulumi.Input<String> fabricObjectName;
  /// Gets or sets the list of health errors.
  final pulumi.Input<List<HealthErrorModelResponse>> healthErrors;
  final pulumi.Input<ProtectedItemModelPropertiesResponseLastFailedEnableProtectionJob> lastFailedEnableProtectionJob;
  final pulumi.Input<ProtectedItemModelPropertiesResponseLastFailedPlannedFailoverJob> lastFailedPlannedFailoverJob;
  /// Gets or sets the Last successful planned failover time.
  final pulumi.Input<String> lastSuccessfulPlannedFailoverTime;
  /// Gets or sets the Last successful test failover time.
  final pulumi.Input<String> lastSuccessfulTestFailoverTime;
  /// Gets or sets the Last successful unplanned failover time.
  final pulumi.Input<String> lastSuccessfulUnplannedFailoverTime;
  final pulumi.Input<ProtectedItemModelPropertiesResponseLastTestFailoverJob> lastTestFailoverJob;
  /// Gets or sets the policy name.
  final pulumi.Input<String> policyName;
  /// Gets or sets the protection state.
  final pulumi.Input<String> protectionState;
  /// Gets or sets the protection state description.
  final pulumi.Input<String> protectionStateDescription;
  /// Gets or sets the provisioning state of the Dra.
  final pulumi.Input<String> provisioningState;
  /// Gets or sets the replication extension name.
  final pulumi.Input<String> replicationExtensionName;
  /// Gets or sets protected item replication health.
  final pulumi.Input<String> replicationHealth;
  /// Gets or sets a value indicating whether resynchronization is required or not.
  final pulumi.Input<bool> resyncRequired;
  /// Gets or sets the resynchronization state.
  final pulumi.Input<String> resynchronizationState;
  /// Gets or sets the source fabric provider Id.
  final pulumi.Input<String> sourceFabricProviderId;
  /// Gets or sets the target DRA Id.
  final pulumi.Input<String> targetDraId;
  /// Gets or sets the target fabric Id.
  final pulumi.Input<String> targetFabricId;
  /// Gets or sets the target fabric provider Id.
  final pulumi.Input<String> targetFabricProviderId;
  /// Gets or sets the test failover state.
  final pulumi.Input<String> testFailoverState;
  /// Gets or sets the Test failover state description.
  final pulumi.Input<String> testFailoverStateDescription;

  /// Creates a new [ProtectedItemModelPropertiesResponse].
  /// [allowedJobs] Gets or sets the allowed scenarios on the protected item.
  /// [correlationId] Gets or sets the protected item correlation Id.
  /// [currentJob] Required.
  /// [customProperties] Protected item model custom properties.
  /// [draId] Gets or sets the DRA Id.
  /// [fabricId] Gets or sets the fabric Id.
  /// [fabricObjectId] Gets or sets the fabric object Id.
  /// [fabricObjectName] Gets or sets the fabric object name.
  /// [healthErrors] Gets or sets the list of health errors.
  /// [lastFailedEnableProtectionJob] Required.
  /// [lastFailedPlannedFailoverJob] Required.
  /// [lastSuccessfulPlannedFailoverTime] Gets or sets the Last successful planned failover time.
  /// [lastSuccessfulTestFailoverTime] Gets or sets the Last successful test failover time.
  /// [lastSuccessfulUnplannedFailoverTime] Gets or sets the Last successful unplanned failover time.
  /// [lastTestFailoverJob] Required.
  /// [policyName] Gets or sets the policy name.
  /// [protectionState] Gets or sets the protection state.
  /// [protectionStateDescription] Gets or sets the protection state description.
  /// [provisioningState] Gets or sets the provisioning state of the Dra.
  /// [replicationExtensionName] Gets or sets the replication extension name.
  /// [replicationHealth] Gets or sets protected item replication health.
  /// [resyncRequired] Gets or sets a value indicating whether resynchronization is required or not.
  /// [resynchronizationState] Gets or sets the resynchronization state.
  /// [sourceFabricProviderId] Gets or sets the source fabric provider Id.
  /// [targetDraId] Gets or sets the target DRA Id.
  /// [targetFabricId] Gets or sets the target fabric Id.
  /// [targetFabricProviderId] Gets or sets the target fabric provider Id.
  /// [testFailoverState] Gets or sets the test failover state.
  /// [testFailoverStateDescription] Gets or sets the Test failover state description.
  ProtectedItemModelPropertiesResponse({
    required this.allowedJobs,
    required this.correlationId,
    required this.currentJob,
    required this.customProperties,
    required this.draId,
    required this.fabricId,
    required this.fabricObjectId,
    required this.fabricObjectName,
    required this.healthErrors,
    required this.lastFailedEnableProtectionJob,
    required this.lastFailedPlannedFailoverJob,
    required this.lastSuccessfulPlannedFailoverTime,
    required this.lastSuccessfulTestFailoverTime,
    required this.lastSuccessfulUnplannedFailoverTime,
    required this.lastTestFailoverJob,
    required this.policyName,
    required this.protectionState,
    required this.protectionStateDescription,
    required this.provisioningState,
    required this.replicationExtensionName,
    required this.replicationHealth,
    required this.resyncRequired,
    required this.resynchronizationState,
    required this.sourceFabricProviderId,
    required this.targetDraId,
    required this.targetFabricId,
    required this.targetFabricProviderId,
    required this.testFailoverState,
    required this.testFailoverStateDescription,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedJobs': allowedJobs,
      'correlationId': correlationId,
      'currentJob': pulumi.Input.mapInputValue<ProtectedItemModelPropertiesResponseCurrentJob, Map<String, dynamic>>(currentJob, (value) => value.toMap()),
      'customProperties': pulumi.Input.mapInputValue<HyperVToAzStackHCIProtectedItemModelCustomPropertiesResponse, Map<String, dynamic>>(customProperties, (value) => value.toMap()),
      'draId': draId,
      'fabricId': fabricId,
      'fabricObjectId': fabricObjectId,
      'fabricObjectName': fabricObjectName,
      'healthErrors': pulumi.Input.mapInputValue<List<HealthErrorModelResponse>, List<Map<String, dynamic>>>(healthErrors, (value) => pulumi.Input.encodeList<HealthErrorModelResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'lastFailedEnableProtectionJob': pulumi.Input.mapInputValue<ProtectedItemModelPropertiesResponseLastFailedEnableProtectionJob, Map<String, dynamic>>(lastFailedEnableProtectionJob, (value) => value.toMap()),
      'lastFailedPlannedFailoverJob': pulumi.Input.mapInputValue<ProtectedItemModelPropertiesResponseLastFailedPlannedFailoverJob, Map<String, dynamic>>(lastFailedPlannedFailoverJob, (value) => value.toMap()),
      'lastSuccessfulPlannedFailoverTime': lastSuccessfulPlannedFailoverTime,
      'lastSuccessfulTestFailoverTime': lastSuccessfulTestFailoverTime,
      'lastSuccessfulUnplannedFailoverTime': lastSuccessfulUnplannedFailoverTime,
      'lastTestFailoverJob': pulumi.Input.mapInputValue<ProtectedItemModelPropertiesResponseLastTestFailoverJob, Map<String, dynamic>>(lastTestFailoverJob, (value) => value.toMap()),
      'policyName': policyName,
      'protectionState': protectionState,
      'protectionStateDescription': protectionStateDescription,
      'provisioningState': provisioningState,
      'replicationExtensionName': replicationExtensionName,
      'replicationHealth': replicationHealth,
      'resyncRequired': resyncRequired,
      'resynchronizationState': resynchronizationState,
      'sourceFabricProviderId': sourceFabricProviderId,
      'targetDraId': targetDraId,
      'targetFabricId': targetFabricId,
      'targetFabricProviderId': targetFabricProviderId,
      'testFailoverState': testFailoverState,
      'testFailoverStateDescription': testFailoverStateDescription,
    };
  }

  factory ProtectedItemModelPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ProtectedItemModelPropertiesResponse(
      allowedJobs: ((map['allowedJobs'] as List).cast<String>()).input(),
      correlationId: (map['correlationId'] as String).input(),
      currentJob: (ProtectedItemModelPropertiesResponseCurrentJob.fromMap((map['currentJob'] as Map).cast<String, dynamic>())).input(),
      customProperties: (HyperVToAzStackHCIProtectedItemModelCustomPropertiesResponse.fromMap((map['customProperties'] as Map).cast<String, dynamic>())).input(),
      draId: (map['draId'] as String).input(),
      fabricId: (map['fabricId'] as String).input(),
      fabricObjectId: (map['fabricObjectId'] as String).input(),
      fabricObjectName: (map['fabricObjectName'] as String).input(),
      healthErrors: (pulumi.Input.decodeList<HealthErrorModelResponse>(map['healthErrors'], (value) => HealthErrorModelResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      lastFailedEnableProtectionJob: (ProtectedItemModelPropertiesResponseLastFailedEnableProtectionJob.fromMap((map['lastFailedEnableProtectionJob'] as Map).cast<String, dynamic>())).input(),
      lastFailedPlannedFailoverJob: (ProtectedItemModelPropertiesResponseLastFailedPlannedFailoverJob.fromMap((map['lastFailedPlannedFailoverJob'] as Map).cast<String, dynamic>())).input(),
      lastSuccessfulPlannedFailoverTime: (map['lastSuccessfulPlannedFailoverTime'] as String).input(),
      lastSuccessfulTestFailoverTime: (map['lastSuccessfulTestFailoverTime'] as String).input(),
      lastSuccessfulUnplannedFailoverTime: (map['lastSuccessfulUnplannedFailoverTime'] as String).input(),
      lastTestFailoverJob: (ProtectedItemModelPropertiesResponseLastTestFailoverJob.fromMap((map['lastTestFailoverJob'] as Map).cast<String, dynamic>())).input(),
      policyName: (map['policyName'] as String).input(),
      protectionState: (map['protectionState'] as String).input(),
      protectionStateDescription: (map['protectionStateDescription'] as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      replicationExtensionName: (map['replicationExtensionName'] as String).input(),
      replicationHealth: (map['replicationHealth'] as String).input(),
      resyncRequired: (map['resyncRequired'] as bool).input(),
      resynchronizationState: (map['resynchronizationState'] as String).input(),
      sourceFabricProviderId: (map['sourceFabricProviderId'] as String).input(),
      targetDraId: (map['targetDraId'] as String).input(),
      targetFabricId: (map['targetFabricId'] as String).input(),
      targetFabricProviderId: (map['targetFabricProviderId'] as String).input(),
      testFailoverState: (map['testFailoverState'] as String).input(),
      testFailoverStateDescription: (map['testFailoverStateDescription'] as String).input(),
    );
  }
}

