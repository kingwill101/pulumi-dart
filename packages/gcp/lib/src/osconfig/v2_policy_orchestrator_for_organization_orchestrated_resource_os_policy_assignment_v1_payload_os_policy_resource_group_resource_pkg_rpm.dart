// ignore_for_file: unused_element, unnecessary_cast

import 'v2_policy_orchestrator_for_organization_orchestrated_resource_os_policy_assignment_v1_payload_os_policy_resource_group_resource_pkg_rpm_source.dart';

class V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgRpm {
  /// Whether dependencies should also be installed.
  /// - install when false: `rpm --upgrade --replacepkgs package.rpm`
  /// - install when true: `yum -y install package.rpm` or
  /// `zypper -y install package.rpm`
  final bool? pullDeps;

  /// A remote or local file.
  /// Structure is documented below.
  final V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgRpmSource
  source;

  /// Creates a new [V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgRpm].
  /// [pullDeps] Whether dependencies should also be installed.
  /// [source] A remote or local file.
  V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgRpm({
    this.pullDeps,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'pullDeps': ?pullDeps, 'source': source.toMap()};
  }

  factory V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgRpm.fromMap(
    Map<String, dynamic> map,
  ) {
    return V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgRpm(
      pullDeps: map['pullDeps'] == null ? null : map['pullDeps'] as bool,
      source:
          V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgRpmSource.fromMap(
            (map['source'] as Map).cast<String, dynamic>(),
          ),
    );
  }
}
