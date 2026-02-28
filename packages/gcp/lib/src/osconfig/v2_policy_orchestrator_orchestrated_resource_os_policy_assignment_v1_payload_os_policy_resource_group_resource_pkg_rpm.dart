// ignore_for_file: unused_element, unnecessary_cast

import 'v2_policy_orchestrator_orchestrated_resource_os_policy_assignment_v1_payload_os_policy_resource_group_resource_pkg_rpm_source.dart';

class V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgRpm {
  /// Whether dependencies should also be installed.
  /// - install when false: `rpm --upgrade --replacepkgs package.rpm`
  /// - install when true: `yum -y install package.rpm` or
  /// `zypper -y install package.rpm`
  final bool? pullDeps;

  /// A remote or local file.
  /// Structure is documented below.
  final V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgRpmSource
      source;

  /// Creates a new [V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgRpm].
  /// [pullDeps] Whether dependencies should also be installed.
  /// [source] A remote or local file.
  V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgRpm({
    this.pullDeps,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final pullDepsValue = pullDeps;
    if (pullDepsValue != null) {
      map['pullDeps'] = pullDepsValue;
    }
    map['source'] = source.toMap();
    return map;
  }

  factory V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgRpm.fromMap(
      Map<String, dynamic> map) {
    return V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgRpm(
      pullDeps: map['pullDeps'] == null ? null : map['pullDeps'] as bool,
      source:
          V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgRpmSource
              .fromMap((map['source'] as Map).cast<String, dynamic>()),
    );
  }
}
