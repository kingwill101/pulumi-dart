// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sole_tenancy_preferences_commitment_plan.dart';
import 'sole_tenancy_preferences_host_maintenance_policy.dart';
import 'sole_tenant_node_type.dart';

/// Preferences concerning Sole Tenancy nodes and VMs.
class SoleTenancyPreferences {
  /// Commitment plan to consider when calculating costs for virtual machine insights and recommendations. If you are unsure which value to set, a 3 year commitment plan is often a good value to start with.
  final SoleTenancyPreferencesCommitmentPlan? commitmentPlan;

  /// CPU overcommit ratio. Acceptable values are between 1.0 and 2.0 inclusive.
  final double? cpuOvercommitRatio;

  /// Sole Tenancy nodes maintenance policy.
  final SoleTenancyPreferencesHostMaintenancePolicy? hostMaintenancePolicy;

  /// A list of sole tenant node types. An empty list means that all possible node types will be considered.
  final List<SoleTenantNodeType>? nodeTypes;

  SoleTenancyPreferences({
    this.commitmentPlan,
    this.cpuOvercommitRatio,
    this.hostMaintenancePolicy,
    this.nodeTypes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final commitmentPlanValue = commitmentPlan;
    if (commitmentPlanValue != null) {
      map['commitmentPlan'] = commitmentPlanValue.value;
    }
    final cpuOvercommitRatioValue = cpuOvercommitRatio;
    if (cpuOvercommitRatioValue != null) {
      map['cpuOvercommitRatio'] = cpuOvercommitRatioValue;
    }
    final hostMaintenancePolicyValue = hostMaintenancePolicy;
    if (hostMaintenancePolicyValue != null) {
      map['hostMaintenancePolicy'] = hostMaintenancePolicyValue.value;
    }
    final nodeTypesValue = nodeTypes;
    if (nodeTypesValue != null) {
      map['nodeTypes'] =
          pulumi.Input.encodeList<SoleTenantNodeType, Map<String, dynamic>>(
              nodeTypesValue, (value) => value.toMap());
    }
    return map;
  }

  factory SoleTenancyPreferences.fromMap(Map<String, dynamic> map) {
    return SoleTenancyPreferences(
      commitmentPlan: map['commitmentPlan'] == null
          ? null
          : SoleTenancyPreferencesCommitmentPlan.fromValue(
              map['commitmentPlan'] as String),
      cpuOvercommitRatio: map['cpuOvercommitRatio'] == null
          ? null
          : map['cpuOvercommitRatio'] as double,
      hostMaintenancePolicy: map['hostMaintenancePolicy'] == null
          ? null
          : SoleTenancyPreferencesHostMaintenancePolicy.fromValue(
              map['hostMaintenancePolicy'] as String),
      nodeTypes: map['nodeTypes'] == null
          ? null
          : pulumi.Input.decodeList<SoleTenantNodeType>(
              map['nodeTypes'],
              (value) => SoleTenantNodeType.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
