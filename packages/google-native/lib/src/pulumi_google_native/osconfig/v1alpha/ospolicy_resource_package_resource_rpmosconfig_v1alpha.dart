// ignore_for_file: unused_element, unnecessary_cast

import 'ospolicy_resource_file_osconfig_v1alpha.dart';

/// An RPM package file. RPM packages only support INSTALLED state.
class OSPolicyResourcePackageResourceRPMOsconfigV1alpha {
  /// Whether dependencies should also be installed. - install when false: `rpm --upgrade --replacepkgs package.rpm` - install when true: `yum -y install package.rpm` or `zypper -y install package.rpm`
  final bool? pullDeps;

  /// An rpm package.
  final OSPolicyResourceFileOsconfigV1alpha source;

  OSPolicyResourcePackageResourceRPMOsconfigV1alpha({
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

  factory OSPolicyResourcePackageResourceRPMOsconfigV1alpha.fromMap(
      Map<String, dynamic> map) {
    return OSPolicyResourcePackageResourceRPMOsconfigV1alpha(
      pullDeps: map['pullDeps'] == null ? null : map['pullDeps'] as bool,
      source: OSPolicyResourceFileOsconfigV1alpha.fromMap(
          (map['source'] as Map).cast<String, dynamic>()),
    );
  }
}
