// ignore_for_file: unused_element, unnecessary_cast

import 'compute_engine_preferences2.dart';
import 'region_preferences2.dart';
import 'sole_tenancy_preferences2.dart';
import 'virtual_machine_preferences_commitment_plan2.dart';
import 'virtual_machine_preferences_network_cost_parameters.dart';
import 'virtual_machine_preferences_sizing_optimization_custom_parameters.dart';
import 'virtual_machine_preferences_sizing_optimization_strategy2.dart';
import 'virtual_machine_preferences_target_product2.dart';
import 'vmware_engine_preferences2.dart';

/// VirtualMachinePreferences enables you to create sets of preferences, for example, a geographical location and pricing track, for your migrated virtual machines. The set of preferences influence recommendations for migrating virtual machine assets.
class VirtualMachinePreferences2 {
  /// Commitment plan to consider when calculating costs for virtual machine insights and recommendations. If you are unsure which value to set, a 3 year commitment plan is often a good value to start with.
  final VirtualMachinePreferencesCommitmentPlan2? commitmentPlan;

  /// Compute Engine preferences concern insights and recommendations for Compute Engine target.
  final ComputeEnginePreferences2? computeEnginePreferences;

  /// Optional. Parameters that affect network cost estimations. If not set, default values will be used for the parameters.
  final VirtualMachinePreferencesNetworkCostParameters? networkCostParameters;

  /// Region preferences for assets using this preference set. If you are unsure which value to set, the migration service API region is often a good value to start with. If PreferenceSet.RegionPreferences is specified, it overrides this field.
  final RegionPreferences2? regionPreferences;

  /// Optional. Custom data to use for sizing optimizations. Relevant when SizingOptimizationStrategy is set to "custom".
  final VirtualMachinePreferencesSizingOptimizationCustomParameters?
      sizingOptimizationCustomParameters;

  /// Sizing optimization strategy specifies the preferred strategy used when extrapolating usage data to calculate insights and recommendations for a virtual machine. If you are unsure which value to set, a moderate sizing optimization strategy is often a good value to start with.
  final VirtualMachinePreferencesSizingOptimizationStrategy2?
      sizingOptimizationStrategy;

  /// Preferences concerning Sole Tenant nodes and virtual machines.
  final SoleTenancyPreferences2? soleTenancyPreferences;

  /// Target product for assets using this preference set. Specify either target product or business goal, but not both.
  final VirtualMachinePreferencesTargetProduct2? targetProduct;

  /// Preferences concerning insights and recommendations for Google Cloud VMware Engine.
  final VmwareEnginePreferences2? vmwareEnginePreferences;

  VirtualMachinePreferences2({
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
    final map = <String, dynamic>{};
    final commitmentPlanValue = commitmentPlan;
    if (commitmentPlanValue != null) {
      map['commitmentPlan'] = commitmentPlanValue.value;
    }
    final computeEnginePreferencesValue = computeEnginePreferences;
    if (computeEnginePreferencesValue != null) {
      map['computeEnginePreferences'] = computeEnginePreferencesValue.toMap();
    }
    final networkCostParametersValue = networkCostParameters;
    if (networkCostParametersValue != null) {
      map['networkCostParameters'] = networkCostParametersValue.toMap();
    }
    final regionPreferencesValue = regionPreferences;
    if (regionPreferencesValue != null) {
      map['regionPreferences'] = regionPreferencesValue.toMap();
    }
    final sizingOptimizationCustomParametersValue =
        sizingOptimizationCustomParameters;
    if (sizingOptimizationCustomParametersValue != null) {
      map['sizingOptimizationCustomParameters'] =
          sizingOptimizationCustomParametersValue.toMap();
    }
    final sizingOptimizationStrategyValue = sizingOptimizationStrategy;
    if (sizingOptimizationStrategyValue != null) {
      map['sizingOptimizationStrategy'] = sizingOptimizationStrategyValue.value;
    }
    final soleTenancyPreferencesValue = soleTenancyPreferences;
    if (soleTenancyPreferencesValue != null) {
      map['soleTenancyPreferences'] = soleTenancyPreferencesValue.toMap();
    }
    final targetProductValue = targetProduct;
    if (targetProductValue != null) {
      map['targetProduct'] = targetProductValue.value;
    }
    final vmwareEnginePreferencesValue = vmwareEnginePreferences;
    if (vmwareEnginePreferencesValue != null) {
      map['vmwareEnginePreferences'] = vmwareEnginePreferencesValue.toMap();
    }
    return map;
  }

  factory VirtualMachinePreferences2.fromMap(Map<String, dynamic> map) {
    return VirtualMachinePreferences2(
      commitmentPlan: map['commitmentPlan'] == null
          ? null
          : VirtualMachinePreferencesCommitmentPlan2.fromValue(
              map['commitmentPlan'] as String),
      computeEnginePreferences: map['computeEnginePreferences'] == null
          ? null
          : ComputeEnginePreferences2.fromMap(
              (map['computeEnginePreferences'] as Map).cast<String, dynamic>()),
      networkCostParameters: map['networkCostParameters'] == null
          ? null
          : VirtualMachinePreferencesNetworkCostParameters.fromMap(
              (map['networkCostParameters'] as Map).cast<String, dynamic>()),
      regionPreferences: map['regionPreferences'] == null
          ? null
          : RegionPreferences2.fromMap(
              (map['regionPreferences'] as Map).cast<String, dynamic>()),
      sizingOptimizationCustomParameters:
          map['sizingOptimizationCustomParameters'] == null
              ? null
              : VirtualMachinePreferencesSizingOptimizationCustomParameters
                  .fromMap((map['sizingOptimizationCustomParameters'] as Map)
                      .cast<String, dynamic>()),
      sizingOptimizationStrategy: map['sizingOptimizationStrategy'] == null
          ? null
          : VirtualMachinePreferencesSizingOptimizationStrategy2.fromValue(
              map['sizingOptimizationStrategy'] as String),
      soleTenancyPreferences: map['soleTenancyPreferences'] == null
          ? null
          : SoleTenancyPreferences2.fromMap(
              (map['soleTenancyPreferences'] as Map).cast<String, dynamic>()),
      targetProduct: map['targetProduct'] == null
          ? null
          : VirtualMachinePreferencesTargetProduct2.fromValue(
              map['targetProduct'] as String),
      vmwareEnginePreferences: map['vmwareEnginePreferences'] == null
          ? null
          : VmwareEnginePreferences2.fromMap(
              (map['vmwareEnginePreferences'] as Map).cast<String, dynamic>()),
    );
  }
}
