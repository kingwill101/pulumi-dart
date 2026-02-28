// ignore_for_file: unused_element, unnecessary_cast

import 'ospolicy_resource_file.dart';

/// An RPM package file. RPM packages only support INSTALLED state.
class OSPolicyResourcePackageResourceRPM {
  /// Whether dependencies should also be installed. - install when false: `rpm --upgrade --replacepkgs package.rpm` - install when true: `yum -y install package.rpm` or `zypper -y install package.rpm`
  final bool? pullDeps;

  /// An rpm package.
  final OSPolicyResourceFile source;

  /// Creates a new [OSPolicyResourcePackageResourceRPM].
  /// [pullDeps] Whether dependencies should also be installed. - install when false: `rpm --upgrade --replacepkgs package.rpm` - install when true: `yum -y install package.rpm` or `zypper -y install package.rpm`
  /// [source] An rpm package.
  OSPolicyResourcePackageResourceRPM({
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

  factory OSPolicyResourcePackageResourceRPM.fromMap(Map<String, dynamic> map) {
    return OSPolicyResourcePackageResourceRPM(
      pullDeps: map['pullDeps'] == null ? null : map['pullDeps'] as bool,
      source: OSPolicyResourceFile.fromMap(
          (map['source'] as Map).cast<String, dynamic>()),
    );
  }
}
