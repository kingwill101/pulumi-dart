// ignore_for_file: unused_element, unnecessary_cast

import 'compute_engine_preferences.dart';
import 'region_preferences.dart';
import 'sole_tenancy_preferences.dart';
import 'virtual_machine_preferences_commitment_plan.dart';
import 'virtual_machine_preferences_sizing_optimization_strategy.dart';
import 'virtual_machine_preferences_target_product.dart';
import 'vmware_engine_preferences.dart';

/// VirtualMachinePreferences enables you to create sets of assumptions, for example, a geographical location and pricing track, for your migrated virtual machines. The set of preferences influence recommendations for migrating virtual machine assets.
class VirtualMachinePreferences {
  /// Commitment plan to consider when calculating costs for virtual machine insights and recommendations. If you are unsure which value to set, a 3 year commitment plan is often a good value to start with.
  final VirtualMachinePreferencesCommitmentPlan? commitmentPlan;

  /// Compute Engine preferences concern insights and recommendations for Compute Engine target.
  final ComputeEnginePreferences? computeEnginePreferences;

  /// Region preferences for assets using this preference set. If you are unsure which value to set, the migration service API region is often a good value to start with.
  final RegionPreferences? regionPreferences;

  /// Sizing optimization strategy specifies the preferred strategy used when extrapolating usage data to calculate insights and recommendations for a virtual machine. If you are unsure which value to set, a moderate sizing optimization strategy is often a good value to start with.
  final VirtualMachinePreferencesSizingOptimizationStrategy?
  sizingOptimizationStrategy;

  /// Preferences concerning Sole Tenant nodes and virtual machines.
  final SoleTenancyPreferences? soleTenancyPreferences;

  /// Target product for assets using this preference set. Specify either target product or business goal, but not both.
  final VirtualMachinePreferencesTargetProduct? targetProduct;

  /// Preferences concerning insights and recommendations for Google Cloud VMware Engine.
  final VmwareEnginePreferences? vmwareEnginePreferences;

  /// Creates a new [VirtualMachinePreferences].
  /// [commitmentPlan] Commitment plan to consider when calculating costs for virtual machine insights and recommendations. If you are unsure which value to set, a 3 year commitment plan is often a good value to start with.
  /// [computeEnginePreferences] Compute Engine preferences concern insights and recommendations for Compute Engine target.
  /// [regionPreferences] Region preferences for assets using this preference set. If you are unsure which value to set, the migration service API region is often a good value to start with.
  /// [sizingOptimizationStrategy] Sizing optimization strategy specifies the preferred strategy used when extrapolating usage data to calculate insights and recommendations for a virtual machine. If you are unsure which value to set, a moderate sizing optimization strategy is often a good value to start with.
  /// [soleTenancyPreferences] Preferences concerning Sole Tenant nodes and virtual machines.
  /// [targetProduct] Target product for assets using this preference set. Specify either target product or business goal, but not both.
  /// [vmwareEnginePreferences] Preferences concerning insights and recommendations for Google Cloud VMware Engine.
  VirtualMachinePreferences({
    this.commitmentPlan,
    this.computeEnginePreferences,
    this.regionPreferences,
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
      'regionPreferences': ?regionPreferences == null
          ? null
          : regionPreferences!.toMap(),
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

  factory VirtualMachinePreferences.fromMap(Map<String, dynamic> map) {
    return VirtualMachinePreferences(
      commitmentPlan: map['commitmentPlan'] == null
          ? null
          : VirtualMachinePreferencesCommitmentPlan.fromValue(
              map['commitmentPlan'] as String,
            ),
      computeEnginePreferences: map['computeEnginePreferences'] == null
          ? null
          : ComputeEnginePreferences.fromMap(
              (map['computeEnginePreferences'] as Map).cast<String, dynamic>(),
            ),
      regionPreferences: map['regionPreferences'] == null
          ? null
          : RegionPreferences.fromMap(
              (map['regionPreferences'] as Map).cast<String, dynamic>(),
            ),
      sizingOptimizationStrategy: map['sizingOptimizationStrategy'] == null
          ? null
          : VirtualMachinePreferencesSizingOptimizationStrategy.fromValue(
              map['sizingOptimizationStrategy'] as String,
            ),
      soleTenancyPreferences: map['soleTenancyPreferences'] == null
          ? null
          : SoleTenancyPreferences.fromMap(
              (map['soleTenancyPreferences'] as Map).cast<String, dynamic>(),
            ),
      targetProduct: map['targetProduct'] == null
          ? null
          : VirtualMachinePreferencesTargetProduct.fromValue(
              map['targetProduct'] as String,
            ),
      vmwareEnginePreferences: map['vmwareEnginePreferences'] == null
          ? null
          : VmwareEnginePreferences.fromMap(
              (map['vmwareEnginePreferences'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
