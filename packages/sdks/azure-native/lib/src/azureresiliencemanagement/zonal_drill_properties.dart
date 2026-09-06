// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'asset_properties_of_drill.dart';
import 'chaos_experiment_properties_of_drill.dart';
import 'chaos_resource_properties_of_drill.dart';
import 'health_model_properties_of_drill.dart';
import 'metrics_properties_of_drill.dart';
import 'monitoring_properties_of_drill.dart';
import 'recovery_plan_properties_of_drill.dart';

/// Definition of Zonal Drill properties.
class ZonalDrillProperties {
  /// Chaos Experiment properties.
  final pulumi.Input<ChaosExperimentPropertiesOfDrill?>? chaosExperimentProperties;
  /// Chaos Resource properties.
  final pulumi.Input<ChaosResourcePropertiesOfDrill?>? chaosResourceProperties;
  /// Properties for internal resources that are created for the Drill.
  final pulumi.Input<AssetPropertiesOfDrill?>? drillAssetProperties;
  /// Enum for Drill type object hierarchy.
  /// Expected value is 'Zonal'.
  final pulumi.Input<String> drillType;
  /// HealthModel properties.
  final pulumi.Input<HealthModelPropertiesOfDrill?>? healthModelProperties;
  /// Metric properties.
  final pulumi.Input<MetricsPropertiesOfDrill?>? metricsProperties;
  /// Monitoring properties of the Drill.
  final pulumi.Input<MonitoringPropertiesOfDrill?>? monitoringProperties;
  /// RBAC setup mode.
  final pulumi.Input<dynamic>? rbacSetupMode;
  /// ROPlan properties.
  final pulumi.Input<RecoveryPlanPropertiesOfDrill?>? recoveryPlanProperties;

  /// Creates a new [ZonalDrillProperties].
  /// [chaosExperimentProperties] Chaos Experiment properties.
  /// [chaosResourceProperties] Chaos Resource properties.
  /// [drillAssetProperties] Properties for internal resources that are created for the Drill.
  /// [drillType] Enum for Drill type object hierarchy.
  /// [healthModelProperties] HealthModel properties.
  /// [metricsProperties] Metric properties.
  /// [monitoringProperties] Monitoring properties of the Drill.
  /// [rbacSetupMode] RBAC setup mode.
  /// [recoveryPlanProperties] ROPlan properties.
  const ZonalDrillProperties({
    this.chaosExperimentProperties,
    this.chaosResourceProperties,
    this.drillAssetProperties,
    required this.drillType,
    this.healthModelProperties,
    this.metricsProperties,
    this.monitoringProperties,
    this.rbacSetupMode,
    this.recoveryPlanProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chaosExperimentProperties': ?pulumi.Input.mapOptionalInputValue<ChaosExperimentPropertiesOfDrill, Map<String, dynamic>>(chaosExperimentProperties, (value) => value.toMap()),
      'chaosResourceProperties': ?pulumi.Input.mapOptionalInputValue<ChaosResourcePropertiesOfDrill, Map<String, dynamic>>(chaosResourceProperties, (value) => value.toMap()),
      'drillAssetProperties': ?pulumi.Input.mapOptionalInputValue<AssetPropertiesOfDrill, Map<String, dynamic>>(drillAssetProperties, (value) => value.toMap()),
      'drillType': drillType,
      'healthModelProperties': ?pulumi.Input.mapOptionalInputValue<HealthModelPropertiesOfDrill, Map<String, dynamic>>(healthModelProperties, (value) => value.toMap()),
      'metricsProperties': ?pulumi.Input.mapOptionalInputValue<MetricsPropertiesOfDrill, Map<String, dynamic>>(metricsProperties, (value) => value.toMap()),
      'monitoringProperties': ?pulumi.Input.mapOptionalInputValue<MonitoringPropertiesOfDrill, Map<String, dynamic>>(monitoringProperties, (value) => value.toMap()),
      'rbacSetupMode': ?rbacSetupMode,
      'recoveryPlanProperties': ?pulumi.Input.mapOptionalInputValue<RecoveryPlanPropertiesOfDrill, Map<String, dynamic>>(recoveryPlanProperties, (value) => value.toMap()),
    };
  }

  factory ZonalDrillProperties.fromMap(Map<String, dynamic> map) {
    return ZonalDrillProperties(
      chaosExperimentProperties: (() { final guardedValue = map['chaosExperimentProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChaosExperimentPropertiesOfDrill.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      chaosResourceProperties: (() { final guardedValue = map['chaosResourceProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChaosResourcePropertiesOfDrill.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      drillAssetProperties: (() { final guardedValue = map['drillAssetProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AssetPropertiesOfDrill.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      drillType: pulumi.Input.fromValue(map['drillType'] as String),
      healthModelProperties: (() { final guardedValue = map['healthModelProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HealthModelPropertiesOfDrill.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      metricsProperties: (() { final guardedValue = map['metricsProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MetricsPropertiesOfDrill.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      monitoringProperties: (() { final guardedValue = map['monitoringProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MonitoringPropertiesOfDrill.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rbacSetupMode: (() { final guardedValue = map['rbacSetupMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      recoveryPlanProperties: (() { final guardedValue = map['recoveryPlanProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RecoveryPlanPropertiesOfDrill.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
