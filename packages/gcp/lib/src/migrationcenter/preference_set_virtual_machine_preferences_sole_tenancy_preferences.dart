// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'preference_set_virtual_machine_preferences_sole_tenancy_preferences_node_type.dart';

class PreferenceSetVirtualMachinePreferencesSoleTenancyPreferences {
  /// Commitment plan to consider when calculating costs for virtual machine insights and recommendations. If you are unsure which value to set, a 3 year commitment plan is often a good value to start with. Possible values: `COMMITMENT_PLAN_UNSPECIFIED`, `ON_DEMAND`, `COMMITMENT_1_YEAR`, `COMMITMENT_3_YEAR`
  final String? commitmentPlan;

  /// CPU overcommit ratio. Acceptable values are between 1.0 and 2.0 inclusive.
  final double? cpuOvercommitRatio;

  /// Sole Tenancy nodes maintenance policy. Possible values: `HOST_MAINTENANCE_POLICY_UNSPECIFIED`, `HOST_MAINTENANCE_POLICY_DEFAULT`, `HOST_MAINTENANCE_POLICY_RESTART_IN_PLACE`, `HOST_MAINTENANCE_POLICY_MIGRATE_WITHIN_NODE_GROUP`
  final String? hostMaintenancePolicy;

  /// A list of sole tenant node types. An empty list means that all possible node types will be considered.
  /// Structure is documented below.
  final List<
    PreferenceSetVirtualMachinePreferencesSoleTenancyPreferencesNodeType
  >?
  nodeTypes;

  /// Creates a new [PreferenceSetVirtualMachinePreferencesSoleTenancyPreferences].
  /// [commitmentPlan] Commitment plan to consider when calculating costs for virtual machine insights and recommendations. If you are unsure which value to set, a 3 year commitment plan is often a good value to start with. Possible values: `COMMITMENT_PLAN_UNSPECIFIED`, `ON_DEMAND`, `COMMITMENT_1_YEAR`, `COMMITMENT_3_YEAR`
  /// [cpuOvercommitRatio] CPU overcommit ratio. Acceptable values are between 1.0 and 2.0 inclusive.
  /// [hostMaintenancePolicy] Sole Tenancy nodes maintenance policy. Possible values: `HOST_MAINTENANCE_POLICY_UNSPECIFIED`, `HOST_MAINTENANCE_POLICY_DEFAULT`, `HOST_MAINTENANCE_POLICY_RESTART_IN_PLACE`, `HOST_MAINTENANCE_POLICY_MIGRATE_WITHIN_NODE_GROUP`
  /// [nodeTypes] A list of sole tenant node types. An empty list means that all possible node types will be considered.
  PreferenceSetVirtualMachinePreferencesSoleTenancyPreferences({
    this.commitmentPlan,
    this.cpuOvercommitRatio,
    this.hostMaintenancePolicy,
    this.nodeTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commitmentPlan': ?commitmentPlan,
      'cpuOvercommitRatio': ?cpuOvercommitRatio,
      'hostMaintenancePolicy': ?hostMaintenancePolicy,
      'nodeTypes': ?nodeTypes == null
          ? null
          : pulumi.Input.encodeList<
              PreferenceSetVirtualMachinePreferencesSoleTenancyPreferencesNodeType,
              Map<String, dynamic>
            >(nodeTypes!, (value) => value.toMap()),
    };
  }

  factory PreferenceSetVirtualMachinePreferencesSoleTenancyPreferences.fromMap(
    Map<String, dynamic> map,
  ) {
    return PreferenceSetVirtualMachinePreferencesSoleTenancyPreferences(
      commitmentPlan: map['commitmentPlan'] == null
          ? null
          : map['commitmentPlan'] as String,
      cpuOvercommitRatio: map['cpuOvercommitRatio'] == null
          ? null
          : map['cpuOvercommitRatio'] as double,
      hostMaintenancePolicy: map['hostMaintenancePolicy'] == null
          ? null
          : map['hostMaintenancePolicy'] as String,
      nodeTypes: map['nodeTypes'] == null
          ? null
          : pulumi.Input.decodeList<
              PreferenceSetVirtualMachinePreferencesSoleTenancyPreferencesNodeType
            >(
              map['nodeTypes'],
              (value) =>
                  PreferenceSetVirtualMachinePreferencesSoleTenancyPreferencesNodeType.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
    );
  }
}
