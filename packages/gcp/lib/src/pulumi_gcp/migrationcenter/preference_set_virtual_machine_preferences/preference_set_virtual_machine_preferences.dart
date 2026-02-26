// ignore_for_file: unused_element, unnecessary_cast

import '../preference_set_virtual_machine_preferences_compute_engine_preferences/preference_set_virtual_machine_preferences_compute_engine_preferences.dart';
import '../preference_set_virtual_machine_preferences_region_preferences/preference_set_virtual_machine_preferences_region_preferences.dart';
import '../preference_set_virtual_machine_preferences_sole_tenancy_preferences/preference_set_virtual_machine_preferences_sole_tenancy_preferences.dart';
import '../preference_set_virtual_machine_preferences_vmware_engine_preferences/preference_set_virtual_machine_preferences_vmware_engine_preferences.dart';

class PreferenceSetVirtualMachinePreferences {
  /// Commitment plan to consider when calculating costs for virtual machine insights and recommendations. If you are unsure which value to set, a 3 year commitment plan is often a good value to start with. Possible values: `COMMITMENT_PLAN_UNSPECIFIED`, `COMMITMENT_PLAN_NONE`, `COMMITMENT_PLAN_ONE_YEAR`, `COMMITMENT_PLAN_THREE_YEARS`
  final String? commitmentPlan;

  /// The user preferences relating to Compute Engine target platform.
  /// Structure is documented below.
  final PreferenceSetVirtualMachinePreferencesComputeEnginePreferences?
      computeEnginePreferences;

  /// The user preferences relating to target regions.
  /// Structure is documented below.
  final PreferenceSetVirtualMachinePreferencesRegionPreferences?
      regionPreferences;

  /// Sizing optimization strategy specifies the preferred strategy used when extrapolating usage data to calculate insights and recommendations for a virtual machine. If you are unsure which value to set, a moderate sizing optimization strategy is often a good value to start with. Possible values: `SIZING_OPTIMIZATION_STRATEGY_UNSPECIFIED`, `SIZING_OPTIMIZATION_STRATEGY_SAME_AS_SOURCE`, `SIZING_OPTIMIZATION_STRATEGY_MODERATE`, `SIZING_OPTIMIZATION_STRATEGY_AGGRESSIVE`
  final String? sizingOptimizationStrategy;

  /// Preferences concerning Sole Tenancy nodes and VMs.
  /// Structure is documented below.
  final PreferenceSetVirtualMachinePreferencesSoleTenancyPreferences?
      soleTenancyPreferences;

  /// Target product for assets using this preference set. Specify either target product or business goal, but not both. Possible values: `COMPUTE_MIGRATION_TARGET_PRODUCT_UNSPECIFIED`, `COMPUTE_MIGRATION_TARGET_PRODUCT_COMPUTE_ENGINE`, `COMPUTE_MIGRATION_TARGET_PRODUCT_VMWARE_ENGINE`, `COMPUTE_MIGRATION_TARGET_PRODUCT_SOLE_TENANCY`
  final String? targetProduct;

  /// The user preferences relating to Google Cloud VMware Engine target platform.
  /// Structure is documented below.
  final PreferenceSetVirtualMachinePreferencesVmwareEnginePreferences?
      vmwareEnginePreferences;

  PreferenceSetVirtualMachinePreferences({
    this.commitmentPlan,
    this.computeEnginePreferences,
    this.regionPreferences,
    this.sizingOptimizationStrategy,
    this.soleTenancyPreferences,
    this.targetProduct,
    this.vmwareEnginePreferences,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final commitmentPlanValue = commitmentPlan;
    if (commitmentPlanValue != null) {
      map['commitmentPlan'] = commitmentPlanValue;
    }
    final computeEnginePreferencesValue = computeEnginePreferences;
    if (computeEnginePreferencesValue != null) {
      map['computeEnginePreferences'] = computeEnginePreferencesValue.toMap();
    }
    final regionPreferencesValue = regionPreferences;
    if (regionPreferencesValue != null) {
      map['regionPreferences'] = regionPreferencesValue.toMap();
    }
    final sizingOptimizationStrategyValue = sizingOptimizationStrategy;
    if (sizingOptimizationStrategyValue != null) {
      map['sizingOptimizationStrategy'] = sizingOptimizationStrategyValue;
    }
    final soleTenancyPreferencesValue = soleTenancyPreferences;
    if (soleTenancyPreferencesValue != null) {
      map['soleTenancyPreferences'] = soleTenancyPreferencesValue.toMap();
    }
    final targetProductValue = targetProduct;
    if (targetProductValue != null) {
      map['targetProduct'] = targetProductValue;
    }
    final vmwareEnginePreferencesValue = vmwareEnginePreferences;
    if (vmwareEnginePreferencesValue != null) {
      map['vmwareEnginePreferences'] = vmwareEnginePreferencesValue.toMap();
    }
    return map;
  }

  factory PreferenceSetVirtualMachinePreferences.fromMap(
      Map<String, dynamic> map) {
    return PreferenceSetVirtualMachinePreferences(
      commitmentPlan: map['commitmentPlan'] == null
          ? null
          : map['commitmentPlan'] as String,
      computeEnginePreferences: map['computeEnginePreferences'] == null
          ? null
          : PreferenceSetVirtualMachinePreferencesComputeEnginePreferences
              .fromMap((map['computeEnginePreferences'] as Map)
                  .cast<String, dynamic>()),
      regionPreferences: map['regionPreferences'] == null
          ? null
          : PreferenceSetVirtualMachinePreferencesRegionPreferences.fromMap(
              (map['regionPreferences'] as Map).cast<String, dynamic>()),
      sizingOptimizationStrategy: map['sizingOptimizationStrategy'] == null
          ? null
          : map['sizingOptimizationStrategy'] as String,
      soleTenancyPreferences: map['soleTenancyPreferences'] == null
          ? null
          : PreferenceSetVirtualMachinePreferencesSoleTenancyPreferences
              .fromMap((map['soleTenancyPreferences'] as Map)
                  .cast<String, dynamic>()),
      targetProduct:
          map['targetProduct'] == null ? null : map['targetProduct'] as String,
      vmwareEnginePreferences: map['vmwareEnginePreferences'] == null
          ? null
          : PreferenceSetVirtualMachinePreferencesVmwareEnginePreferences
              .fromMap((map['vmwareEnginePreferences'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
