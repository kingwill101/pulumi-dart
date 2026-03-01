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
  final List<String> allowedJobs;
  /// Gets or sets the protected item correlation Id.
  final String correlationId;
  final ProtectedItemModelPropertiesResponseCurrentJob currentJob;
  /// Protected item model custom properties.
  final HyperVToAzStackHCIProtectedItemModelCustomPropertiesResponse customProperties;
  /// Gets or sets the DRA Id.
  final String draId;
  /// Gets or sets the fabric Id.
  final String fabricId;
  /// Gets or sets the fabric object Id.
  final String fabricObjectId;
  /// Gets or sets the fabric object name.
  final String fabricObjectName;
  /// Gets or sets the list of health errors.
  final List<HealthErrorModelResponse> healthErrors;
  final ProtectedItemModelPropertiesResponseLastFailedEnableProtectionJob lastFailedEnableProtectionJob;
  final ProtectedItemModelPropertiesResponseLastFailedPlannedFailoverJob lastFailedPlannedFailoverJob;
  /// Gets or sets the Last successful planned failover time.
  final String lastSuccessfulPlannedFailoverTime;
  /// Gets or sets the Last successful test failover time.
  final String lastSuccessfulTestFailoverTime;
  /// Gets or sets the Last successful unplanned failover time.
  final String lastSuccessfulUnplannedFailoverTime;
  final ProtectedItemModelPropertiesResponseLastTestFailoverJob lastTestFailoverJob;
  /// Gets or sets the policy name.
  final String policyName;
  /// Gets or sets the protection state.
  final String protectionState;
  /// Gets or sets the protection state description.
  final String protectionStateDescription;
  /// Gets or sets the provisioning state of the Dra.
  final String provisioningState;
  /// Gets or sets the replication extension name.
  final String replicationExtensionName;
  /// Gets or sets protected item replication health.
  final String replicationHealth;
  /// Gets or sets a value indicating whether resynchronization is required or not.
  final bool resyncRequired;
  /// Gets or sets the resynchronization state.
  final String resynchronizationState;
  /// Gets or sets the source fabric provider Id.
  final String sourceFabricProviderId;
  /// Gets or sets the target DRA Id.
  final String targetDraId;
  /// Gets or sets the target fabric Id.
  final String targetFabricId;
  /// Gets or sets the target fabric provider Id.
  final String targetFabricProviderId;
  /// Gets or sets the test failover state.
  final String testFailoverState;
  /// Gets or sets the Test failover state description.
  final String testFailoverStateDescription;

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
      'currentJob': currentJob.toMap(),
      'customProperties': customProperties.toMap(),
      'draId': draId,
      'fabricId': fabricId,
      'fabricObjectId': fabricObjectId,
      'fabricObjectName': fabricObjectName,
      'healthErrors': pulumi.Input.encodeList<HealthErrorModelResponse, Map<String, dynamic>>(healthErrors, (value) => value.toMap()),
      'lastFailedEnableProtectionJob': lastFailedEnableProtectionJob.toMap(),
      'lastFailedPlannedFailoverJob': lastFailedPlannedFailoverJob.toMap(),
      'lastSuccessfulPlannedFailoverTime': lastSuccessfulPlannedFailoverTime,
      'lastSuccessfulTestFailoverTime': lastSuccessfulTestFailoverTime,
      'lastSuccessfulUnplannedFailoverTime': lastSuccessfulUnplannedFailoverTime,
      'lastTestFailoverJob': lastTestFailoverJob.toMap(),
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
      allowedJobs: (map['allowedJobs'] as List).cast<String>(),
      correlationId: map['correlationId'] as String,
      currentJob: ProtectedItemModelPropertiesResponseCurrentJob.fromMap((map['currentJob'] as Map).cast<String, dynamic>()),
      customProperties: HyperVToAzStackHCIProtectedItemModelCustomPropertiesResponse.fromMap((map['customProperties'] as Map).cast<String, dynamic>()),
      draId: map['draId'] as String,
      fabricId: map['fabricId'] as String,
      fabricObjectId: map['fabricObjectId'] as String,
      fabricObjectName: map['fabricObjectName'] as String,
      healthErrors: pulumi.Input.decodeList<HealthErrorModelResponse>(map['healthErrors'], (value) => HealthErrorModelResponse.fromMap((value as Map).cast<String, dynamic>())),
      lastFailedEnableProtectionJob: ProtectedItemModelPropertiesResponseLastFailedEnableProtectionJob.fromMap((map['lastFailedEnableProtectionJob'] as Map).cast<String, dynamic>()),
      lastFailedPlannedFailoverJob: ProtectedItemModelPropertiesResponseLastFailedPlannedFailoverJob.fromMap((map['lastFailedPlannedFailoverJob'] as Map).cast<String, dynamic>()),
      lastSuccessfulPlannedFailoverTime: map['lastSuccessfulPlannedFailoverTime'] as String,
      lastSuccessfulTestFailoverTime: map['lastSuccessfulTestFailoverTime'] as String,
      lastSuccessfulUnplannedFailoverTime: map['lastSuccessfulUnplannedFailoverTime'] as String,
      lastTestFailoverJob: ProtectedItemModelPropertiesResponseLastTestFailoverJob.fromMap((map['lastTestFailoverJob'] as Map).cast<String, dynamic>()),
      policyName: map['policyName'] as String,
      protectionState: map['protectionState'] as String,
      protectionStateDescription: map['protectionStateDescription'] as String,
      provisioningState: map['provisioningState'] as String,
      replicationExtensionName: map['replicationExtensionName'] as String,
      replicationHealth: map['replicationHealth'] as String,
      resyncRequired: map['resyncRequired'] as bool,
      resynchronizationState: map['resynchronizationState'] as String,
      sourceFabricProviderId: map['sourceFabricProviderId'] as String,
      targetDraId: map['targetDraId'] as String,
      targetFabricId: map['targetFabricId'] as String,
      targetFabricProviderId: map['targetFabricProviderId'] as String,
      testFailoverState: map['testFailoverState'] as String,
      testFailoverStateDescription: map['testFailoverStateDescription'] as String,
    );
  }
}

