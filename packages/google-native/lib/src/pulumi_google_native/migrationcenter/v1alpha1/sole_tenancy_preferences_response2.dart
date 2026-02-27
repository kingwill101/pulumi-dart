// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'sole_tenant_node_type_response2.dart';

/// Preferences concerning Sole Tenancy nodes and VMs.
class SoleTenancyPreferencesResponse2 {
  /// Commitment plan to consider when calculating costs for virtual machine insights and recommendations. If you are unsure which value to set, a 3 year commitment plan is often a good value to start with.
  final String commitmentPlan;

  /// CPU overcommit ratio. Acceptable values are between 1.0 and 2.0 inclusive.
  final double cpuOvercommitRatio;

  /// Sole Tenancy nodes maintenance policy.
  final String hostMaintenancePolicy;

  /// A list of sole tenant node types. An empty list means that all possible node types will be considered.
  final List<SoleTenantNodeTypeResponse2> nodeTypes;

  SoleTenancyPreferencesResponse2({
    required this.commitmentPlan,
    required this.cpuOvercommitRatio,
    required this.hostMaintenancePolicy,
    required this.nodeTypes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['commitmentPlan'] = commitmentPlan;
    map['cpuOvercommitRatio'] = cpuOvercommitRatio;
    map['hostMaintenancePolicy'] = hostMaintenancePolicy;
    map['nodeTypes'] =
        Input.encodeList<SoleTenantNodeTypeResponse2, Map<String, dynamic>>(
            nodeTypes, (value) => value.toMap());
    return map;
  }

  factory SoleTenancyPreferencesResponse2.fromMap(Map<String, dynamic> map) {
    return SoleTenancyPreferencesResponse2(
      commitmentPlan: map['commitmentPlan'] as String,
      cpuOvercommitRatio: map['cpuOvercommitRatio'] as double,
      hostMaintenancePolicy: map['hostMaintenancePolicy'] as String,
      nodeTypes: Input.decodeList<SoleTenantNodeTypeResponse2>(
          map['nodeTypes'],
          (value) => SoleTenantNodeTypeResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
