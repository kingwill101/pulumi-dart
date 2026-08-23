// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'asset_properties_of_drill_response.dart';
import 'attention_reason_response.dart';
import 'chaos_experiment_properties_of_drill_response.dart';
import 'chaos_resource_properties_of_drill_response.dart';
import 'error_detail_response.dart';
import 'health_model_properties_of_drill_response.dart';
import 'last_run_properties_response.dart';
import 'managed_on_behalf_of_configuration_response.dart';
import 'metrics_properties_of_drill_response.dart';
import 'monitoring_properties_of_drill_response.dart';
import 'recovery_plan_properties_of_drill_response.dart';
import 'system_metadata_response.dart';

/// Definition of Regional Drill properties.
class RegionalDrillPropertiesResponse {
  /// Attention reason if the ReadinessState is 'NeedsAttention'.
  final pulumi.Input<AttentionReasonResponse> attentionReason;
  /// Chaos Experiment properties.
  final pulumi.Input<ChaosExperimentPropertiesOfDrillResponse>? chaosExperimentProperties;
  /// Chaos Resource properties.
  final pulumi.Input<ChaosResourcePropertiesOfDrillResponse>? chaosResourceProperties;
  /// Properties for internal resources that are created for the Drill.
  final pulumi.Input<AssetPropertiesOfDrillResponse>? drillAssetProperties;
  /// Enum for Drill type object hierarchy.
  /// Expected value is 'Regional'.
  final pulumi.Input<String>? drillType;
  /// Error details associated with the resource.
  final pulumi.Input<ErrorDetailResponse> errorDetails;
  /// Readiness state of the Drill.
  final pulumi.Input<String> executionReadinessState;
  /// Execution state of the Drill. Whether it is currently running or not.
  final pulumi.Input<String> executionState;
  /// HealthModel properties.
  final pulumi.Input<HealthModelPropertiesOfDrillResponse>? healthModelProperties;
  /// Last resync and readiness check time.
  final pulumi.Input<String> lastResyncReadinessCheckTime;
  /// Last run properties.
  final pulumi.Input<LastRunPropertiesResponse> lastRunProperties;
  /// Last sync time.
  final pulumi.Input<String> lastSyncTime;
  /// Managed RG v2 properties.
  final pulumi.Input<ManagedOnBehalfOfConfigurationResponse> managedOnBehalfOfConfiguration;
  /// Metric properties.
  final pulumi.Input<MetricsPropertiesOfDrillResponse>? metricsProperties;
  /// Monitoring properties of the Drill.
  final pulumi.Input<MonitoringPropertiesOfDrillResponse>? monitoringProperties;
  /// Status of the last operation.
  final pulumi.Input<String> provisioningState;
  /// RBAC setup mode.
  final pulumi.Input<String>? rbacSetupMode;
  /// ROPlan properties.
  final pulumi.Input<RecoveryPlanPropertiesOfDrillResponse>? recoveryPlanProperties;
  /// Parent SG resource.
  final pulumi.Input<String> serviceGroupId;
  /// Internal System Metadata, to be used by internal components only.
  final pulumi.Input<SystemMetadataResponse> systemMetadata;

  /// Creates a new [RegionalDrillPropertiesResponse].
  /// [attentionReason] Attention reason if the ReadinessState is 'NeedsAttention'.
  /// [chaosExperimentProperties] Chaos Experiment properties.
  /// [chaosResourceProperties] Chaos Resource properties.
  /// [drillAssetProperties] Properties for internal resources that are created for the Drill.
  /// [drillType] Enum for Drill type object hierarchy.
  /// [errorDetails] Error details associated with the resource.
  /// [executionReadinessState] Readiness state of the Drill.
  /// [executionState] Execution state of the Drill. Whether it is currently running or not.
  /// [healthModelProperties] HealthModel properties.
  /// [lastResyncReadinessCheckTime] Last resync and readiness check time.
  /// [lastRunProperties] Last run properties.
  /// [lastSyncTime] Last sync time.
  /// [managedOnBehalfOfConfiguration] Managed RG v2 properties.
  /// [metricsProperties] Metric properties.
  /// [monitoringProperties] Monitoring properties of the Drill.
  /// [provisioningState] Status of the last operation.
  /// [rbacSetupMode] RBAC setup mode.
  /// [recoveryPlanProperties] ROPlan properties.
  /// [serviceGroupId] Parent SG resource.
  /// [systemMetadata] Internal System Metadata, to be used by internal components only.
  const RegionalDrillPropertiesResponse({
    required this.attentionReason,
    this.chaosExperimentProperties,
    this.chaosResourceProperties,
    this.drillAssetProperties,
    this.drillType,
    required this.errorDetails,
    required this.executionReadinessState,
    required this.executionState,
    this.healthModelProperties,
    required this.lastResyncReadinessCheckTime,
    required this.lastRunProperties,
    required this.lastSyncTime,
    required this.managedOnBehalfOfConfiguration,
    this.metricsProperties,
    this.monitoringProperties,
    required this.provisioningState,
    this.rbacSetupMode,
    this.recoveryPlanProperties,
    required this.serviceGroupId,
    required this.systemMetadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attentionReason': pulumi.Input.mapInputValue<AttentionReasonResponse, Map<String, dynamic>>(attentionReason, (value) => value.toMap()),
      'chaosExperimentProperties': ?pulumi.Input.mapOptionalInputValue<ChaosExperimentPropertiesOfDrillResponse, Map<String, dynamic>>(chaosExperimentProperties, (value) => value.toMap()),
      'chaosResourceProperties': ?pulumi.Input.mapOptionalInputValue<ChaosResourcePropertiesOfDrillResponse, Map<String, dynamic>>(chaosResourceProperties, (value) => value.toMap()),
      'drillAssetProperties': ?pulumi.Input.mapOptionalInputValue<AssetPropertiesOfDrillResponse, Map<String, dynamic>>(drillAssetProperties, (value) => value.toMap()),
      'drillType': ?drillType,
      'errorDetails': pulumi.Input.mapInputValue<ErrorDetailResponse, Map<String, dynamic>>(errorDetails, (value) => value.toMap()),
      'executionReadinessState': executionReadinessState,
      'executionState': executionState,
      'healthModelProperties': ?pulumi.Input.mapOptionalInputValue<HealthModelPropertiesOfDrillResponse, Map<String, dynamic>>(healthModelProperties, (value) => value.toMap()),
      'lastResyncReadinessCheckTime': lastResyncReadinessCheckTime,
      'lastRunProperties': pulumi.Input.mapInputValue<LastRunPropertiesResponse, Map<String, dynamic>>(lastRunProperties, (value) => value.toMap()),
      'lastSyncTime': lastSyncTime,
      'managedOnBehalfOfConfiguration': pulumi.Input.mapInputValue<ManagedOnBehalfOfConfigurationResponse, Map<String, dynamic>>(managedOnBehalfOfConfiguration, (value) => value.toMap()),
      'metricsProperties': ?pulumi.Input.mapOptionalInputValue<MetricsPropertiesOfDrillResponse, Map<String, dynamic>>(metricsProperties, (value) => value.toMap()),
      'monitoringProperties': ?pulumi.Input.mapOptionalInputValue<MonitoringPropertiesOfDrillResponse, Map<String, dynamic>>(monitoringProperties, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'rbacSetupMode': ?rbacSetupMode,
      'recoveryPlanProperties': ?pulumi.Input.mapOptionalInputValue<RecoveryPlanPropertiesOfDrillResponse, Map<String, dynamic>>(recoveryPlanProperties, (value) => value.toMap()),
      'serviceGroupId': serviceGroupId,
      'systemMetadata': pulumi.Input.mapInputValue<SystemMetadataResponse, Map<String, dynamic>>(systemMetadata, (value) => value.toMap()),
    };
  }

  factory RegionalDrillPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return RegionalDrillPropertiesResponse(
      attentionReason: pulumi.Input.fromValue(AttentionReasonResponse.fromMap((map['attentionReason']! as Map).cast<String, dynamic>())),
      chaosExperimentProperties: (() { final guardedValue = map['chaosExperimentProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChaosExperimentPropertiesOfDrillResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      chaosResourceProperties: (() { final guardedValue = map['chaosResourceProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChaosResourcePropertiesOfDrillResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      drillAssetProperties: (() { final guardedValue = map['drillAssetProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AssetPropertiesOfDrillResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      drillType: (() { final guardedValue = map['drillType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      errorDetails: pulumi.Input.fromValue(ErrorDetailResponse.fromMap((map['errorDetails']! as Map).cast<String, dynamic>())),
      executionReadinessState: pulumi.Input.fromValue(map['executionReadinessState'] as String),
      executionState: pulumi.Input.fromValue(map['executionState'] as String),
      healthModelProperties: (() { final guardedValue = map['healthModelProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HealthModelPropertiesOfDrillResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      lastResyncReadinessCheckTime: pulumi.Input.fromValue(map['lastResyncReadinessCheckTime'] as String),
      lastRunProperties: pulumi.Input.fromValue(LastRunPropertiesResponse.fromMap((map['lastRunProperties']! as Map).cast<String, dynamic>())),
      lastSyncTime: pulumi.Input.fromValue(map['lastSyncTime'] as String),
      managedOnBehalfOfConfiguration: pulumi.Input.fromValue(ManagedOnBehalfOfConfigurationResponse.fromMap((map['managedOnBehalfOfConfiguration']! as Map).cast<String, dynamic>())),
      metricsProperties: (() { final guardedValue = map['metricsProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MetricsPropertiesOfDrillResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      monitoringProperties: (() { final guardedValue = map['monitoringProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MonitoringPropertiesOfDrillResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      rbacSetupMode: (() { final guardedValue = map['rbacSetupMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recoveryPlanProperties: (() { final guardedValue = map['recoveryPlanProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RecoveryPlanPropertiesOfDrillResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serviceGroupId: pulumi.Input.fromValue(map['serviceGroupId'] as String),
      systemMetadata: pulumi.Input.fromValue(SystemMetadataResponse.fromMap((map['systemMetadata']! as Map).cast<String, dynamic>())),
    );
  }
}
