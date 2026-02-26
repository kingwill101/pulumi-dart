// ignore_for_file: unused_element, unnecessary_cast

import '../os_policy_assignment_os_policy_resource_group_resource_pkg_deb_source/os_policy_assignment_os_policy_resource_group_resource_pkg_deb_source.dart';

class OsPolicyAssignmentOsPolicyResourceGroupResourcePkgDeb {
  /// Whether dependencies should also be installed. -
  /// install when false: `dpkg -i package` - install when true: `apt-get update
  /// && apt-get -y install package.deb`
  final bool? pullDeps;

  /// A deb package. Structure is
  /// documented below.
  final OsPolicyAssignmentOsPolicyResourceGroupResourcePkgDebSource source;

  OsPolicyAssignmentOsPolicyResourceGroupResourcePkgDeb({
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

  factory OsPolicyAssignmentOsPolicyResourceGroupResourcePkgDeb.fromMap(
      Map<String, dynamic> map) {
    return OsPolicyAssignmentOsPolicyResourceGroupResourcePkgDeb(
      pullDeps: map['pullDeps'] == null ? null : map['pullDeps'] as bool,
      source:
          OsPolicyAssignmentOsPolicyResourceGroupResourcePkgDebSource.fromMap(
              (map['source'] as Map).cast<String, dynamic>()),
    );
  }
}
