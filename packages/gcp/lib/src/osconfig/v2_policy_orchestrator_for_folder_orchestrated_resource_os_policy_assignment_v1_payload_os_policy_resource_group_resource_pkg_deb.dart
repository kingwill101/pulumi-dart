// ignore_for_file: unused_element, unnecessary_cast

import 'v2_policy_orchestrator_for_folder_orchestrated_resource_os_policy_assignment_v1_payload_os_policy_resource_group_resource_pkg_deb_source.dart';

class V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgDeb {
  /// Whether dependencies should also be installed.
  /// - install when false: `dpkg -i package`
  /// - install when true: `apt-get update && apt-get -y install
  /// package.deb`
  final bool? pullDeps;

  /// A remote or local file.
  /// Structure is documented below.
  final V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgDebSource
      source;

  /// Creates a new [V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgDeb].
  /// [pullDeps] Whether dependencies should also be installed.
  /// [source] A remote or local file.
  V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgDeb({
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

  factory V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgDeb.fromMap(
      Map<String, dynamic> map) {
    return V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgDeb(
      pullDeps: map['pullDeps'] == null ? null : map['pullDeps'] as bool,
      source:
          V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgDebSource
              .fromMap((map['source'] as Map).cast<String, dynamic>()),
    );
  }
}
