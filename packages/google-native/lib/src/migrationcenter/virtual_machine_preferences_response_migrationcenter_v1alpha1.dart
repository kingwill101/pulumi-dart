// ignore_for_file: unused_element, unnecessary_cast

import 'compute_engine_preferences_response_migrationcenter_v1alpha1.dart';
import 'region_preferences_response_migrationcenter_v1alpha1.dart';
import 'sole_tenancy_preferences_response_migrationcenter_v1alpha1.dart';
import 'virtual_machine_preferences_network_cost_parameters_response.dart';
import 'virtual_machine_preferences_sizing_optimization_custom_parameters_response.dart';
import 'vmware_engine_preferences_response_migrationcenter_v1alpha1.dart';

/// VirtualMachinePreferences enables you to create sets of preferences, for example, a geographical location and pricing track, for your migrated virtual machines. The set of preferences influence recommendations for migrating virtual machine assets.
class VirtualMachinePreferencesResponseMigrationcenterV1alpha1 {
  /// Commitment plan to consider when calculating costs for virtual machine insights and recommendations. If you are unsure which value to set, a 3 year commitment plan is often a good value to start with.
  final String commitmentPlan;

  /// Compute Engine preferences concern insights and recommendations for Compute Engine target.
  final ComputeEnginePreferencesResponseMigrationcenterV1alpha1
  computeEnginePreferences;

  /// Optional. Parameters that affect network cost estimations. If not set, default values will be used for the parameters.
  final VirtualMachinePreferencesNetworkCostParametersResponse
  networkCostParameters;

  /// Region preferences for assets using this preference set. If you are unsure which value to set, the migration service API region is often a good value to start with. If PreferenceSet.RegionPreferences is specified, it overrides this field.
  final RegionPreferencesResponseMigrationcenterV1alpha1 regionPreferences;

  /// Optional. Custom data to use for sizing optimizations. Relevant when SizingOptimizationStrategy is set to "custom".
  final VirtualMachinePreferencesSizingOptimizationCustomParametersResponse
  sizingOptimizationCustomParameters;

  /// Sizing optimization strategy specifies the preferred strategy used when extrapolating usage data to calculate insights and recommendations for a virtual machine. If you are unsure which value to set, a moderate sizing optimization strategy is often a good value to start with.
  final String sizingOptimizationStrategy;

  /// Preferences concerning Sole Tenant nodes and virtual machines.
  final SoleTenancyPreferencesResponseMigrationcenterV1alpha1
  soleTenancyPreferences;

  /// Target product for assets using this preference set. Specify either target product or business goal, but not both.
  final String targetProduct;

  /// Preferences concerning insights and recommendations for Google Cloud VMware Engine.
  final VmwareEnginePreferencesResponseMigrationcenterV1alpha1
  vmwareEnginePreferences;

  /// Creates a new [VirtualMachinePreferencesResponseMigrationcenterV1alpha1].
  /// [commitmentPlan] Commitment plan to consider when calculating costs for virtual machine insights and recommendations. If you are unsure which value to set, a 3 year commitment plan is often a good value to start with.
  /// [computeEnginePreferences] Compute Engine preferences concern insights and recommendations for Compute Engine target.
  /// [networkCostParameters] Optional. Parameters that affect network cost estimations. If not set, default values will be used for the parameters.
  /// [regionPreferences] Region preferences for assets using this preference set. If you are unsure which value to set, the migration service API region is often a good value to start with. If PreferenceSet.RegionPreferences is specified, it overrides this field.
  /// [sizingOptimizationCustomParameters] Optional. Custom data to use for sizing optimizations. Relevant when SizingOptimizationStrategy is set to "custom".
  /// [sizingOptimizationStrategy] Sizing optimization strategy specifies the preferred strategy used when extrapolating usage data to calculate insights and recommendations for a virtual machine. If you are unsure which value to set, a moderate sizing optimization strategy is often a good value to start with.
  /// [soleTenancyPreferences] Preferences concerning Sole Tenant nodes and virtual machines.
  /// [targetProduct] Target product for assets using this preference set. Specify either target product or business goal, but not both.
  /// [vmwareEnginePreferences] Preferences concerning insights and recommendations for Google Cloud VMware Engine.
  VirtualMachinePreferencesResponseMigrationcenterV1alpha1({
    required this.commitmentPlan,
    required this.computeEnginePreferences,
    required this.networkCostParameters,
    required this.regionPreferences,
    required this.sizingOptimizationCustomParameters,
    required this.sizingOptimizationStrategy,
    required this.soleTenancyPreferences,
    required this.targetProduct,
    required this.vmwareEnginePreferences,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commitmentPlan': commitmentPlan,
      'computeEnginePreferences': computeEnginePreferences.toMap(),
      'networkCostParameters': networkCostParameters.toMap(),
      'regionPreferences': regionPreferences.toMap(),
      'sizingOptimizationCustomParameters': sizingOptimizationCustomParameters
          .toMap(),
      'sizingOptimizationStrategy': sizingOptimizationStrategy,
      'soleTenancyPreferences': soleTenancyPreferences.toMap(),
      'targetProduct': targetProduct,
      'vmwareEnginePreferences': vmwareEnginePreferences.toMap(),
    };
  }

  factory VirtualMachinePreferencesResponseMigrationcenterV1alpha1.fromMap(
    Map<String, dynamic> map,
  ) {
    return VirtualMachinePreferencesResponseMigrationcenterV1alpha1(
      commitmentPlan: map['commitmentPlan'] as String,
      computeEnginePreferences:
          ComputeEnginePreferencesResponseMigrationcenterV1alpha1.fromMap(
            (map['computeEnginePreferences'] as Map).cast<String, dynamic>(),
          ),
      networkCostParameters:
          VirtualMachinePreferencesNetworkCostParametersResponse.fromMap(
            (map['networkCostParameters'] as Map).cast<String, dynamic>(),
          ),
      regionPreferences:
          RegionPreferencesResponseMigrationcenterV1alpha1.fromMap(
            (map['regionPreferences'] as Map).cast<String, dynamic>(),
          ),
      sizingOptimizationCustomParameters:
          VirtualMachinePreferencesSizingOptimizationCustomParametersResponse.fromMap(
            (map['sizingOptimizationCustomParameters'] as Map)
                .cast<String, dynamic>(),
          ),
      sizingOptimizationStrategy: map['sizingOptimizationStrategy'] as String,
      soleTenancyPreferences:
          SoleTenancyPreferencesResponseMigrationcenterV1alpha1.fromMap(
            (map['soleTenancyPreferences'] as Map).cast<String, dynamic>(),
          ),
      targetProduct: map['targetProduct'] as String,
      vmwareEnginePreferences:
          VmwareEnginePreferencesResponseMigrationcenterV1alpha1.fromMap(
            (map['vmwareEnginePreferences'] as Map).cast<String, dynamic>(),
          ),
    );
  }
}
