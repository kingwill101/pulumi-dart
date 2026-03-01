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

  /// Creates a new [SoleTenancyPreferences].
  /// [commitmentPlan] Commitment plan to consider when calculating costs for virtual machine insights and recommendations. If you are unsure which value to set, a 3 year commitment plan is often a good value to start with.
  /// [cpuOvercommitRatio] CPU overcommit ratio. Acceptable values are between 1.0 and 2.0 inclusive.
  /// [hostMaintenancePolicy] Sole Tenancy nodes maintenance policy.
  /// [nodeTypes] A list of sole tenant node types. An empty list means that all possible node types will be considered.
  SoleTenancyPreferences({
    this.commitmentPlan,
    this.cpuOvercommitRatio,
    this.hostMaintenancePolicy,
    this.nodeTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commitmentPlan': ?commitmentPlan == null ? null : commitmentPlan!.value,
      'cpuOvercommitRatio': ?cpuOvercommitRatio,
      'hostMaintenancePolicy': ?hostMaintenancePolicy == null
          ? null
          : hostMaintenancePolicy!.value,
      'nodeTypes': ?nodeTypes == null
          ? null
          : pulumi.Input.encodeList<SoleTenantNodeType, Map<String, dynamic>>(
              nodeTypes!,
              (value) => value.toMap(),
            ),
    };
  }

  factory SoleTenancyPreferences.fromMap(Map<String, dynamic> map) {
    return SoleTenancyPreferences(
      commitmentPlan: map['commitmentPlan'] == null
          ? null
          : SoleTenancyPreferencesCommitmentPlan.fromValue(
              map['commitmentPlan'] as String,
            ),
      cpuOvercommitRatio: map['cpuOvercommitRatio'] == null
          ? null
          : map['cpuOvercommitRatio'] as double,
      hostMaintenancePolicy: map['hostMaintenancePolicy'] == null
          ? null
          : SoleTenancyPreferencesHostMaintenancePolicy.fromValue(
              map['hostMaintenancePolicy'] as String,
            ),
      nodeTypes: map['nodeTypes'] == null
          ? null
          : pulumi.Input.decodeList<SoleTenantNodeType>(
              map['nodeTypes'],
              (value) => SoleTenantNodeType.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
    );
  }
}
