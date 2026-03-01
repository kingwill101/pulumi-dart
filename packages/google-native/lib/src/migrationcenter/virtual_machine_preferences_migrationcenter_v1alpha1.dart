// ignore_for_file: unused_element, unnecessary_cast

import 'compute_engine_preferences_migrationcenter_v1alpha1.dart';
import 'region_preferences_migrationcenter_v1alpha1.dart';
import 'sole_tenancy_preferences_migrationcenter_v1alpha1.dart';
import 'virtual_machine_preferences_commitment_plan_migrationcenter_v1alpha1.dart';
import 'virtual_machine_preferences_network_cost_parameters.dart';
import 'virtual_machine_preferences_sizing_optimization_custom_parameters.dart';
import 'virtual_machine_preferences_sizing_optimization_strategy_migrationcenter_v1alpha1.dart';
import 'virtual_machine_preferences_target_product_migrationcenter_v1alpha1.dart';
import 'vmware_engine_preferences_migrationcenter_v1alpha1.dart';

/// VirtualMachinePreferences enables you to create sets of preferences, for example, a geographical location and pricing track, for your migrated virtual machines. The set of preferences influence recommendations for migrating virtual machine assets.
class VirtualMachinePreferencesMigrationcenterV1alpha1 {
  /// Commitment plan to consider when calculating costs for virtual machine insights and recommendations. If you are unsure which value to set, a 3 year commitment plan is often a good value to start with.
  final VirtualMachinePreferencesCommitmentPlanMigrationcenterV1alpha1?
  commitmentPlan;

  /// Compute Engine preferences concern insights and recommendations for Compute Engine target.
  final ComputeEnginePreferencesMigrationcenterV1alpha1?
  computeEnginePreferences;

  /// Optional. Parameters that affect network cost estimations. If not set, default values will be used for the parameters.
  final VirtualMachinePreferencesNetworkCostParameters? networkCostParameters;

  /// Region preferences for assets using this preference set. If you are unsure which value to set, the migration service API region is often a good value to start with. If PreferenceSet.RegionPreferences is specified, it overrides this field.
  final RegionPreferencesMigrationcenterV1alpha1? regionPreferences;

  /// Optional. Custom data to use for sizing optimizations. Relevant when SizingOptimizationStrategy is set to "custom".
  final VirtualMachinePreferencesSizingOptimizationCustomParameters?
  sizingOptimizationCustomParameters;

  /// Sizing optimization strategy specifies the preferred strategy used when extrapolating usage data to calculate insights and recommendations for a virtual machine. If you are unsure which value to set, a moderate sizing optimization strategy is often a good value to start with.
  final VirtualMachinePreferencesSizingOptimizationStrategyMigrationcenterV1alpha1?
  sizingOptimizationStrategy;

  /// Preferences concerning Sole Tenant nodes and virtual machines.
  final SoleTenancyPreferencesMigrationcenterV1alpha1? soleTenancyPreferences;

  /// Target product for assets using this preference set. Specify either target product or business goal, but not both.
  final VirtualMachinePreferencesTargetProductMigrationcenterV1alpha1?
  targetProduct;

  /// Preferences concerning insights and recommendations for Google Cloud VMware Engine.
  final VmwareEnginePreferencesMigrationcenterV1alpha1? vmwareEnginePreferences;

  /// Creates a new [VirtualMachinePreferencesMigrationcenterV1alpha1].
  /// [commitmentPlan] Commitment plan to consider when calculating costs for virtual machine insights and recommendations. If you are unsure which value to set, a 3 year commitment plan is often a good value to start with.
  /// [computeEnginePreferences] Compute Engine preferences concern insights and recommendations for Compute Engine target.
  /// [networkCostParameters] Optional. Parameters that affect network cost estimations. If not set, default values will be used for the parameters.
  /// [regionPreferences] Region preferences for assets using this preference set. If you are unsure which value to set, the migration service API region is often a good value to start with. If PreferenceSet.RegionPreferences is specified, it overrides this field.
  /// [sizingOptimizationCustomParameters] Optional. Custom data to use for sizing optimizations. Relevant when SizingOptimizationStrategy is set to "custom".
  /// [sizingOptimizationStrategy] Sizing optimization strategy specifies the preferred strategy used when extrapolating usage data to calculate insights and recommendations for a virtual machine. If you are unsure which value to set, a moderate sizing optimization strategy is often a good value to start with.
  /// [soleTenancyPreferences] Preferences concerning Sole Tenant nodes and virtual machines.
  /// [targetProduct] Target product for assets using this preference set. Specify either target product or business goal, but not both.
  /// [vmwareEnginePreferences] Preferences concerning insights and recommendations for Google Cloud VMware Engine.
  VirtualMachinePreferencesMigrationcenterV1alpha1({
    this.commitmentPlan,
    this.computeEnginePreferences,
    this.networkCostParameters,
    this.regionPreferences,
    this.sizingOptimizationCustomParameters,
    this.sizingOptimizationStrategy,
    this.soleTenancyPreferences,
    this.targetProduct,
    this.vmwareEnginePreferences,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commitmentPlan': ?commitmentPlan == null ? null : commitmentPlan!.value,
      'computeEnginePreferences': ?computeEnginePreferences == null
          ? null
          : computeEnginePreferences!.toMap(),
      'networkCostParameters': ?networkCostParameters == null
          ? null
          : networkCostParameters!.toMap(),
      'regionPreferences': ?regionPreferences == null
          ? null
          : regionPreferences!.toMap(),
      'sizingOptimizationCustomParameters':
          ?sizingOptimizationCustomParameters == null
          ? null
          : sizingOptimizationCustomParameters!.toMap(),
      'sizingOptimizationStrategy': ?sizingOptimizationStrategy == null
          ? null
          : sizingOptimizationStrategy!.value,
      'soleTenancyPreferences': ?soleTenancyPreferences == null
          ? null
          : soleTenancyPreferences!.toMap(),
      'targetProduct': ?targetProduct == null ? null : targetProduct!.value,
      'vmwareEnginePreferences': ?vmwareEnginePreferences == null
          ? null
          : vmwareEnginePreferences!.toMap(),
    };
  }

  factory VirtualMachinePreferencesMigrationcenterV1alpha1.fromMap(
    Map<String, dynamic> map,
  ) {
    return VirtualMachinePreferencesMigrationcenterV1alpha1(
      commitmentPlan: map['commitmentPlan'] == null
          ? null
          : VirtualMachinePreferencesCommitmentPlanMigrationcenterV1alpha1.fromValue(
              map['commitmentPlan'] as String,
            ),
      computeEnginePreferences: map['computeEnginePreferences'] == null
          ? null
          : ComputeEnginePreferencesMigrationcenterV1alpha1.fromMap(
              (map['computeEnginePreferences'] as Map).cast<String, dynamic>(),
            ),
      networkCostParameters: map['networkCostParameters'] == null
          ? null
          : VirtualMachinePreferencesNetworkCostParameters.fromMap(
              (map['networkCostParameters'] as Map).cast<String, dynamic>(),
            ),
      regionPreferences: map['regionPreferences'] == null
          ? null
          : RegionPreferencesMigrationcenterV1alpha1.fromMap(
              (map['regionPreferences'] as Map).cast<String, dynamic>(),
            ),
      sizingOptimizationCustomParameters:
          map['sizingOptimizationCustomParameters'] == null
          ? null
          : VirtualMachinePreferencesSizingOptimizationCustomParameters.fromMap(
              (map['sizingOptimizationCustomParameters'] as Map)
                  .cast<String, dynamic>(),
            ),
      sizingOptimizationStrategy: map['sizingOptimizationStrategy'] == null
          ? null
          : VirtualMachinePreferencesSizingOptimizationStrategyMigrationcenterV1alpha1.fromValue(
              map['sizingOptimizationStrategy'] as String,
            ),
      soleTenancyPreferences: map['soleTenancyPreferences'] == null
          ? null
          : SoleTenancyPreferencesMigrationcenterV1alpha1.fromMap(
              (map['soleTenancyPreferences'] as Map).cast<String, dynamic>(),
            ),
      targetProduct: map['targetProduct'] == null
          ? null
          : VirtualMachinePreferencesTargetProductMigrationcenterV1alpha1.fromValue(
              map['targetProduct'] as String,
            ),
      vmwareEnginePreferences: map['vmwareEnginePreferences'] == null
          ? null
          : VmwareEnginePreferencesMigrationcenterV1alpha1.fromMap(
              (map['vmwareEnginePreferences'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
